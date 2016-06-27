#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sbmlweb.settings")

    from django.core.management import execute_from_command_line

    if sys.argv[-1] == 'migrate':
		if os.path.isfile('db.sqlite3'):
			os.remove('db.sqlite3')

    execute_from_command_line(sys.argv)
