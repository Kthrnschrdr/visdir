class UserMailer < ActionMailer::Base
  default from: "kthrnschrdr@gmail.com"
  
  def welcome_email(user)
     @user = user
     @url  = 'http://example.com/login'
     mail(to: @user.email, subject: 'Welcome to Visdir')
   end
   
end
