class CreateTourpoints < ActiveRecord::Migration
  def self.up
    create_table :tourpoints do |t|
      t.string :name
      t.text :description
      t.integer :city_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tourpoints
  end
end
