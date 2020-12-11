class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_hash)
    if user_hash[:username] != ""
        user = User.find_or_create_by(username: user_hash[:username])
        self.user_id = user.id
      end
    end

end
