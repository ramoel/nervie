class CreateHosts < ActiveRecord::Migration
  def self.up
    create_table :hosts do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :telefone
      t.string :fax
      t.string :site
      t.string :email
      t.belongs_to :cidade

      t.timestamps
    end
  end

  def self.down
    drop_table :hosts
  end
end
