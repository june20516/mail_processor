class EmailReminderMailer < ApplicationMailer
  def reminder_email(user, team)
    @user = user
    @team = team
    reply_to = "'gomi-tax-keeper' <#{'development.' if Rails.env.development?}standup.#{@app.yourdomain.com">user.hash_id}@app.yourdomain.com>"
    mail(
      to: @user.email,
      subject: "#{team.name} gomi-tax-keeper Reminder!",
      reply_to: reply_to
    )
  end
end
