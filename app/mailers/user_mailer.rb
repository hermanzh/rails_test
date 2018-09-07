class UserMailer < ApplicationMailer
  default from: 'longxing386@gamil.com'
  #layout 'awesome' 使用 awesome.(html|text).erb 做布局
  def welcome_email(user)
    @user = user
    @url = 'https://calm-tundra-24704.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
