class AddFieldsToTourpoints < ActiveRecord::Migration
  def self.up
    add_column :tourpoints, :localization, :string
    add_column :tourpoints, :whygo, :string
    add_column :tourpoints, :whengo, :string
    add_column :tourpoints, :whogo, :string
    add_column :tourpoints, :price, :string
  end

  def self.down
    remove_column :tourpoints, :price
    remove_column :tourpoints, :whogo
    remove_column :tourpoints, :whengo
    remove_column :tourpoints, :whygo
    remove_column :tourpoints, :localization
  end
end
