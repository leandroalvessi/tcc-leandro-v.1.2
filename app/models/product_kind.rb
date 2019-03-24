class ProductKind < ApplicationRecord
    
    RailsAdmin.config do |config|
        config.model 'ProductKind' do
            label 'Tipo Produto'
            field :name do
                label 'Nome'
            end
            field :description do
                label 'Descrição'
            end
        end
    end  
end
