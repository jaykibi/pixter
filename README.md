
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

* For storage, in order to keep it simple and use the development environment to store the images, comment out line 8 (storage :fog) app/uploaders/image_uploader.rb.

* Otherwise you can set up an Amazon AWS S3 bucket to store the image in the cloud. I have everything already set up so all you would need to do, is create the AWS S3 bucket and create an AWS ACCESS and AWS SECRET KEY. Then you would run this command in terminal: 
	* $ bundle exec figaro install

This command will create a file located at config/application.yml

In this file you put these items: 

AWS_ACCESS_KEY: "insert access key"
<br />
AWS_SECRET_KEY: "insert secret key"
<br />
AWS_BUCKET: "insert name of bucket"
<br />

Make sure to insert your specific access and secret key where it says to. Also insert the name of your S3 bucket, keep in mind this name must be the exact same as you have it on AWS, it is CASE SENSITIVE. 

Once you complete all these steps you should be able to upload images in the same fashion, however the images will now be stored in the AWS cloud. 


Enjoy! :)
