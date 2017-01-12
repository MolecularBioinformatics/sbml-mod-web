SBMLmod web application
=======================

This is the frontend for the backend sbml_mod_ws. The frontend in combination with the backend allows you to map gene expression (or equal) data to a given mathematical model to easily change model parameters.

A running example of the frontend can be found here: <http://sbmlmod.uit.no>

Dependencies
------------

 - Python 2 >= 2.7.4 (no Python 3 support!)
 - Django >= 1.7 `pip install django`
 - Suds 0.4 `pip install suds`
 - sqlparse >= 1.0 `pip install sqlparse`
 - matplotlib >= 1.5 `pip install matplotlib`

Configuration
-------------

Initialize the database: `python manage.py migrate`

Optionally, create a superuser: `python manage.py createsuperuser`. For this step, the WSDL file must be available (that usually means that an internet connection must be established).

Run server
----------

Default: `python manage.py runserver --insecure` (using port 8000, listening to localhost)

With ip and port: `python manage.py runserver ip:port --insecure`

If you want the frontend to listen to all IPs, use 0.0.0.0 as IP.

Note: the --insecure flag must be given to host static files.

Edit WSDL URL
-------------

The WSDL URL defines the address of the backend. By default, it points to `http://sbmlmod.uit.no/SBMLmod.wsdl`. To change it, go to the admin page: `http://localhost:8000/admin/`. Log in with the superuser credentials you gave after initializing the database (see configuration above). The server may need a restart after changing WSDL URL(s).

Access the portal
-----------------

Browse to `http://localhost:8000/sbmlmod`. Of course, the backend (`sbml_mod_ws`) must be running under the address that is given in the WSDL file.

Cleanup session files
---------------------

A cronjob should be set up to clean old session files. It may look like this:

```
*crontab*

0 4 * * * username find /path/to/sbml-mod-web/sessionfiles -type f -mtime +7 -delete > /dev/null
```

This line entered in `/etc/crontab` (depending on your system) will every day at 4am delete all sessionfiles that were not touched for seven days.
