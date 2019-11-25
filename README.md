# Nomster - A Yelp Clone
A Yelp clone that integrates with Google Maps API and includes features like user comments, star ratings, image uploading, and user authentication. Utilization of key tools such as Object-Oriented Programming, Inheritance, Authentication through Devise, Amazon Web Services(S3) and complex algorithms. HTML5, CSS, Ruby, and *Rails. 

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Status](#status)
* [Sources](#sources)
* [Contact](#contact)

## General info
A project in UC Berkeley's Coding Bootcamp program. The homepage lists the restaurants in the app along with their ratings and comments. Users are able to click on a restaraunt to see a detailed page of restaurant photos, reviews, and accurate location on google maps. Authenticated users also have their own profile page and be able to view others.


## Technologies 
Project is created with:
* [ruby '2.5.3'](https://github.com/university-bootcamp/coding-environment/blob/master/README.md#coding-environment-installation-guide)
* gem 'rails', '~> 5.2.1'
* [activerecord 6.0.1](https://rubygems.org/gems/activerecord/versions/5.0.0.1)
* [Heroku](https://signup.heroku.com/t/platform?c=70130000001xDpdAAE&gclid=CjwKCAiAzuPuBRAIEiwAkkmOSM8vVAtL7RKLqoIVrshH7VuxMysxD2e1555A3dwyDU4sOSOxy6zujxoCXBIQAvD_BwE)
* [gem 'bootstrap', '~> 4.3', '>= 4.3.1'](https://github.com/twbs/bootstrap-rubygem)
* [gem 'pg', '>= 0.18', '< 2.0'](https://www.ibm.com/cloud/databases-for-postgresql)
* [HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)
* [CSS](https://www.w3schools.com/html/html_css.asp)
* [gem 'pagy'](https://ddnexus.github.io/pagy/api/pagy.html)
* [gem 'devise'](https://github.com/plataformatec/devise)
* [AWS](https://aws.amazon.com/)
* [Google maps API](https://developers.google.com/maps/documentation)


## Setup   
Set up a development environment and start a new project

**Getting Started**

Go to one of the terminals within your coding environment and type the following:
  ```
  $ cd /vagrant/src
  ```
Create a new application that uses postgres
  ```
  $ rails new nomster --database=postgresql
  ```
Open newly created Nomster application in your text editor
Go to database.yml file and edit:
  ```
  username: postgres
  password: password
  host: localhost
  ```
  comment out last two lines on file for username and password.
Change directory inton your Nomster project
  ```
  $ cd /vagrant/src/nomster
  ```
Create your initial database
  ```
  $ rake db:create
  ```
Start the server:
  ```
  $ rails server -b 0.0.0.0 -p 3000
  ```
In the second terminal window, type following command to move into Nomster folder:
  ```
  $ cd /vagrant/src/nomster
  ```
Set up web development pipeline:
  
  create new Github repository

  create project in heroku and then deploy it to heroku


**Build out the homepage**
  ```
  $ rails generate controller places
  ```
Edit config/routes.rb and add following line:
  ```
  root 'places#index'
  ```
Open app/controllers/places_controller.rb and add index method:
  ```
  def index
  end
  ```
Create new view file for index page at app/views/places/index.html.erb and add some HTML:
  ```
  <h1>Welcome to my Awesome Yelp Clone Application</h1>
  ```


**Set up the database for places**

There will be a form for the user to fill out with form fields name, description and address.

Run the following in the terminal to create model and migration file:
  ```
  $ rails generate model place
  ```
Go to migration file (db/migrate/XXXX_create_places.rb) and add these lines in the table:
  ```
  t.string :name
  t.text :description
  t.string :address
  ```
Run line in terminal:
  ```
  $ rake db:migrate
  ```


**Show a place from database on page**

Open app/controllers/places_controller.rb and add this iside the index method:
  ```
  @place = Place.all
  ```
Go into app/views/quotes/index.html.erb and change welcome message to following line to pull quote from rails database:
  ```
  <h1><%= @places.inspect %></h1>
  ```
If you go load your localhost, you will see the output is nil. Go into your terminal and type the following:
  ```
  $ rails console
  ```
Create an example place to be stored directly into the database:
  ```
  > Quote.create(name: 'Tommaso's Restaurant', address: '1042 Kearny St. San Francisco, CA 94133', description: 'The best pizza in America!')
  ```
Feel free to add a couple more places just to get a few in your database then type:
  ```
  > exit
  ```
Adjust app/views/places/index.html.erb to pull quotes from database on homepage:
  ```
 <% @places.each do |place| %>
  <div>
    <h1><%= place.name %></h1><br />
    <i><%= place.address %></i><br />
    <p><%= place.description %></p><br />
  </div>

  <hr />
<% end %>
  ```

Be sure to take the same steps to push app to Heroku.

## Status
Project is fully-functioning, user-friendly and complete. You can find it deployed on heroku via: [Nomster Application](https://nomster-raquele-crotti.herokuapp.com/
)


## Sources
This app was created during my time completing UC Berkeley Extension's  Coding Bootcamp Program.

## Contact 
* [Portfolio](https://www.raquelecrotti.com/)
* [LinkedIn](https://www.linkedin.com/in/raquele-crotti/)
* [Github](https://github.com/Raquele-Crotti)
