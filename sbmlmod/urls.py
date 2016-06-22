from django.conf.urls import url

from sbmlmod import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^help/$', views.help, name='help'),
    url(r'^results/$', views.results, name='results'),
    url(r'^results/get_models_zipped/$', views.get_models_zipped, name='get_models_zipped'),
    url(r'^results/get_simulations_zipped/$', views.get_simulations_zipped, name='get_simulations_zipped'),
    url(r'^results/(?P<name>\w+)/$', views.get_model, name='get_model'),
    url(r'^results/simulations/(?P<name>\w+)/$', views.get_simulation, name='get_simulation')
]
