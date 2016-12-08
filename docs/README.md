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

4) Django Postman - for messages between users

Apps included for free in this package.
----------------------------------------

This package comes with the standard social network utilities.
The utilities include:

    newsfeed:
        1) A newsfeed form that has 150 chars limit 
        2) A newsfeed page shared between the users and their followers
        3) The ability for a user to delete and update their newsfeed sections
    Blog/notes section:
        1) The ability for a user to share their thoughts with more than 140 chars
        2) A WYSGIWYG editor that enables a user to use markdown in their blog. Powered by Summernote
        3) Versatility with image (markdown support)
        4) Ability to see how many people have read your article based on the number of views counted.
        5) A panel section for the author of an article that gives you more control of what you want to do with the article. I.e Update an error, Delete the article, Use a different tag etc
    Comments app:
        1) User has the ability to comment on an article that they like
    Activity Feeds:
        1) Updates a user activity within the app without the need to be overly intrusive.
        2) Ability for the user to control what is updated to the app and what is not.

    


