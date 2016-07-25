require 'sinatra'
require 'active_support'
require 'active_support/core_ext/object/blank.rb'
require 'action_mailer'

set :port, 9494

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   # :address        => "smtp.gmail.com",
   # :port           => 587,
   # :domain         => "example.com",
   # :authentication => :plain,
   # :user_name      => "YOUR_EMAIL",
   # :password       => "YOUR_PASSWORD",
   # :enable_starttls_auto => true

  :address => "localhost", :port => 1025

  }

ActionMailer::Base.view_paths = File.expand_path('views')

class Mailer < ActionMailer::Base
  default from: 'paul@savvysoftworks.com'
  layout false

  def notification(form_data)
    
    @form_data = form_data
    @time = Time.now.getutc
    
    mail(to: 'paul@savvysoftworks.com',
         subject: "New message from #{@form_data['email']}",
         template_path: 'mailer',
         template_name: 'notification')
  end
end

post '/' do
  Mailer.new.notification(params).deliver
 
end