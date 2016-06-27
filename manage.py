#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sbmlweb.settings")

    from django.core.management import execute_from_command_line

    if sys.argv[-1] == 'migrate':
		if os.path.isfile('db.sqlite3'):
			print('You tried to migrate although db.sqlite3 already exists.\nPlease delete db.sqlite3 before you migrate again.')
			sys.exit()

    execute_from_command_line(sys.argv)
