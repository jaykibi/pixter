
# README

Howdy! This is my submission for the Shopify internship position. 

[Demo the website here](https://pixter-by-kibi.herokuapp.com/)
<br />
[Watch a video demo here](https://youtu.be/A_yw87hhKVI)


We(prospective interns) were tasked with creating an image repository. It was an open ended project, the main items Shopify wanted were looking for were: a **Search** function, **Add** image, **Delete** image, and **Sell/Buy** image function. 

Currently, users on my live app are able to **create an account** and **upload** (**ADD**) pictures, which are then displayed on the homepage as clickable images. 

Users are current required to sign up in order to upload an image. 

![Alt Text](https://media0.giphy.com/media/j6waPdTZBTfNR19TVJ/giphy.gif)

![Alt Text](https://media3.giphy.com/media/jTYHypwe9alUHSJDDI/giphy.gif)


I used Ruby on Rails MVC, PostGreSQL, Heroku for hosting and AWS S3 to store images. 

Feel free to fork this repo and do whatever you please with it :) 

Important specs:

* Ruby version 2.7.1
* Rails 6 MVC 
	* [Click here](https://gorails.com/setup/windows/10#linux-subsystem) to see how I have my Rails development environment set up. 
* PostGreSQL database is used for this project, so make sure you download and install [PostGreSQL](https://www.postgresql.org/download/windows/) on your machine. 

* In order to initialize your database, make sure to pull the code down and run these in terminal:
	* $ rake db:create 
	* $ rake db:migrate

This will create the database and will run the migrations needed in order for them to function as expected. 

Enjoy! :)
