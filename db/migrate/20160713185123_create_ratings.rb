class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :rater_id
      t.references :rateable, polymorphic: true, index:true
      t.timestamps(null:false)
    end
  end
end
