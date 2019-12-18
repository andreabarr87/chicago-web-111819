# Rails Forms and REST

## Goals:

- Understand the importance of "strong params"
- Submit POST data using Rails' `form_tag`
- Use `require`/`permit` on param data to isolate desired user input
- Handle responses and redirects RESTfully
- Refactor form using Rails' dynamic `form_with`
- Reuse view code using a "partial"


### The "Why" of Strong Params

Say we have an app like Reddit, where there are Categories and Posts.

One Category has many Posts, so each post carries a :category_id Integer.

Posts also have a :title and :content (both Strings).

Finally, each post has a Boolean field :pinned. Only one post in a Category can be pinned at a time. The newest Post per Category where :pinned == true ends up at the top of the page. (Only admins are able to pin a post).

The form to create a post has a dropdown to set a category_id and two textareas to hold the title and the content. Each field is named with "post[]" syntax, creating a nested params hash.

So, why not just call Post.create(params[post]) in the controller?

Is the form the only way a user can get data to your controller?

Could a sophisticated (if not outright malicious) user send extra data by other means?

Do you ever want a non-admin user setting `pinned: true` when creating or editing?

*THIS IS WHY WE HAVE STRONG PARAMS.*

#### How they work:
- Pattern that's baked into Rails controllers
- Each params "hash" is now a special hash-like Rails params object, with a :permitted attribute
- If the params object never receives a ``.permit(:list, :of, :accepted, :attributes)`` method call, Rails SIMPLY WILL NOT LET YOU MASS-ASSIGN WITH IT.
Post.create(params[:post])
- You're still allowed to assign one attribute at a time, e.g.:
  ```
  Post.create({
    title: params[:post][:title],
    content: params[:post[:content]]
    ...
    })
  ```
- OR you can write a custom method in your controller that knows how to return your params the way you like them, every time!

### Form helpers in Rails
- More security built in! "Auth tokens"
- Use field helpers like text_input_tag along with
- Can set action/url and override default method

### REST in the controller
- Avoid "sitting at" a POST/PUT/DELETE
- Redirect to an existing route instead

### form_with

 - It's AWESOME.
