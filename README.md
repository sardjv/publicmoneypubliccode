### For non-geeks...

This is the source code for the [Public Money, Public Code](https://publicmoneypubliccode.org.uk/) website at [https://publicmoneypubliccode.org.uk/](https://publicmoneypubliccode.org.uk/)

### For nerds...

Most people aren't going to need to do this but if you want to boot up the website on your local machine. Here's roughly how.

It's built using a web application system called Ruby on Rails and then deployed to Heroku. Heroku is watching this repo for code changes on the main branch.

If you want to boot it up locally you're going to need:

* ruby installed - version 2.7.2 at the moment. I recommend [rbenv](https://github.com/rbenv/rbenv).
* postgres installed. I work on a Mac so it's homebrew for me.
* yarn

Clone the repo.

    yarn install

Then 

    bundle install
    
and then

    bundle exec rails db:create
    bundle exec rails db:migrate
    
and then lastly to boot up the server

    bundle exec rails s
    
It's not actually using the database so there's no migrations to run. It's a Ruby on Rails app because I thought we might want to use a database in the future. I'm toying with turning it into a Jekyll site. Other ideas are welcome.

If you really want to do this and you have any issues then reach out to me on [Twitter/KevinMonk](https://twitter.com/KevinMonk) and I'll help you get setup.

Peace and love,

Kevin.

