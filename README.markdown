Dev Time
========

Ever wish it were last month instead of right now when trying to test
your Rails app? DevTime uses the Delorean gem to add time travel capabilies
to your application so you can make it so!

Requirements
------------

rails &gt;= 3.1

Installation
------------

Add dev-item to your `Gemfile`

    gem 'dev-time'


Then run `bundle install` and start your app as normal.

Usage
-----

Go to http://localhost:3000/time-machine and get started time travelling!

Dev Time also provides a couple of helpers you can add to your layout
to help you know what time is is while you're travelling. Inserting
the following to `layouts/application.html.erb`

    <html>
      <head>
        ...
        <%= dev_time_stylesheet_link_tag %>
      </head>
      <body>
        <%= dev_time_current_time_display %>
        ...
      </body>
    </html>

will display a ribbon in the upper left corner of the app showing the current
time. This ribbon will only be shown while you are time travelling -- once you
return to the present it will disappear. These helpers will also work when
not in `development` mode, but they will just return `''`.

Notes
-----
The time machine understands many ways of talking about time. Both absolute
(e.g. November 5, 1999) and relative (e.g. 3 years ago) will work.

Note that if your development server checks for timeout (like Unicorn does)
you may need to start it with a very long timeout setting (e.g. 1 year) in
order to avoid having the worker killed while it is time travelling.
