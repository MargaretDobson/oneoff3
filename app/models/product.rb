class Product < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
    has_attached_file :image
=======
    has_one_attached :image

    def can_change?(user)
        self.user == user || user.has_role?(:admin)
>>>>>>> 3ccceeccbe0f4f333f956d1ba1cd5c7b1ae7b873
end

