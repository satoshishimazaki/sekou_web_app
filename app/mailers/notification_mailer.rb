class NotificationMailer < ActionMailer::Base
  default from: 'noreply@job-kensetsu.com'

  def quit_message(user)
    @user = user
    mail(
      to: "support@job-kensetsu.com",
      suject: "退会希望のユーザーのお知らせ"
    ) do |format|
      format.html
    end
  end
end
