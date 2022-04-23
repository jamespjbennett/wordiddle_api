class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :text
      t.boolean :used

      t.timestamps
    end
  end
end