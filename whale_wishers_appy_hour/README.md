Sinatra Associations and Forms (Again with the forms! Always with the forms!)

Objectives:

- Review how models associate together using has_many and belongs_to
- Review methods Active Record includes on objects when we write associations

- Implement one-to-many Sinatra, creating an object that belongs to another object
  * Method 1: Non-nested route
  * form for new child object that will belong to a chosen "parent"
  using an html select dropdown to choose which object will be the "parent"
- Create routes using REST to guide our naming decisions

STRETCH GOAL:
- Examine how nested routing can serve REST and CRUD (Method 2!)
  * create a nested route for new object creation
  * use nested route URL param to "lock in" the parent object



WORKFLOW:

1) Define and confirm schema
2) Translate schema to migrations; create models to match
3) Define model associations according to schema
4) Seed data for associated models
5) Test model association methods in console
---------READY TO GET ONLINE-----------
6) Define feature to be written: *I want to see a form to create a wish that belongs to a whale*
7) Map feature to restful action: *New wish action, url: /wishes/new, method: get*
8) Consider all data required to complete action (incl. primary foreign keys)
9) Build feature and let required data be communicated in each request/response
  - In controllers, use :id wildcards in routes to pass id info along
  - In views, ensure necessary ids are passed along as form values
  - Might not need a form field for everything, sometimes URL is enough
