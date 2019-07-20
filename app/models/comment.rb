class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email #automaticalley send place owner email when comment button is triggered

  RATINGS = {
    'one star': '1_star',         #dictionary/hash table
    'two stars': '2_stars',
    'three stars': '3_stars',
    'four stars': '4_stars',
    'five stars': '5_stars'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
    NotificationMailer.comment_added(self).deliver_now
  end
end
