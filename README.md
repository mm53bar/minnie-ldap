#Minnie-LDAP

minnie-ldap is an authentication strategy for the [minnie gem](https://github.com/mm53bar/minnie).

###Install


Add minnie-ldap to your Gemfile

     gem 'minnie-ldap'

Now follow the instructions for the minnie gem to run the generator.  Here's a hint:

     bundle exec rails generate minnie:install

Now get rid of the generated lines in the user model so that your model looks like this:

     class User < ActiveRecord::Base
       include Minnie::User::Ldap
     end

You'll also need to add a username to the migration.  Try this on the command line:

     bundle exec rails g migration AddUsernameToUsers username:string

You're all done!  Now try to sign in to your app at [/signin](http://localhost:3000/signin).  Make
sure you use a valid LDAP user.

###Issues

There isn't much code here so try resolving issues on your own. If you get some issues fixed, send me a pull request!

If you're not making any headway, just create an issue and I'll try to look at it.

