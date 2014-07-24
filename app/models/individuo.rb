class Individuo < ActiveRecord::Base
  attr_accessible :email, :nome, :observacao, :telefone
end
