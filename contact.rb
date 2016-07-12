require 'rubygems'
require 'sinatra'
require 'pony'

post '/' do
  name = params[:name]
  email = params[:email]
  body = params[:textarea1]

  @time = Time.now.getutc

  Pony.mail(:to => 'paul@savvysoftworks.com',
            :from => "#{mail}",
            :subject => "Contact from #{name}, #{@time}",
            :body => "#{textarea1}",
            :via => :smtp,
            :via_options => {
            :address        => 'smtp.yourserver.com',
            :port           => '25',
            :user_name      => 'user',
            :password       => 'password',
            :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
            :domain         => "localhost.localdomain" # the HELO domain provided by the client to the server
  )


  #redirect '/success'
end