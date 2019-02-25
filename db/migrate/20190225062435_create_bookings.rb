class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :catchupevent, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
