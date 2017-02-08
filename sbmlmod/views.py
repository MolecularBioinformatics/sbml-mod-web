from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.db.utils import OperationalError
from .forms import SbmlModForm, SbmlModResultForm
from .models import Wsdl

import os
from suds.client import Client
from suds import WebFault
from urllib2 import URLError
import base64

import zipfile
import StringIO, codecs

import inspect

import pycopasi
from subprocess import Popen, PIPE

import logging
logging.basicConfig(level=logging.INFO)
logging.getLogger('suds.client').setLevel(logging.INFO)
#logging.getLogger('suds.client').setLevel(logging.DEBUG)

PATH = os.path.dirname(inspect.getfile(inspect.currentframe()))
PATH = os.path.split(PATH)[0]

SBML_FILE = os.path.join(PATH, 'testfiles/sbml_model.xml')
REACTION_MAPPING_FILE = os.path.join(PATH, 'testfiles/reaction_mapping.txt')
KINETIC_LAW_DATA_FILE = os.path.join(PATH, 'testfiles/reaction_data.csv')
SPECIES_MAPPING_FILE = os.path.join(PATH, 'testfiles/species_mapping.txt')
SPECIES_DATA_FILE = os.path.join(PATH, 'testfiles/species_data.csv')

try:
    wsurl = Wsdl.objects.get(wsdl_name='SBMLmod').wsdl_url
    client = Client(wsurl, cache=None)
except OperationalError:
    pass

# WS calls

def __scale_global_ws(sbml_file_list, mapping_file, expression_file, kl_column = 2, batch_mode=False, merge_mode='MAX'):
    fault = ''
    sbml_file_list_e = []
    for sbml_file in sbml_file_list:
        sbml_file_e = base64.b64encode(sbml_file)
        sbml_file_list_e.append(sbml_file_e)
    mapping_file_e = base64.b64encode(mapping_file)
    expression_file_e = base64.b64encode(expression_file)
    try:
        response = client.service.ScaleGlobalParametersBase64Encoded(SbmlModelFiles=sbml_file_list_e,
                                                                 DataFile=expression_file_e,
                                                                 MappingFile=mapping_file_e,
                                                                 DataColumnNumber=kl_column,
                                                                 BatchMode=batch_mode)
    except WebFault as detail:
        response = None
        fault = str(detail)
    return response, fault

def __replace_global_ws(sbml_file_list, mapping_file, expression_file, kl_column = 2, batch_mode=False, merge_mode='MAX'):
    fault = ''
    sbml_file_list_e = []
    for sbml_file in sbml_file_list:
        sbml_file_e = base64.b64encode(sbml_file)
        sbml_file_list_e.append(sbml_file_e)
    mapping_file_e = base64.b64encode(mapping_file)
    expression_file_e = base64.b64encode(expression_file)
    try:
        response = client.service.ReplaceGlobalParametersBase64Encoded(SbmlModelFiles=sbml_file_list_e,
                                                                    DataFile=expression_file_e,
                                                                    MappingFile=mapping_file_e,
                                                                    DataColumnNumber=kl_column,
                                                                    BatchMode=batch_mode)
    except WebFault as detail:
        response = None
        fault = str(detail)

    return response, fault

def __replace_kinetic_ws(sbml_file_list, parameter_id, mapping_file, expression_file, kl_column = 2, batch_mode=False, merge_mode='MAX'):
    fault = ''
    sbml_file_list_e = []
    for sbml_file in sbml_file_list:
        sbml_file_e = base64.b64encode(sbml_file)
        sbml_file_list_e.append(sbml_file_e)
    mapping_file_e = base64.b64encode(mapping_file)
    expression_file_e = base64.b64encode(expression_file)
    try:
        response = client.service.ReplaceKineticLawParameterBase64Encoded(SbmlModelFiles=sbml_file_list_e,
                                                                      ParameterId=parameter_id,
                                                                    DataFile=expression_file_e,
                                                                    MappingFile=mapping_file_e,
                                                                    DataColumnNumber=kl_column,
                                                                    BatchMode=batch_mode)
    except WebFault as detail:
        response = None
        fault = str(detail)

    return response, fault

def __scale_kinetic_ws(sbml_file_list, parameter_id, mapping_file, expression_file, kl_column = 2, batch_mode=False, merge_mode='MAX'):
    fault = ''
    sbml_file_list_e = []
    for sbml_file in sbml_file_list:
        sbml_file_e = base64.b64encode(sbml_file)
        sbml_file_list_e.append(sbml_file_e)
    mapping_file_e = base64.b64encode(mapping_file)
    expression_file_e = base64.b64encode(expression_file)
    try:
        response = client.service.ScaleKineticLawParameterBase64Encoded(SbmlModelFiles=sbml_file_list_e,
                                                                      ParameterId=parameter_id,
                                                                    DataFile=expression_file_e,
                                                                    MappingFile=mapping_file_e,
                                                                    DataColumnNumber=kl_column,
                                                                    BatchMode=batch_mode)
    except WebFault as detail:
        response = None
        fault = str(detail)

    return response, fault

def __add_bounds_ws(sbml_file_list, default_value, mapping_file, expression_file, kl_column = 2, batch_mode=False, merge_mode='MAX'):
    fault = ''
    sbml_file_list_e = []
    for sbml_file in sbml_file_list:
        sbml_file_e = base64.b64encode(sbml_file)
        sbml_file_list_e.append(sbml_file_e)
    mapping_file_e = base64.b64encode(mapping_file)
    expression_file_e = base64.b64encode(expression_file)
    try:
        response = client.service.AddBoundsToKineticLawBase64Encoded(SbmlModelFiles=sbml_file_list_e,
                                                                     DefaultValue=int(default_value),
                                                                     DataFile=expression_file_e,
                                                                     MappingFile=mapping_file_e,
                                                                     DataColumnNumber=kl_column,
                                                                     BatchMode=batch_mode,
                                                                     MergeMode=merge_mode)
    except WebFault as detail:
        response = None
        fault = str(detail)

    return response, fault

def __replace_conc_ws(sbml_file_list, mapping_file, data_file, s_column = 2, batch_mode=False):
    fault = ''
    sbml_file_list_e = []
    for sbml_file in sbml_file_list:
        sbml_file_e = base64.b64encode(sbml_file)
        sbml_file_list_e.append(sbml_file_e)
    mapping_file_e = base64.b64encode(mapping_file)
    expression_file_e = base64.b64encode(data_file)
    try:
        response = client.service.ReplaceInitialConcentrationsOfSpeciesBase64Encoded(SbmlModelFiles=sbml_file_list_e,
                                                                                 DataFile=expression_file_e,
                                                                                 MappingFile=mapping_file_e,
                                                                                 DataColumnNumber=s_column,
                                                                                 BatchMode=batch_mode)
    except WebFault as detail:
        response = None
        fault = str(detail)

    return response, fault

def __copasiws(models):
    fault = ''
    url = Wsdl.objects.get(wsdl_name='SteadyStateService').wsdl_url
    client = Client(url, cache=None)
    parameters = client.factory.create('ns1:Parameters')
    parameters._outputFormat="text"
    results = []
    for model in models:
        parameters.sbml = ''.join([repr(c)[1:-1] if ord(c) > 128 else c for c in model])
        try:
            response = client.service.runSimulator(parameters)
            results.append(response.result)
        except WebFault as detail:
            response = None
            fault = str(detail)
            if not fault:
                fault = "COPASI Web service failed for unknown reason."
            else:
                fault = "COPASI Web service failed: " + fault
    return results, fault

def __read_example_files():
    sbml_file = open(SBML_FILE).read()
    reaction_mapping_file = open(REACTION_MAPPING_FILE).read()
    kinetic_law_data_file = open(KINETIC_LAW_DATA_FILE).read()
    species_mapping_file = open(SPECIES_MAPPING_FILE).read()
    species_data_file = open(SPECIES_DATA_FILE).read()
    return sbml_file, reaction_mapping_file, kinetic_law_data_file, species_mapping_file, species_data_file

def __setup_session(request, form):
    submitted_input = {}
    # Get data from request object
    submitted_input['global_parameters'] = form.cleaned_data['global_parameters']
    submitted_input['kinetic_law_parameters'] = form.cleaned_data['kinetic_law_parameters']
    submitted_input['kinetic_parameter'] = form.cleaned_data['parameter']
    submitted_input['replace_or_scale'] = form.cleaned_data['replace_or_scale']
    submitted_input['bounds_default'] = form.cleaned_data['bounds_default']
    submitted_input['kl_merge_mode'] = form.cleaned_data['kl_merge_mode']
    submitted_input['b_merge_mode'] = form.cleaned_data['b_merge_mode']
    if not form.cleaned_data['example_files']:
        submitted_input['batch_mode'] = form.cleaned_data['batch_mode']
        submitted_input['kl_column'] = form.cleaned_data['kl_data_column']
        if not submitted_input['kl_column']:
            submitted_input['kl_column'] = 2
        submitted_input['s_column'] = form.cleaned_data['s_data_column']
        if not submitted_input['s_column']:
            submitted_input['s_column'] = 2
        submitted_input['sbml_file'] = request.FILES.get('sbml_file', StringIO.StringIO()).read()
        submitted_input['kl_mapping_file'] = request.FILES.get('kl_mapping_file', StringIO.StringIO()).read()
        submitted_input['s_mapping_file'] = request.FILES.get('s_mapping_file', StringIO.StringIO()).read()
        submitted_input['kinetic_law_data_file'] = request.FILES.get('kinetic_law_data_file', StringIO.StringIO()).read()
        submitted_input['species_data_file'] = request.FILES.get('species_data_file', StringIO.StringIO()).read()
    else:
        submitted_input['batch_mode'] = form.cleaned_data['batch_mode']
        submitted_input['kl_column'] = form.cleaned_data['kl_data_column']
        if not submitted_input['kl_column']:
            submitted_input['kl_column'] = 2
        submitted_input['s_column'] = form.cleaned_data['s_data_column']
        if not submitted_input['s_column']:
            submitted_input['s_column'] = 2
        sbml_file, reaction_mapping_file, kinetic_law_data_file, species_mapping_file, species_data_file = __read_example_files()
        submitted_input['sbml_file'] = sbml_file
        submitted_input['kl_mapping_file'] = reaction_mapping_file
        submitted_input['s_mapping_file'] = species_mapping_file
        submitted_input['kinetic_law_data_file'] = kinetic_law_data_file
        submitted_input['species_data_file'] = species_data_file

    request.session['submitted_input'] = submitted_input
    request.session['copasi_results'] = {}
    request.session['copasi_fault'] = None

    request.session['kl_done'] = False
    request.session['b_done'] = False
    request.session['s_done'] = False
    request.session['copasi_done'] = False

    if not submitted_input['kinetic_law_data_file']:
        request.session['kl_done'] = True
        request.session['b_done'] = True
    if not submitted_input['species_data_file']:
        request.session['s_done'] = True

    return request

def __update_session(request, form):
    # Get data from request object
    if request.session['copasi_done']:
        request.session['submitted_input']['graph_groups'] = form.cleaned_data['graph_groups']
        request.session['submitted_input']['graph_species'] = form.cleaned_data['graph_species']
        request.session['submitted_input']['graph_reactions'] = form.cleaned_data['graph_reactions']

    if not request.session['kl_done']:
        request.session['submitted_input']['global_parameters'] = form.cleaned_data['global_parameters']
        request.session['submitted_input']['kinetic_law_parameters'] = form.cleaned_data['kinetic_law_parameters']
        request.session['submitted_input']['kinetic_parameter'] = form.cleaned_data['parameter']
        request.session['submitted_input']['replace_or_scale'] = form.cleaned_data['replace_or_scale']
        request.session['submitted_input']['kl_merge_mode'] = form.cleaned_data['kl_merge_mode']

    if not request.session['b_done']:
        request.session['submitted_input']['bounds_default'] = form.cleaned_data['bounds_default']
        request.session['submitted_input']['b_merge_mode'] = form.cleaned_data['b_merge_mode']

    return request


# Panel logic

def __kinetic_law_parameters(request, error, initial_model=False):
    kinetic_law_parameters = request.session['submitted_input']['kinetic_law_parameters']
    kinetic_parameter = request.session['submitted_input']['kinetic_parameter']
    global_parameters = request.session['submitted_input']['global_parameters']
    replace_or_scale = request.session['submitted_input']['replace_or_scale']
    if initial_model:
        sbml_file = request.session['submitted_input']['sbml_file']
        sbml_file_list = [sbml_file]
    else:
        sbml_file_list = []
        for name in request.session['result_names']:
            sbml_file_list.append(request.session['result_contents'][name].encode('utf8'))

    kl_mapping_file = request.session['submitted_input']['kl_mapping_file']
    kinetic_law_data_file = request.session['submitted_input']['kinetic_law_data_file']
    kl_column = request.session['submitted_input']['kl_column']
    batch_mode = request.session['submitted_input']['batch_mode']
    kl_merge_mode = request.session['submitted_input']['kl_merge_mode']

    # Check
    result_ok = True
    if sbml_file_list == ['']:
        result_ok = False
        error.append('SBML file must be given.')
    if not kinetic_law_data_file:
        result_ok = False
        error.append('Reaction data file must be given.')
    if not global_parameters and not kinetic_law_parameters:
        result_ok = False
        error.append('Choose one or both of Global parameters or local parameters.')
    if kinetic_law_parameters and kinetic_parameter == '':
        result_ok = False
        error.append('Parameter to change must be given when local parameters is selected.')

    # Choose action
    response = 0
    if result_ok:
        if replace_or_scale == 'replace':
            func_global = __replace_global_ws
            func_kinetic = __replace_kinetic_ws
        else:
            func_global = __scale_global_ws
            func_kinetic = __scale_kinetic_ws

        fault = False

        if global_parameters:
            response, fault = func_global(sbml_file_list=sbml_file_list,
                                        mapping_file=kl_mapping_file,
                                        expression_file=kinetic_law_data_file,
                                        kl_column=kl_column,
                                        batch_mode=batch_mode,
                                        merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)

        if not fault and kinetic_law_parameters:
            if response:
                sbml_file_list = []
                for myfile in response.SbmlModelFiles:
                    sbml_file_list.append(base64.b64decode(myfile.SbmlModelFile))

            #batch_mode = batch_mode and not global_parameters

            response, fault = func_kinetic(sbml_file_list=sbml_file_list,
                                          parameter_id=kinetic_parameter,
                                          mapping_file=kl_mapping_file,
                                          expression_file=kinetic_law_data_file,
                                          kl_column=kl_column,
                                          batch_mode=batch_mode,
                                          merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)

        if response == 0:
            result_ok = False
            error.append('Choose one or both of global parameters or local parameters.')

    if result_ok:
        request.session['kl_done'] = True
        request.session['copasi_done'] = False
    else:
        request.session['kl_done'] = False


    return request, response, result_ok, error


def __kinetic_law_bounds(request, error, initial_model=False):
    if initial_model:
        sbml_file = request.session['submitted_input']['sbml_file']
        sbml_file_list = [sbml_file]
    else:
        sbml_file_list = []
        for name in request.session['result_names']:
            sbml_file_list.append(request.session['result_contents'][name].encode('utf8'))

    kl_mapping_file = request.session['submitted_input']['kl_mapping_file']
    kinetic_law_data_file = request.session['submitted_input']['kinetic_law_data_file']
    kl_column = request.session['submitted_input']['kl_column']
    batch_mode = request.session['submitted_input']['batch_mode']
    bounds_default = request.session['submitted_input']['bounds_default']
    b_merge_mode = request.session['submitted_input']['b_merge_mode']

    # Check
    result_ok = True
    if sbml_file_list == ['']:
        result_ok = False
        error.append('SBML file must be given.')
    if not bounds_default:
        result_ok = False
        error.append('Bounds default value must be given.')

    # Choose action
    response = None
    if result_ok:
        response, fault = __add_bounds_ws(sbml_file_list,
                                    bounds_default,
                                    kl_mapping_file,
                                    kinetic_law_data_file,
                                    kl_column = kl_column,
                                    batch_mode=batch_mode,
                                    merge_mode=b_merge_mode)
        if fault:
            result_ok = False
            error.append(fault)

    request.session['b_done'] = True
    request.session['copasi_done'] = False

    return request, response, result_ok, error

def __species_concentrations(request, error, initial_model=False):
    if initial_model:
        sbml_file = request.session['submitted_input']['sbml_file']
        sbml_file_list = [sbml_file]
    else:
        sbml_file_list = []
        for name in request.session['result_names']:
            sbml_file_list.append(request.session['result_contents'][name].encode('utf8'))

    s_mapping_file = request.session['submitted_input']['s_mapping_file']
    species_data_file = request.session['submitted_input']['species_data_file']
    s_column = request.session['submitted_input']['s_column']
    batch_mode = request.session['submitted_input']['batch_mode']

    # Check
    result_ok = True
    if sbml_file_list == ['']:
        result_ok = False
        error.append('SBML file must be given.')
    if not species_data_file:
        result_ok = False
        error.append('Species data file must be given.')

    # Choose action
    response = None
    if result_ok:
        response, fault = __replace_conc_ws(sbml_file_list,
                                    s_mapping_file,
                                    species_data_file,
                                    s_column = s_column,
                                    batch_mode=batch_mode)
        if fault:
            result_ok = False
            error.append(fault)

    request.session['s_done'] = True
    request.session['copasi_done'] = False

    return request, response, result_ok, error


def __update_visualisation(request, error):
    concentrations = request.session['copasi_results']['result_concentrations']
    fluxes = request.session['copasi_results']['result_fluxes']
    conc_unit = request.session['copasi_results']['conc_unit']
    flux_unit = request.session['copasi_results']['flux_unit']

    graph_groups = request.session['submitted_input']['graph_groups']
    graph_species = request.session['submitted_input']['graph_species']
    graph_reactions = request.session['submitted_input']['graph_reactions']

    if not graph_groups:
        graph_groups = 'na'
    if not graph_species:
        graph_species = ['na']
    if not graph_reactions:
        graph_reactions = ['na']

    process = Popen(["python", "sbmlmod/image.py", concentrations.replace('\n', ';'), fluxes.replace('\n', ';'), conc_unit, flux_unit, graph_groups, ','.join(graph_species).replace(' ', '_'), ','.join(graph_reactions). replace(' ', '_')], stdout=PIPE)
    output, err = process.communicate()
    exit_code = process.wait()

    if exit_code:
        request.session['copasi_results']['image'] = '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' # base64 encoded png that says "error"
    else:
        request.session['copasi_results']['image'] = output

    request.session.modified = True

    return request, None, False, error


def __copasi(request, error, initial_model = False):
    if initial_model:
        sbml_file = request.session['submitted_input']['sbml_file']
        sbml_file_list = [sbml_file]
        name_list = ['unnamed']
        request.session['warnings'] = []
        request.session['result_names'] = name_list
        request.session['result_contents'] = {'unnamed': sbml_file}
    else:
        sbml_file_list = []
        name_list = []
        for name in request.session['result_names']:
            sbml_file_list.append(request.session['result_contents'][name].encode('utf8'))
            name_list.append(name)

    # Check
    result_ok = True
    if sbml_file_list == ['']:
        result_ok = False
        error.append('SBML file must be given.')

    # Choose action
    response = None
    if result_ok:
        response, fault = __copasiws(sbml_file_list)

        request.session['copasi_fault'] = fault
        request.session['copasi_results'] = {}
        for name, content in zip(name_list, response):
            request.session['copasi_results'][name] = content

        concentrations, fluxes, species, reactions = pycopasi.get_tables(response, name_list)
        request.session['copasi_results']['result_concentrations'] = concentrations
        request.session['copasi_results']['result_fluxes'] = fluxes
        request.session['copasi_results']['species'] = species
        request.session['copasi_results']['reactions'] = reactions

        conc_unit, flux_unit = pycopasi.get_units(response[0])
        request.session['copasi_results']['conc_unit'] = conc_unit
        request.session['copasi_results']['flux_unit'] = flux_unit

        process = Popen(["python", "sbmlmod/image.py", concentrations.replace('\n', ';'), fluxes.replace('\n', ';'), conc_unit, flux_unit, 'na', 'na', 'na'], stdout=PIPE)
        output, err = process.communicate()
        exit_code = process.wait()

        if exit_code:
            request.session['copasi_results']['image'] = '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' # base64 encoded png that says "error"
        else:
            request.session['copasi_results']['image'] = output

    request.session['copasi_done'] = True

    request.session.modified = True

    return request, None, result_ok, error


# Web pages

def index(request):
    error = []
    if request.method == 'POST':
        form = SbmlModForm(request.POST, request.FILES)
        result_ok = False
        if form.is_valid():
            # Setup session
            request = __setup_session(request, form)


            # Identify and initiate analysis
            if error:
                pass
            elif 'kinetic' in request.POST:
                request, response, result_ok, error = __kinetic_law_parameters(request, error, initial_model=True)
            elif 'bounds' in request.POST:
                request, response, result_ok, error = __kinetic_law_bounds(request, error, initial_model=True)
            elif 'species' in request.POST:
                request, response, result_ok, error = __species_concentrations(request, error, initial_model=True)
            elif 'copasi' in request.POST:
                request, response, result_ok, error = __copasi(request, error, initial_model=True)

            if result_ok:
                if response is not None:
                    newsbml_files = response.SbmlModelFiles
                    try:
                        warnings = response.Warnings
                    except:
                        warnings = []
                    request.session['result_names'] = []
                    request.session['result_contents'] = {}
                    for sbmlfile in newsbml_files:
                        name = sbmlfile.Name
                        content = base64.b64decode(sbmlfile.SbmlModelFile)
                        request.session['result_names'].append(name)
                        request.session['result_contents'][name] = content
                    request.session['warnings'] = warnings
                return HttpResponseRedirect('/sbmlmod/results')
        else:
            error.append('The form is not valid!')
            for k in form.errors:
                error.append(k + ': ' + form.errors[k])

    else:
        # Get enumerations for Merge modes
        ##merge_modes = []
        ##for n in client.factory.create('MergeModeType'):
        ##     merge_modes.append((n[0], n[0].title()))
        ##merge_modes = tuple(merge_modes)
        form = SbmlModForm()##merge_modes=merge_modes)

    try:
        version = client.service.GetVersion()
    except URLError:
        version = ''
    context = {'version': version,
                'form': form,
                'error': error}
    return render(request, 'sbmlmod/index.html', context)

def results(request):
    error = []
    if request.method == 'POST':
        form = SbmlModResultForm(request.POST, copasi_results = request.session['copasi_results'])
        result_ok = False
        if form.is_valid():
            # Setup session
            request = __update_session(request, form)

            # Identify and initiate analysis
            if 'kinetic' in request.POST:
                request.session['copasi_results'] = {}
                request, response, result_ok, error = __kinetic_law_parameters(request, error)
            elif 'bounds' in request.POST:
                request.session['copasi_results'] = {}
                request, response, result_ok, error = __kinetic_law_bounds(request, error)
            elif 'species' in request.POST:
                request.session['copasi_results'] = {}
                request, response, result_ok, error = __species_concentrations(request, error)
            elif 'copasi' in request.POST:
                request, response, result_ok, error = __copasi(request, error)
                result_ok = False
            elif 'visualisation' in request.POST:
                request, response, result_ok, error = __update_visualisation(request, error)
                result_ok = False

            if result_ok:
                newsbml_files = response.SbmlModelFiles
                request.session['result_names'] = []
                request.session['result_contents'] = {}
                for sbmlfile in newsbml_files:
                    name = sbmlfile.Name
                    content = base64.b64decode(sbmlfile.SbmlModelFile)
                    request.session['result_names'].append(name)
                    request.session['result_contents'][name] = content
                try:
                    request.session['warnings'] = response.Warnings
                except AttributeError:
                    request.session['warnings'] = []

        form = SbmlModResultForm(copasi_results = request.session['copasi_results'])
    else:
        # Get enumerations for Merge modes
        ##merge_modes = []
        ##for n in client.factory.create('MergeModeType'):
        ##     merge_modes.append((n[0], n[0].title()))
        ##merge_modes = tuple(merge_modes)
        ##form = SbmlModResultForm(merge_modes=merge_modes, copasi_results = request.session['copasi_results'])
        form = SbmlModResultForm(copasi_results = request.session['copasi_results'])
    try:
        version = client.service.GetVersion()
    except URLError:
        version = ''
    context = {'result_names': request.session['result_names'],
                'result_contents': request.session['result_contents'],
                'warnings': request.session['warnings'],
                'version': version,
                'form': form,
                'error': error,
                'kl_done': request.session['kl_done'],
                'b_done': request.session['b_done'],
                's_done': request.session['s_done'],
                'copasi_done': request.session['copasi_done'],
                'copasi_fault': request.session['copasi_fault'],
                'copasi_results': request.session['copasi_results']}
    return render(request, 'sbmlmod/results.html', context)

def help(request):
    try:
        version = client.service.GetVersion()
    except URLError:
        version = ''
    context = {'version': version, 'page': request.GET.get('page', 'all')}
    return render(request, 'sbmlmod/help.html', context)

def get_model(request, name):
    model = request.session['result_contents'][name]
    response = HttpResponse(model)
    response['Content-Disposition'] = 'attachment; filename=%s.xml' % name
    response['Content-Type'] = 'application/xml'
    return response

def get_simulation(request, name):
    simulation = request.session['copasi_results'][name]
    response = HttpResponse(simulation)
    response['Content-Disposition'] = 'attachment; filename=%s.txt' % name
    response['Content-Type'] = 'application/txt'
    return response

def get_image(request):
    img = base64.b64decode(request.session['copasi_results']['image'])
    response = HttpResponse(img)
    response['Content-Type'] = 'image/png'
    return response

def get_models_zipped(request):
    s = StringIO.StringIO()
    zf = zipfile.ZipFile(s, 'w')
    for name in request.session['result_names']:
        zf.writestr(name+'.xml', request.session['result_contents'][name].encode('utf-8'))
    zf.close()
    response = HttpResponse(s.getvalue())
    response['Content-Disposition'] = 'attachment; filename=result.zip'
    response['Content-Type'] = 'application/x-zip'
    s.close()
    return response

def get_simulations_zipped(request):
    s = StringIO.StringIO()
    zf = zipfile.ZipFile(s, 'w')
    for name in request.session['result_names']:
        zf.writestr(name+'.txt', request.session['copasi_results'][name].encode('utf-8'))
    zf.close()
    response = HttpResponse(s.getvalue())
    response['Content-Disposition'] = 'attachment; filename=result.zip'
    response['Content-Type'] = 'application/x-zip'
    s.close()
    return response
