from django.contrib.auth.forms import AuthenticationForm
from django import forms


class UserLoginForm(AuthenticationForm):
    def __inti__(self, *args, **kwargs):
        super(UserLoginForm, self).__inti__(*args, **kwargs)

    username = forms.CharField(widget=forms.TextInput(
        attrs={
            'class': "form__input",
            'placeholder': 'Username',
            'id': 'login__username',
            'name': 'username',
            'type': 'text',
        }
    ))
    password = forms.CharField(widget=forms.PasswordInput(
        attrs={
            'class': 'form__input',
            'placeholder': 'Password',
            'id': 'login__password',
            'name': "password",
            'type': 'password'

        }
    ))
