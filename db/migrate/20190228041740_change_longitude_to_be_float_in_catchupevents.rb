class ChangeLongitudeToBeFloatInCatchupevents < ActiveRecord::Migration[5.2]
  def change
    change_column :catchupevents, :longitude, :float
  end
end
