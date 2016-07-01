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

import logging
logging.basicConfig(level=logging.INFO)
logging.getLogger('suds.client').setLevel(logging.INFO)
#logging.getLogger('suds.client').setLevel(logging.DEBUG)

PATH = os.path.dirname(inspect.getfile(inspect.currentframe()))
PATH = os.path.split(PATH)[0]

SBML_FILE = os.path.join(PATH, 'testfiles/sbml_model.xml')
MAPPING_FILE = os.path.join(PATH, 'testfiles/mapping.txt')
KINETIC_LAW_DATA_FILE = os.path.join(PATH, 'testfiles/kinetic_law_data.csv')
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
        parameters.sbml = model
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
    mapping_file = open(MAPPING_FILE).read()
    kinetic_law_data_file = open(KINETIC_LAW_DATA_FILE).read()
    species_data_file = open(SPECIES_DATA_FILE).read()
    return sbml_file, mapping_file, kinetic_law_data_file, species_data_file

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
        submitted_input['batch_mode'] = False
        submitted_input['kl_column'] = 2
        submitted_input['s_column'] = 2
        sbml_file, mapping_file, kinetic_law_data_file, species_data_file = __read_example_files()
        submitted_input['sbml_file'] = sbml_file
        submitted_input['kl_mapping_file'] = mapping_file
        submitted_input['s_mapping_file'] = ''
        submitted_input['kinetic_law_data_file'] = kinetic_law_data_file
        submitted_input['species_data_file'] = species_data_file

    request.session['submitted_input'] = submitted_input
    request.session['copasi_results'] = None
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
            sbml_file_list.append(request.session['result_contents'][name])
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
        error.append('Kinetic law data file must be given.')
    if not global_parameters and not kinetic_law_parameters:
        result_ok = False
        error.append('Choose one or both of Global parameters or Kinetic law parameters.')
    if kinetic_law_parameters and kinetic_parameter == '':
        result_ok = False
        error.append('Parameter must be given when Kinetic law parameters is selected.')

    # Choose action
    response = None
    if result_ok:
        if global_parameters and kinetic_law_parameters and replace_or_scale == 'replace':
            response, fault = __replace_global_ws(sbml_file_list,
                                        kl_mapping_file,
                                        kinetic_law_data_file,
                                        kl_column = kl_column,
                                        batch_mode=batch_mode,
                                        merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)
            else:
                newsbml_files = []
                newsbml_files_e = response.SbmlModelFiles
                for file in newsbml_files_e:
                    newsbml_files.append(base64.b64decode(file.SbmlModelFile))
                response, fault = __replace_kinetic_ws(newsbml_files,
                                          kinetic_parameter,
                                          kl_mapping_file,
                                          kinetic_law_data_file,
                                          kl_column = kl_column,
                                          batch_mode=batch_mode,
                                          merge_mode=kl_merge_mode)

        elif global_parameters and kinetic_law_parameters and replace_or_scale == 'scale':
            response, fault = __scale_global_ws(sbml_file_list,
                                         kl_mapping_file,
                                         kinetic_law_data_file,
                                         kl_column = kl_column,
                                         batch_mode=batch_mode,
                                         merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)
            else:
                newsbml_files = []
                newsbml_files_e = response.SbmlModelFiles
                for file in newsbml_files_e:
                    newsbml_files.append(base64.b64decode(file.SbmlModelFile))
                response, fault = __scale_kinetic_ws(newsbml_files,
                                        kinetic_parameter,
                                        kl_mapping_file,
                                        kinetic_law_data_file,
                                        kl_column = kl_column,
                                        batch_mode=batch_mode,
                                        merge_mode=kl_merge_mode)

        elif global_parameters and replace_or_scale == 'replace':
            response, fault = __replace_global_ws(sbml_file_list,
                                        kl_mapping_file,
                                        kinetic_law_data_file,
                                        kl_column = kl_column,
                                        batch_mode=batch_mode,
                                        merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)

        elif global_parameters and replace_or_scale == 'scale':
            response, fault = __scale_global_ws(sbml_file_list,
                                         kl_mapping_file,
                                         kinetic_law_data_file,
                                         kl_column = kl_column,
                                         batch_mode=batch_mode,
                                         merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)

        elif kinetic_law_parameters and replace_or_scale == 'replace':
            response, fault = __replace_kinetic_ws(sbml_file_list,
                                          kinetic_parameter,
                                          kl_mapping_file,
                                          kinetic_law_data_file,
                                          kl_column = kl_column,
                                          batch_mode=batch_mode,
                                          merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)

        elif kinetic_law_parameters and replace_or_scale == 'scale':
            response, fault = __scale_kinetic_ws(sbml_file_list,
                                        kinetic_parameter,
                                        kl_mapping_file,
                                        kinetic_law_data_file,
                                        kl_column = kl_column,
                                        batch_mode=batch_mode,
                                        merge_mode=kl_merge_mode)
            if fault:
                result_ok = False
                error.append(fault)

        else:
            result_ok = False
            error.append('Choose one or both of Global parameters or Kinetic law parameters.')

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
            sbml_file_list.append(request.session['result_contents'][name])
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
            sbml_file_list.append(request.session['result_contents'][name])
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
        error.append('Species concentration data file must be given.')

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
            sbml_file_list.append(request.session['result_contents'][name])
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

    request.session['copasi_done'] = True

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
        merge_modes = []
        for n in client.factory.create('MergeModeType'):
             merge_modes.append((n[0], n[0].title()))
        merge_modes = tuple(merge_modes)
        form = SbmlModForm(merge_modes=merge_modes)

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
        form = SbmlModResultForm(request.POST)
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

            if result_ok:
                newsbml_files = response.SbmlModelFiles
                request.session['result_names'] = []
                request.session['result_contents'] = {}
                for sbmlfile in newsbml_files:
                    name = sbmlfile.Name
                    content = base64.b64decode(sbmlfile.SbmlModelFile)
                    request.session['result_names'].append(name)
                    request.session['result_contents'][name] = content
                request.session['warnings'] = response.Warnings
    else:
        # Get enumerations for Merge modes
        merge_modes = []
        for n in client.factory.create('MergeModeType'):
             merge_modes.append((n[0], n[0].title()))
        merge_modes = tuple(merge_modes)
        form = SbmlModResultForm(merge_modes=merge_modes)
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
