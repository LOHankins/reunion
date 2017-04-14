class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.string :firstname, limit: 15
      t.string :middleinitial, limit: 1
      t.string :lastname, limit: 15
      t.string :address1
      t.string :address2
      t.string :city, limit: 25
      t.string :state, limit: 2
      t.string :zip, limit: 5
      t.string :country, limit: 35
      t.string :homephone, limit: 10
      t.string :cellphone, limit: 10
      t.string :instagram
      t.string :twitter

      t.timestamps null: false
    end
    add_foreign_key :profiles, :users
  end
end
