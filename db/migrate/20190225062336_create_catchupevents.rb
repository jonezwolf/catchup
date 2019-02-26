class CreateCatchupevents < ActiveRecord::Migration[5.2]
  def change
    create_table :catchupevents do |t|
      t.string :name
      t.string :location
      t.string :category
      t.integer :capacity
      t.datetime :start_time
      t.datetime :end_time
      t.string :photo
      t.string :latitude
      t.string :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
