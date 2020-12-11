class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  

  def categories_attributes=(category_hashes)
    category_hashes.each do |i, category_attributes|
      if category_attributes[:name] != ""
        category= Category.find_or_create_by(name: category_attributes[:name])
        self.post_categories.build(:category => category)
      end
    end
  end

  def comment_users
    comment_users = []
    self.comments.each do |comment|
      if comment.user != nil
        comment_users << comment.user
      end
    end
    comment_users.uniq
  end


end
