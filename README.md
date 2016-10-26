# social-site: An Open Source Django Social Network

The Idea behind this project is to give developers a chance to create social groups that could enable them to work together collaboratively
through the power of a social media app. Some of the tools in this package include an accounts app/userprofile app, images/gallery as well as
a messaging app powered by django postman.

This is the first basic launch as i add more features but as time goes by i plan to add more features.

To install
----------
First create a folder that will hold the project:

    mkdir django-social

Make a virtual environment:

    virtualenv -p python3.4 .
   
activate the environment:

    source bin/activate(linux)
    
Simply clone the project:

    git clone https://github.com/cmwaura/social-site
    
then switch into the actual directory:
    
    cd social-site

run install requirements:
    
    pip install -r requirements.txt

run migrate:
    
    python manage.py migrate
finally create your super user and run the server:

    python manage.py createsuperuser
    ........
    
    python manage.py runserver
