class CreateAddress < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :number
      t.string :street
      t.string :suburb
      t.string :state
      t.integer :postcode
    end
  end
end
