class UpdateShowColumns < ActiveRecord::Migration[4.2]
  def change
    change_table :shows do |t|
      t.string :day
      t.string :season
      t.string :genre
    end
  end
end
