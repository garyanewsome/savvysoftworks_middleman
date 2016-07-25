# SavvySoftWorks

page preview available at:

[https://garyanewsome.github.io/savvysoftworks_middleman](https://garyanewsome.github.io/savvysoftworks_middleman)

SavvySoftWorks homepage built with [https://middlemanapp.com/](Middleman) and [http://materializecss.com/](Materialize)

Contact form handled by [http://www.sinatrarb.com/](Sinatra)

For the contact form to function properly you must nest Sinatra within its own folder and add a line to change the default port i.e. `set :port, 9494`

This will keep the Middleman server and the Sinatra server from conflicting on the same port.

Also of note, due to the nesting of Sinatra, you need to launch the Sinatra server using the `bundle exec` command.

`bundle exec ruby mailer.rb` from within the `mailer` folder.




