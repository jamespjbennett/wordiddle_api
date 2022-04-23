class AddUsedOnToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :used_on, :date
  end
end
