class User < ApplicationRecord

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
