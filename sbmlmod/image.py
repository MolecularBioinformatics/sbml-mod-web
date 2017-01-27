#!/usr/bin/env python

import matplotlib		# Fix for running matplotlib without Xwindow server
matplotlib.use('Agg')	# Must be run *before* pyplot is imported

from matplotlib import pyplot as plt
from random import random
from itertools import cycle, islice
from base64 import b64encode
import io
import re


def parse_groups(s, num_columns):

	# Remove whitespace and invalid characters
	s = re.sub('[^0-9,;-]', '', s)

	if not s:
		return []

	try:
		x = int(s)
	except ValueError:
		pass
	else:
		l = range(1, num_columns + 1)
		return [l[i:i + x] for i in xrange(0, len(l), x)]

	groups = []
	pregroups = s.split(';')
	for group in pregroups:
		singles = []
		presingles = group.split(',')
		for single in presingles:
			try:
				res = [int(single)]
				if res[0] > num_columns:
					continue
			except ValueError:
				a, b = (int(x) for x in single.split('-'))
				if a < 1:
					a = 1
				if a > num_columns:
					a = num_columns
				if b > num_columns:
					b = num_columns
				if b < a:
					b = a
				res = range(a, b+1)
			singles.extend(res)
		groups.append(singles)

	return groups


def scatterplot(concentration, flux, conc_unit, flux_unit, groups):

	def string_to_table(table_string, groups):
		max_value = 0
		min_value = float('Inf')

		tickmarkers = []
		values = []

		iter_lines = iter(table_string.split(';'))
		next(iter_lines)
		for line in iter_lines:
			if not line:
				continue
			lline = iter(line.split('\t'))
			current_tickmark = next(lline)
			current = []
			for value in lline:
				try:
					v = float(value)
				except ValueError:
					v = 0

				current.append(v)

			if groups:
				current_tickmarks = []
				current_values = []
				for i, group in enumerate(groups):
					current_tickmarks.append('G{} {}'.format(i+1, current_tickmark))
					group_values = []
					for n in group:
						group_values.append(current[n-1])
					current_values.append(group_values)
			else:
				current_values = [tuple(current)]
				current_tickmarks = [current_tickmark]


			#                                   This checks if all list elements are the same
			if not current or len(current) >= 3 and current.count(current[0]) == len(current):
				continue

			current_wo_zero = [x for x in current if x > 0]

			max_value = max(max_value, *current)
			if current_wo_zero:
				min_value = min(min_value, *current_wo_zero)
			values.extend(current_values)
			tickmarkers.extend(current_tickmarks)

		return tuple(tickmarkers), tuple(values), min_value, max_value


	ctickmarkers, cvalues, cmin_value, cmax_value = string_to_table(concentration, groups)
	ftickmarkers, fvalues, fmin_value, fmax_value = string_to_table(flux, groups)

	if len(ctickmarkers) > 50:
		ctickmarkers = ctickmarkers[:50]
	if len(ftickmarkers) > 50:
		ftickmarkers = ftickmarkers[:50]

	fig = plt.figure(figsize=(max(len(ctickmarkers), len(ftickmarkers)) * 0.3 + 2, 9))
	cax = fig.add_subplot(2,1,1)
	fax = fig.add_subplot(2,1,2)

	cax.set_title('Concentrations of species', fontsize=10)
	cax.set_ylabel(conc_unit, fontsize=10)
	cax.set_ylim([cmin_value/10, cmax_value*10])
	cax.set_xlim([-1, len(ctickmarkers)])
	cax.set_yscale('log')
	cax.set_xticks(xrange(len(ctickmarkers)))
	cax.tick_params(axis='both', labelsize=10)
	cax.set_xticklabels(ctickmarkers, rotation=40, ha='right')
	cax.grid(True)

	fax.set_title('Fluxes of reactions', fontsize=10)
	fax.set_ylabel(flux_unit, fontsize=10)
	fax.set_ylim([fmin_value/10, fmax_value*10])
	fax.set_xlim([-1, len(ftickmarkers)])
	fax.set_yscale('log')
	fax.set_xticks(xrange(len(ftickmarkers)))
	fax.tick_params(axis='both', labelsize=10)
	fax.set_xticklabels(ftickmarkers, rotation=40, ha='right')
	fax.grid(True)

	plt.tight_layout()

	if groups:
		colors = []
		for group in groups:
			colors.extend(islice(cycle('bgrcmyk'), len(groups)))
		colors = list(islice(cycle(colors), max(len(ctickmarkers), len(ftickmarkers))))
	else:
		colors = list(islice(cycle('bgrcmyk'), max(len(ctickmarkers), len(ftickmarkers))))

	for i in xrange(len(ctickmarkers)):
		x = [i + (random()*0.4 - 0.2) for _ in xrange(len(cvalues[i]))]
		cax.plot(x, cvalues[i], marker='o', c=colors[i], linestyle='', alpha=1)

	for i in xrange(len(ftickmarkers)):
		x = [i + (random()*0.4 - 0.2) for _ in xrange(len(fvalues[i]))]
		fax.plot(x, fvalues[i], marker='o', c=colors[i], linestyle='', alpha=1)

	buf = io.BytesIO()
	plt.savefig(buf, format='png')
	buf.seek(0)
	return buf.read()


if __name__ == '__main__':
	import sys

	if len(sys.argv) != 6:
		sys.exit(1)

	_, conc, flux, conc_unit, flux_unit, groupstring = sys.argv

	num_cols = len(conc.split(';')[0].split())

	print b64encode(scatterplot(conc, flux, conc_unit, flux_unit, parse_groups(groupstring, num_cols)))
