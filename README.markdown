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

Notes
-----
The time machine understands many ways of talking about time. Both absolute
(e.g. November 5, 1999) and relative (e.g. 3 years ago) will work.

Note that if your development server checks for timeout (like Unicorn does)
you may need to start it with a very long timeout setting (e.g. 1 year) in
order to avoid having the worker killed while it is time travelling.
