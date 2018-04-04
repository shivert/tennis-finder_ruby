class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.integer  :home_court_id
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :phone_number
      t.string :country
      t.string :skill
      t.string :gender
      t.string :zip
      t.integer :birth_year

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
