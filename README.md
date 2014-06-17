=== SBMLmod web application ==

== Dependencies ==
 - Python 2.7.4
 - Django 1.6.0 [easy_install Django==1.6.0]
 - Suds 0.4 [easy_install suds==0.4]

Should work with later versions as well.

== Configuration ==

Initialize the database: python manage.py syncdb
port: default is 8000 but can be changed as desired


Optional: port can be given after the 'python manage.py runserver'
command.

Note: the --insecure flag must be given no host static files.

== Edit WSDL URLs ==

This can be done using the admin page: http://localhost:port/admin/

The server may need a restart after changing WSDL URLs.

== Run server ==

default: python manage.py runserver --insecure
with ip and port: python manage.py runserver  ip:port --insecure

== Access the portal ==
browse to http://localhost:port/sbmlmod

== Cleanup session files ==

A cronjob should be set up to clean old session files.


