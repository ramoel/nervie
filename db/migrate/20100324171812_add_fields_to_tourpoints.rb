class AddFieldsToTourpoints < ActiveRecord::Migration
  def self.up
    add_column :tourpoints, :localization, :string
    add_column :tourpoints, :whygo, :string
    add_column :tourpoints, :whengo, :string
    add_column :tourpoints, :whogo, :string
    add_column :tourpoints, :price, :string
    add_column :tourpoints, :photo_file_name, :string
    add_column :tourpoints, :photo_content_type, :string
    add_column :tourpoints, :photo_file_size, :integer
    add_column :tourpoints, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :tourpoints, :price
    remove_column :tourpoints, :whogo
    remove_column :tourpoints, :whengo
    remove_column :tourpoints, :whygo
    remove_column :tourpoints, :localization
    remove_column :tourpoints, :photo_file_name
    remove_column :tourpoints, :photo_content_type
    remove_column :tourpoints, :photo_file_size
    remove_column :tourpoints, :photo_updated_at
  end
end
