Vim�UnDo� r���>"��z�rx��v܏o&��>�|ߪi�   5                                  [Ö|    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        [Ö0    �                   �               �                 #from django.shortcuts import render       # Create your views here.5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        [Ör     �       6       �             �                 $from django.http import HttpResponse5�_�                            ����                                                                                                                                                                                                                                                                                                                                       I          V       [Öu     �                   �               �              I   $from django.http import HttpResponse   "from django.template import loader   -from django.views.generic import TemplateView   Jfrom django.contrib.auth.forms import UserCreationForm, AuthenticationForm   -from django.shortcuts import render, redirect   3from django.contrib.auth import login, authenticate       !class HomePageView(TemplateView):        template_name = "index.html"       "class AboutPageView(TemplateView):        template_name = "about.html"       $class ContactPageView(TemplateView):   "    template_name = "contact.html"       "class LoginPageView(TemplateView):        template_name = "login.html"       #class SignupPageView(TemplateView):   !    template_name = "signup.html"       def signup(request):        if request.method == 'POST':   -        form = UserCreationForm(request.POST)           if form.is_valid():               form.save()   8            username = form.cleaned_data.get('username')   ;            rawPassword = form.cleaned_data.get('password')   I            user = authenticate (username=username, password=rawPassword)                login(request, user)   #            return redirect('home')   	    else:   !        form = UserCreationForm()       9    return render(request, 'signup.html', {'form': form})       def signin(request):        if request.method == 'POST':   4        form = AuthenticationForm(data=request.POST)           if form.is_valid():   8            username = form.cleaned_data.get('username')   ;            rawPassword = form.cleaned_data.get('password')   R            user = authenticate (request, username=username, password=rawPassword)                if user is not None:   $                login(request, user)   '                return redirect('home')               else:   '                return redirect('home')   	    else:   #        form = AuthenticationForm()          8    return render(request, 'login.html', {'form': form})   "from django.template import loader   -from django.views.generic import TemplateView   Jfrom django.contrib.auth.forms import UserCreationForm, AuthenticationForm   -from django.shortcuts import render, redirect   3from django.contrib.auth import login, authenticate       !class HomePageView(TemplateView):        template_name = "index.html"       "class AboutPageView(TemplateView):        template_name = "about.html"       $class ContactPageView(TemplateView):   "    template_name = "contact.html"       "class LoginPageView(TemplateView):        template_name = "login.html"       #class SignupPageView(TemplateView):   !    template_name = "signup.html"5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        [Öw     �                 $from django.http import HttpResponse5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        [Öz     �                   �               5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        [Ö{    �                  5��