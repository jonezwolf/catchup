class ChangeLatitudeToBeFloatInCatchupevents < ActiveRecord::Migration[5.2]
  def change
    change_column :catchupevents, :latitude, :float
  end
end
