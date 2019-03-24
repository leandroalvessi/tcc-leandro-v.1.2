class Balance < ApplicationRecord

    enum status: [:Ativo, :Inativo] 
    
    RailsAdmin.config do |config|
        config.model 'Balance' do
            label 'Balanço'
            field :name do
                label 'Nome'
            end
            field :date do
                label 'Data'
            end
            field :status do
                label 'Status'
            end
        end
    end  
end
