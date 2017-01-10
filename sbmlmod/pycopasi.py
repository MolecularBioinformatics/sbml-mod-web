#!/usr/bin/env python2

from matplotlib import pyplot as plt
from random import random
import io


def _get_values_from_single_file(f, fn, conc_dict, flux_dict):
	if not f.startswith('A steady state with given resolution was found.'):
		return

	active = ''

	for line in f.split('\n'):
		line = line.strip()
		if active == 'conc':
			if not line:
				active = ''
				continue
			lline = line.split('\t')
			name = lline[0]
			conc = lline[1]
			if name not in conc_dict:
				conc_dict[name] = {}
			conc_dict[name][fn] = conc
		elif active == 'flux':
			if not line:
				break
			lline = line.split('\t')
			name = lline[0]
			flux = lline[1]
			if name not in flux_dict:
				flux_dict[name] = {}
			flux_dict[name][fn] = flux
		elif line.startswith('Species	Concentration'):
			active = 'conc'
		elif line.startswith('Reaction	Flux'):
			active = 'flux'


def get_tables(results, names):
	conc_dict = {}
	flux_dict = {}

	sorted_names = sorted(names)

	for f, fn in zip(results, names):
		_get_values_from_single_file(f, fn, conc_dict, flux_dict)

	conc_list = []
	conc_list.append('\t' + '\t'.join(names))
	for conc in sorted(conc_dict.keys()):
		row = [conc]
		for name in sorted_names:
			try:
				row.append(conc_dict[conc][name])
			except KeyError:
				row.append('na')
		conc_list.append('\t'.join(row))

	flux_list = []
	flux_list.append('\t' + '\t'.join(names))
	for flux in sorted(flux_dict.keys()):
		row = [flux]
		for name in sorted_names:
			try:
				row.append(flux_dict[flux][name])
			except KeyError:
				row.append('na')
		flux_list.append('\t'.join(row))

	return '\n'.join(conc_list), '\n'.join(flux_list)


def scatterplot(concentration, flux):

	def string_to_table(table_string):
		max_value = 0
		min_value = float('Inf')

		tickmarkers = []
		values = []

		iter_lines = iter(table_string.split('\n'))
		next(iter_lines)
		for line in iter_lines:
			lline = iter(line.split('\t'))
			tickmarkers.append(next(lline))
			current = []
			for value in lline:
				v = float(value)
				if v:
					max_value = max(max_value, v)
					min_value = min(min_value, v)
					current.append(v)
			values.append(tuple(current))

		return tuple(tickmarkers), tuple(values), min_value, max_value


	ctickmarkers, cvalues, cmin_value, cmax_value = string_to_table(concentration)
	ftickmarkers, fvalues, fmin_value, fmax_value = string_to_table(flux)

	if len(ctickmarkers) > 50:
		ctickmarkers = ctickmarkers[:50]
	if len(ftickmarkers) > 50:
		ftickmarkers = ftickmarkers[:50]

	fig = plt.figure(figsize=(max(len(ctickmarkers), len(ftickmarkers)) * 0.3 + 2, 9))
	cax = fig.add_subplot(2,1,1)
	fax = fig.add_subplot(2,1,2)

	cax.set_title('Concentrations of species', fontsize=10)
	cax.set_ylim([cmin_value/10, cmax_value*10])
	cax.set_xlim([-1, len(ctickmarkers)])
	cax.set_yscale('log')
	cax.set_xticks(xrange(len(ctickmarkers)))
	cax.tick_params(axis='both', labelsize=10)
	cax.set_xticklabels(ctickmarkers, rotation=40, ha='right')

	fax.set_title('Fluxes of reactions', fontsize=10)
	fax.set_ylim([fmin_value/10, fmax_value*10])
	fax.set_xlim([-1, len(ftickmarkers)])
	fax.set_yscale('log')
	fax.set_xticks(xrange(len(ftickmarkers)))
	fax.tick_params(axis='both', labelsize=10)
	fax.set_xticklabels(ftickmarkers, rotation=40, ha='right')

	plt.tight_layout()

	for i in xrange(len(ctickmarkers)):
		x = [i + (random()*0.4 - 0.2) for _ in xrange(len(cvalues[i]))]
		cax.plot(x, cvalues[i], marker='o', linestyle='', alpha=1)

	for i in xrange(len(ftickmarkers)):
		x = [i + (random()*0.4 - 0.2) for _ in xrange(len(fvalues[i]))]
		fax.plot(x, fvalues[i], marker='o', linestyle='', alpha=1)

	buf = io.BytesIO()
	plt.savefig(buf, format='png')
	buf.seek(0)
	return buf.read()
