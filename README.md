SBMLmod web application
=======================

This is the frontend for the backend sbml_mod_ws. The frontend in combination with the backend allows you to map gene expression (or equal) data to a given mathematical model to easily change model parameters.

Dependencies
------------

 - Python 2 >= 2.7.4 (no Python 3 support!)
 - Django >= 1.7
 - Suds 0.4
 - sqlparse >= 1.0

Configuration
-------------

Initialize the database: `python manage.py migrate`

Create a superuser: `python manage.py createsuperuser`

Run server
----------

Default: `python manage.py runserver --insecure` (using port 8000)

With ip and port: `python manage.py runserver ip:port --insecure`

Note: the --insecure flag must be given to host static files.

Edit WSDL URL
-------------

The WSDL URL defines the address of the backend. By default, it points to `http://localhost/SBMLmod.wsdl` **NOT YET!**, assuming that sbml_mod_ws is used locally. To change it, go to the admin page: `http://localhost:8000/admin/`

Log in with the credentials you gave while initializing the database. The server may need a restart after changing WSDL URLs.

Access the portal
-----------------

Browse to `http://localhost:8000/sbmlmod`

Cleanup session files
---------------------

A cronjob should be set up to clean old session files.
