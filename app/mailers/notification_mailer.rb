class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place    #to get to the place the comment was made for
    @place_owner = @place.user #to get to the user who created the place

    mail(to: @place_owner.email,  #to send email to place owner's email address
      subject: "A comment has been added to #{@place.name}")
  end

end
