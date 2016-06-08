from django import forms

REPLACE_OR_SCALE = (('replace', 'Replace'),
                        ('scale', 'Scale'))

MODES = (('MAX', 'Max'),
         ('MIN', 'Min'),
         ('SUM', 'Sum'),
         ('MEAN', 'Mean'),
         ('MEDIAN', 'Median'),
         ('E-FLUX', 'E-FLUX'),
         )


class SbmlModForm(forms.Form):
    example_files = forms.BooleanField(required=False)
    required_css_class = 'alert'
    # Files
    sbml_file = forms.FileField(required=False)
    kinetic_law_data_file = forms.FileField(required=False)
    kl_mapping_file = forms.FileField(required=False)
    kl_data_column = forms.IntegerField(widget=forms.NumberInput(attrs={'style': 'width:4em'}), initial=2, required=False)
    species_data_file = forms.FileField(required=False)
    s_mapping_file = forms.FileField(required=False)
    s_data_column = forms.IntegerField(widget=forms.NumberInput(attrs={'style': 'width:4em'}), initial=2,  required=False)

    batch_mode = forms.BooleanField(required=False)
    case_sensitive = forms.BooleanField(required=False)

    # Kinetic law parameters
    global_parameters = forms.BooleanField(required=False)
    kinetic_law_parameters = forms.BooleanField(required=False)
    parameter = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': 'E_T for example files'}))
    replace_or_scale = forms.ChoiceField(choices=REPLACE_OR_SCALE, widget=forms.RadioSelect(), initial='replace')

    # Kinetic law bounds
    bounds_default = forms.FloatField(widget=forms.NumberInput(attrs={'style': 'width:4em'}), required=False)
    kl_merge_mode = forms.ChoiceField(choices=MODES)
    b_merge_mode = forms.ChoiceField(choices=MODES)

    def __init__(self, *args, **kwargs):
        merge_modes = kwargs.pop('merge_modes', None)
        super(SbmlModForm, self).__init__(*args, **kwargs)
        if merge_modes:
            self.fields['kl_merge_mode'].choices = merge_modes
            self.fields['b_merge_mode'].choices = merge_modes

class SbmlModResultForm(forms.Form):
    # Kinetic law parameters
    global_parameters = forms.BooleanField(required=False)
    kinetic_law_parameters = forms.BooleanField(required=False)
    parameter = forms.CharField(required=False, widget=forms.TextInput(attrs={'placeholder': 'E_T for example files'}))
    replace_or_scale = forms.ChoiceField(choices=REPLACE_OR_SCALE, widget=forms.RadioSelect(), initial='replace', required=False)

    # Kinetic law bounds
    bounds_default = forms.FloatField(widget=forms.NumberInput(attrs={'size':'1'}), required=False)
    kl_merge_mode = forms.ChoiceField(choices=MODES, required=False)
    b_merge_mode = forms.ChoiceField(choices=MODES, required=False)

    def __init__(self, *args, **kwargs):
        merge_modes = kwargs.pop('merge_modes', None)
        super(SbmlModResultForm, self).__init__(*args, **kwargs)
        if merge_modes:
            self.fields['kl_merge_mode'].choices = merge_modes
            self.fields['b_merge_mode'].choices = merge_modes

