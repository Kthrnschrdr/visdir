class UserMailer < ActionMailer::Base
  default from: "kthrnschrdr@gmail.com"
  
  def welcome_email(user)
     @user = user
     mail(to: @user.email, subject: 'Welcome to Visdir')
   end
   handle_asynchronously :welcome_email, :priority => 2
   
end
