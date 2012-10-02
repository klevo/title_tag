# title_tag for Rails

Set HTML title tag from within Rails views.

## API

In your layout file (application.html.erb for example) create the title tag in the `<head>` section like this:

  <head>
    <%= title_tag 'My App' %>
    ...
  </head>

This will output `<title>My App</title>`.

In your views you can then use:

  <%= title "Curriculum" %>

This will set the page title to "Curriculum - My App" and print `<h1>Curriculum<h1>` at the same time.

If you just want to set the title without printing anything, use:

  <% title "Curriculum" %>

You can pass an option to the `title` method to not append the global title to the title you're creating:

  <% title "Very special page.", no_append: true %>

This results in page title being set to just "Very special page.".

That's it, enjoy.