require 'rubygems'
require 'sinatra'
require 'pony'

set :port, 9494

post '/' do
  name = params[:name]
  email = params[:email]
  body = params[:textarea1]

  @time = Time.now.getutc

  Pony.mail(:to => 'paul@savvysoftworks.com',
            :from => email,
            :subject => "Contact from #{name}, #{@time}",
            :body => body,
            :via => :smtp,
            :via_options =>{
              :address => 'smtp://127.0.0.1:1025',
              :port => '1025'
            }
  )


  #redirect '/success'
end