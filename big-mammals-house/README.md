
# Sinatra and MVC


## What is MVC?
It's a pattern, for organizing the work of delivering web content (or any content) that depends on data

M = Model - the data we care about (here, managed by active record)

V = View - the interface where we read data, offer data, ask for more data

C = Controller - Interacts with and mediates between model and view

"Separation of concerns"



### IN A NUTSHELL:
* Model holds the data and does business logic on the data if needed
* View represents data to the client and sends requests to a server
* Controller catches server requests from view, decides which model to do what with based on that, and prepares a response to send back to the view



### CHEZ MVC - A RESTAURANT ANALOGY
* What's the food like? Model (incl. recipes for the food, quantities of stock)
* What's the staff like? Controller
* What are YOU and your experience like? View

## CRUD, URLs, and REST

* Create Read Update Delete
* REpresentational State Transfer

* CRUD and REST map together
* REST is a set of conventions for organizing data in web apps, including:
  - deciding how to name a URL
  - deciding which http verb (GET, POST, etc...) fits the bill
  - nesting resources within one another (GET "blog-app.com/categories/7/blogs/12")
  - handling common user interactions like posting or editing
  - determine when/how to give feedback on user interactions

### Protips
* The above list is FAR from exhaustive!
* For today we're focused mainly on the first two things.
* We're practicing "thinking like a RESTful web dev" ALL WEEK as we build.
* It's more important to think RESTfully than to type fast. (It's also FASTER.)

## WHAT IS SINATRA?

* "It's just rack with extra (workflow-smoothing) steps!" - Morty
* Can be set up very simply like this morning's app
* Can also be configured to act as a Rails-shaped "scaffold" for building according to common patterns and best practices
* Directory structure leans heavily on MVC pattern
* gem install corneal
* corneal new [APPNAME]
* cd [APPNAME]


### Setting up a model
- Migrations first!
- Active Record is your bestest friend

### Setting up a controller
- Think RESTfully!
- Design from the "outside in": start by asking what you want your user to do
- Watch those closing and opening "/" characters! Rack's matcher counts them too.
- "Params" - parameters sent along with a request that the controller can make use of
  * Form data (we'll cover forms tomorrow)
  * URL wildcards (defined :like-this in a controller's url pattern)
  * URL query strings
    "http://domain.com/home?name=fran&job=chef" => {name: "fran", job: "chef"}

### Setting up views
- ERB templates == "Embedded RuBy"
- Some text is static, some is evaluated by Ruby as the controller prepares the response
- When all Ruby is evaluated, a response is sent: the filled-out HTML template.
- Configuring the views folder
- ERB Snippets package
- <%= %> vs <% %>
- <%= yield %> and layout files (this will sink in over time, don't rabbit-hole it)
- Keep your views clean!
  * syntax-wise: clear spacing is a MUST! Indent children within their parents, whether it's ruby indenting or HTML indenting
  * semantics-wise: a view CAN access a model directly, but SHOULD it? (no! why?)

## ONE LAST THOUGHT

- Capybaras are cute.
- But they don't always ACT cute.
- They can be very fussy sometimes.
- Please be nice to your Capybara and give it EXACTLY what it wants.
