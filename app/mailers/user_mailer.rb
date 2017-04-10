class UserMailer < ApplicationMailer
  default from: 'm18800105727@163.com'
  # def welcome_email
  #   @mail = 'm18800105727@163.com'
  #   mail to: @mail, subject: 'Welcome to My Awesome Site'
  # end
  def send_mail(params = {})
    @url  = 'http://192.168.221.130:3000/login'
    mail(
          :to => "1459963090@qq.com",
          :from => 'm18800105727@163.com',
          :subject => 'abcAAAAAAAASDFADSFADSFADSFDASFASDF'
    )
  end
end
