require 'sinatra'
require 'action_mailer'

set :port, 9494

class Mailer < ActionMailer::Base

  def notification(form_data)
    
    @form_data = form_data
    @time = Time.now.getutc

    mail(to: 'paul@savvysoftworks.com')
  end
end


ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address        => "smtp.gmail.com",
   :port           => 587,
   :domain         => "example.com",
   :authentication => :plain,
   :user_name      => "YOUR_EMAIL",
   :password       => "YOUR_PASSWORD",
   :enable_starttls_auto => true
  }

ActionMailer::Base.view_paths = File.expand_path('views/notification.html.erb')