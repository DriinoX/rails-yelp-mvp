class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, presence: true
      t.string :address, presence: true
      t.string :phone_number, presence: true
      t.string :category, presence: true

      t.timestamps
    end
  end
end
