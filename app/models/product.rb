class Product < ApplicationRecord
    validates :user_id, presence: true
    
    belongs_to :user
    has_one_attached :image
    #resourcify  <-- This is makes Product model a resource for

    scope :of_followed_users, -> (following_users) { where user_id: following_users }

    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end