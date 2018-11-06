require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'expects the product params' do
    Product.create(name: '', image: true, description: '', price: int)
    expect(Product.first.name).to eq('')
    expect(Product.first.image).to eq(true)
    expect(Product.first.description).to eq('')
    expect(Product.first.price).to eq(int)
  end
end
