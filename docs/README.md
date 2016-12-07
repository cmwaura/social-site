Introduction
------------

Welcome to Django Social site. The etho to this project is to provide an easy implementable social network plugin that could be intergrated into any django site with ease. Hope you like it and if you have any comments, and inquires please feel free to reach out.

General Requirements.
---------------------

The requirements to this project include:
    1) Python == 3.4
    2) Django >= 1.9
    3) Git

The daily builds can be found on this github link.

Installation:
-------------
1) create a virtual environment with python3.4
    $ virtualenv -p python3.4 socialsite
2)After activating your environment, move into the root directory and 
 clone the Github repo:
    git clone https://github.com/cmwaura/social-site

3) Install the requirements needed and grab a cup of coffee while it installs
    pip -r install requirements.txt
4) Navigate to the directory containing settings.py file
    cd social-site
5) Create a config.py file containing the following:
    *mandatory*
    -SECRET_KEY
    *optional but useful for user registration*
    -EMAIL_USE_TLS
    -EMAIL_HOST    
    -EMAIL_HOST_USER  
    -EMAIL_HOST_PASSWORD 
    -EMAIL_PORT
6)Generate a SECRET_KEY *Tools online*
7) run migrations
    python manage.py migrate

You are good to go. Create a superuser and run the app.

Important API's That the Package Utilizes.
------------------------------------------

1) Django activity feeds
2) Django registration- For user Registrations
3) Django Imagestore for handling images.

