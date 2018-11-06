class Follow < ApplicationRecord
    belongs_to :follower, foreign_key: 'follower_id', class_name: 'User'
    belongs_to :following, foreign_key: 'following_id', class_name: 'User'
end

# RSpec.describe 'this is the follow function' do
#     it 'has a follow function'
#     it 'has an unfollow function'
# end