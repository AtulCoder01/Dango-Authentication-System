from app.forms import LoginForm
from django.urls import path
from . import views
from django.contrib.auth import authenticate, views as auth_views
from .forms import LoginForm, MyPasswordChangeForm, MyPasswordResetForm, MySetPasswordForm

urlpatterns = [
    path( '', views.home, name="home" ),
    path( 'about/', views.about, name="about" ),
    path( 'contact/', views.contact, name="contact" ),
    path( 'accounts/login/', auth_views.LoginView.as_view( template_name = 'app/login.html', authentication_form = LoginForm ), name="login" ),
    path( 'profile/', views.profile, name="profile" ),
    path( 'logout/', auth_views.LogoutView.as_view( next_page = 'login' ), name="logout" ),

    path( 'register/', views.CustomerRegistrationView.as_view(), name="register" ),
    path( 'change-password/', auth_views.PasswordChangeView.as_view( template_name='app/changepassword.html', form_class=MyPasswordChangeForm, success_url='/password_change_done/' ), name="change-password" ),
    path( 'password_change_done/', auth_views.PasswordChangeDoneView.as_view( template_name = 'app/password_change_done.html' ), name="password_change_done" ),

    path( 'password-reset/', auth_views.PasswordResetView.as_view( template_name='app/password_reset.html', form_class=MyPasswordResetForm), name="forgot-password" ),
    path( 'password-reset/done/', auth_views.PasswordResetDoneView.as_view( template_name='app/password_reset_done.html'), name="password_reset_done" ),
    path( 'password-reset-confirm/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view( template_name='app/password_reset_confirm.html', form_class=MySetPasswordForm), name="password_reset_confirm" ),
    path( 'password-reset-complete/', auth_views.PasswordResetCompleteView.as_view( template_name='app/password_reset_complete.html'), name="password_reset_complete" ),
    

]