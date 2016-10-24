# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
    migrations.RunSQL("""CREATE TABLE IF NOT EXISTS sbmlmod_wsdl (id INTEGER PRIMARY KEY, wsdl_name VARCHAR(30), wsdl_url VARCHAR(100)); INSERT INTO sbmlmod_wsdl (wsdl_name, wsdl_url) VALUES ('SBMLmod', 'http://sbmlmod.uit.no/SBMLmod.wsdl'); INSERT INTO sbmlmod_wsdl (wsdl_name, wsdl_url) VALUES ('SteadyStateService', 'http://turing.mib.man.ac.uk:8080/CopasiWS/services/SteadyStateService?wsdl');""")
    ]
