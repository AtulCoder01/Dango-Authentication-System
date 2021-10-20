import django
from django.contrib.auth import password_validation
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UsernameField, PasswordChangeForm, PasswordResetForm, SetPasswordForm

from django import forms
from captcha.fields import ReCaptchaField
from captcha.widgets import ReCaptchaV2Checkbox

from django.contrib.auth.models import User
from django.forms import widgets
from django.utils.translation import gettext, gettext_lazy as _
from django.contrib.auth import password_validation

class CustomerRegistrationForm( UserCreationForm ):
    password1 = forms.CharField( label = 'Password', widget = forms.PasswordInput( attrs = { 'class' : 'log' } ))
    password2 = forms.CharField( label = 'Confirm Password (again)', widget = forms.PasswordInput( attrs = { 'class' : 'log' } ))

    email = forms.CharField( required=True, widget=forms.EmailInput(attrs={'class':'', 'autofocus':True}))
    captcha = ReCaptchaField( widget=ReCaptchaV2Checkbox )

    class Meta:
        model = User
        fields = [ 'username', 'email', 'password1', 'password2', 'captcha']
        labels = {'email':'Email'}
        widgets = {'username': forms.TextInput(attrs={'class':''})}


class LoginForm( AuthenticationForm ):
    username = UsernameField( widget = forms.TextInput( attrs = { 'autofocus' : True }))
    password = forms.CharField( label =  _("Password"), strip = False, widget = forms.PasswordInput( attrs = { 'autocomplete' : 'current-password', 'class' : 'log' }))
    captcha = ReCaptchaField( widget=ReCaptchaV2Checkbox )

class MyPasswordChangeForm( PasswordChangeForm ):
    old_password = forms.CharField( label = _("Old Password"), strip = False, widget = forms.PasswordInput( attrs = { 'autocomplete':'current-password', 'autofocus':True, 'class':'log'}))
    new_password1 = forms.CharField( label = _("New Password"), strip=False, widget=forms.PasswordInput( attrs={ 'autocomplete':'new-password', 'class':'log'}), help_text=password_validation.password_validators_help_text_html() )
    new_password2 = forms.CharField( label = _("Confirm New Password"), strip=False, widget=forms.PasswordInput( attrs={ 'autocomplete':'new-password', 'class':'log'}) )
    captcha = ReCaptchaField( widget=ReCaptchaV2Checkbox )

class MyPasswordResetForm( PasswordResetForm ):
    email = forms.EmailField( label=_("Email"), max_length=254, widget=forms.EmailInput( attrs={'autocomplete': 'email', 'autofocus':True } ) )
    captcha = ReCaptchaField( widget=ReCaptchaV2Checkbox )

class MySetPasswordForm( SetPasswordForm ):
    new_password1 = forms.CharField( label=_("New password"), widget=forms.PasswordInput(attrs={'autocomplete': 'new-password', 'class':'log', 'autofocus':True }), strip=False, help_text=password_validation.password_validators_help_text_html(), )
    new_password2 = forms.CharField( label=_("New password confirmation"), strip=False, widget=forms.PasswordInput(attrs={'autocomplete': 'new-password', 'class':'log' }), )
    captcha = ReCaptchaField( widget=ReCaptchaV2Checkbox )