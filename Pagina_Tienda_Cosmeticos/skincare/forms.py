from django import forms

class CarritoForm(forms.Form):
    producto_id = forms.IntegerField(widget=forms.HiddenInput())
    cantidad = forms.IntegerField(min_value=1)

