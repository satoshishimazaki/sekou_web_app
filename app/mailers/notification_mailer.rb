class NotificationMailer < ActionMailer::Base
  default from: 'zielson.info@gmail.com'

  def quit_message(user)
    @user = user
    mail(
      to: "zielson.info@gmail.com",
      suject: "退会希望のユーザーのお知らせ"
    ) do |format|
      format.html
    end
  end
end
