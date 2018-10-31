class Product < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    def can_change?(user)
        self.user == user || user.has_role?(:admin)
    end
end

