class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :court_id
      t.string :status
      t.string :type
      t.datetime :start_time
      t.datetime :end_time
      t.integer :player_1_id
      t.integer :player_2_id
      t.integer :winner_id

      t.timestamps
    end
  end
end
