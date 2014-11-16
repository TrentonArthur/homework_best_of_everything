# Best of Everything

#Testing Mac Sublime

## Introduction

Do you know who serves your favorite bagel in Chicago? How about your favorite burger? This application will allow you to keep track.

The central model in this application are **Favorites**. A favorite belongs to a user and specifies a particular restaurant and a particular dish. For example, my favorite burger in Chicago is served at Au Cheval. Yours might be at Umami Burger. So the favorites table looks like this:

    Favorite:
      user_id: integer
      dish_id: integer
      venue_id: integer
      notes: text

The notes column exists so that users can remember additional info on a dish if they choose to, e.g., what extras to add.

The supporting cast of models in the app are as follows:

    User:
      username: string

    Cuisine:
      name: string

    Dish:
      name: string
      cuisine_id: integer

    Venue:
      name: string
      address: string
      neighborhood_id:integer

    Neighborhood:
      name: string
      city: string

Every table also has it's own `id: integer` column, of course. Also, every table has automatically managed `created_at` and `updated_at` columns.

Right now, the application technically *works*; we can CRUD users, cuisines, dishes, venues, neighborhoods, and favorites. But the interface is horrible.

**Your job is going to be to improve the interface of this application using what you've learned about HTML, CSS, and database queries.**

## Setup

 1. First **fork** and *then* clone your fork of this repository.
 1. `cd` into the application's root folder.
 1. `bundle install`
 1. `rake db:migrate`
 1. `rake db:seed`
 1. `rails s`

Navigate to [http://localhost:3000](http://localhost:3000) and click around to familiarize yourself with the application. I've provided some seed data for you so that you can get straight to work.

## Part 1

First of all, our users should never have to see ID numbers. Right now, the following views display raw IDs:

 - dishes#show (displays cuisine_id)
 - dishes#index (displays cuisine_id)
 - venues#show (displays neighborhood_id)
 - venues#index (displays neighborhood_id)
 - favorites#show (displays user_id, dish_id, and neighborhood_id)
 - favorites#index (displays user_id, dish_id, and neighborhood_id)

Go through and improve each of these views to display names rather than IDs. In other words, take an ID number and use it to look up the row in the corresponding table, and then peel off something more helpful than the ID (like the name).

## Part 2

Now, the interesting part. The core user story in this app is: I should be able to see a list of my favorites.

**Your task: on the users#show view, display a list of the user's favorites (which dish and which venue).** You'll have to retrieve some rows from the Favorites table (the ones that belong to the user whose show page you are on) and then loop through them in the view; you can decide what markup to use to make it look nice.

Also,

 - display a list of venues located in a neighborhood on the neighborhoods#show page (print names)
 - display a list of favorites on the dishes#show page (print venue names and usernames)
 - display a list of favorites on the venues#show page (print dish names and usernames)

## Part 3

The Cuisine, Favorite, and User resources that I've added to this application since the last time you saw it (on the midterm) are a little more advanced than the ones we've seen before.

Examine the controllers and views carefully and identify all the new things. What looks funny? Can you figure out what the new code is doing? Prepare lots of questions for us to discuss in class.

## Part 4

Now that you've gotten some hands on experience with models, it's time to nail down your domain model for your app idea. With that in hand, you'll be able to rapidly prototype it next week.

What are the CRUD resources you need in your app? In other words, what are the central *things* you need to keep track of information about?

Write up a list of tables and columns, in a format similar to the one I used in the introduction above. Try to specify every column you will need (including foreign keys to connect to other tables).

Basically, re-visit and update [the work you did in Week 1 to plan out your project](http://ask.initialversion.com/t/a-problem-solving-pattern/77), now that you are informed more about the technical side of things.

Bring this written-up list to your faculty coach appointment this week so you can iron out any kinks before we zoom ahead with prototyping next week.

**Ask lots of questions**. Good luck!

