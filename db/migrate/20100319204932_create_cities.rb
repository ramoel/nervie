class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :nome
      t.string :estado
      t.string :populacao
      t.date :fundacao
      t.date :aniversario

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
