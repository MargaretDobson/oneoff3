require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  before :context do
    User.delete_all
    User.create!(email: 'foo@bar.com', name: 'foobar', username: 'foobar', balance: 0, password: 'abc123')
  end

  it 'expects the product params' do
    Product.create!(name: '', description: '', price: 0, user: User.first)
    expect(Product.first.name).to eq('')
    # expect(Product.first.image).to eq('')
    expect(Product.first.description).to eq('')
    expect(Product.first.price).to eq(0)
  end
end
