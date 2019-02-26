class AddDescriptionToCatchupevent < ActiveRecord::Migration[5.2]
  def change
    add_column :catchupevents, :description, :text
  end
end
