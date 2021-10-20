from django.http.response import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.views import View
from .forms import CustomerRegistrationForm
from django.contrib import messages
from django.contrib.auth.models import User

# Create your views here.

def home( request ):
    return render( request, 'app/index.html' )

def about( request ):
    return render( request, 'app/about.html' )

def contact( request ):
    return render( request, 'app/contact.html' )

def profile( request ):
    
    import subprocess
    ip = request.META['REMOTE_ADDR']
    direct_output = subprocess.check_output("arp -n | grep "+ip+" | awk '{print $3 }'", shell=True)
    mac = str(direct_output).replace("b'", "" ).replace("\\n'", "")

    from pytz import timezone
    format = "%Y-%m-%d %H:%M:%S %Z%z"
    last_login = request.user.last_login.astimezone(timezone('Asia/Kolkata'))
    last_login = last_login.strftime(format)
    print( last_login )
    return render( request, 'app/profile.html', { 'mac': mac, 'last_login':last_login })

# def register( request ):
#     return render( request, 'app/register.html' )
class CustomerRegistrationView( View ):
    def get( self, request ):
        form = CustomerRegistrationForm()
        return render( request, 'app/register.html', { 'form' : form } )

    def post( self, request ):
        form = CustomerRegistrationForm( request.POST )
        if form.is_valid():
            form.save()
            messages.success( request, 'Congrartulations!! Registered Successfully' )
        return render( request, 'app/register.html', { 'form' : form } )

def forgot_password( request ):
    return render( request, 'app/forgotpassword.html' )

def chnage_password( request ):
    return render( request, 'app/changepassword.html' )