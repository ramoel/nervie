class City < ActiveRecord::Base
  has_many :users
  validates_presence_of :nome, :message => 'deve ser preenchido'
  validates_presence_of :estado, :message => 'deve ser preenchido'
  validates_presence_of :populacao, :message => 'deve ser preenchido'
  validates_uniqueness_of :nome, :message => 'já cadastrado.'
  validates_length_of :nome, :minimum => 3, :message => 'é curto (mínimo de 3 caracteres)'
end
