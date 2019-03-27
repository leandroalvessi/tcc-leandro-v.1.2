class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    enum status: [:Ativo, :Inativo] 
    enum kind:   [:Gerente, :Usuário] 
    
    RailsAdmin.config do |config|
        config.model 'User' do
            label 'Usuario'
            field :name do
                label 'Nome'
            end
            field :kind do
                label 'Tipo'
            end
            field :status do
                label 'Status'
            end
        end
    end
end
