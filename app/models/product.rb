class Product < ApplicationRecord
  belongs_to :balance
  belongs_to :product_kind
  belongs_to :user

  validates :code, :unit_of_measurement, :quantity, presence: true
  #validates :quantity, :numericality => { :greater_than_or_equal_to => 0 } VALIDA APENAS NUMEROS POSITIVOS.
  validates :quantity, format: { with: /\A[+\-]?\d+\z/,        
    message: "é Permitido apanas numeros"} 
    
  rails_admin do
    field :code do
      label 'Codigo'
    end
    field :unit_of_measurement, :enum do
      label 'Unidade de medida'
      enum do
        { "AMPOLA" => "AMPOLA","BALDE" => "BALDE","BANDEJA" => "BANDEJ", 
          "BARRA" => "BARRA","BISNAGA" => "BISNAG","BLOCO" => "BLOCO", 
          "BOBINA" => "BOBINA","BOMBONA" => "BOMB","CAPSULA" => "CAPS", 
          "CARTELA" => "CART","CENTO" => "CENTO","CONJUNTO" => "CJ",		    					
          "CENTIMETRO" => "CM","CENTIMETRO QUADRADO" => "CM2",		    					
          "CAIXA" => "CX","CAIXA COM 2 UNIDADES" => "CX2","CAIXA COM 3 UNIDADES" => "CX3",	    					
          "CAIXA COM 5 UNIDADES" => "CX5","CAIXA COM 10 UNIDADES" => "CX10",						
          "CAIXA COM 15 UNIDADES" => "CX15","CAIXA COM 20 UNIDADES" => "CX20",						
          "CAIXA COM 25 UNIDADES" => "CX25","CAIXA COM 50 UNIDADES" => "CX50",						
          "CAIXA COM 100 UNIDADES" => "CX100","DISPLAY" => "DISP","DUZIA" => "DUZIA",						
          "EMBALAGEM" => "EMBAL","FARDO" => "FARDO","FOLHA" => "FOLHA","FRASCO" => "FRASCO",	                
          "GALÃO" => "GALAO","GARRAFA" => "GF","GRAMAS" => "GRAMAS","JOGO" => "JOGO",	                    
          "QUILOGRAMA" => "KG","KIT" => "KIT","LATA" => "LATA","LITRO" => "LITRO",	                    
          "METRO" => "M","METRO QUADRADO" => "M2","METRO CÚBICO" => "M3",                           
          "MILHEIRO" => "MILHEI","MILILITRO" => "ML","MEGAWATT HORA" => "MWH",	                    
          "PACOTE" => "PACOTE","PALETE" => "PALETE","PARES" => "PARES","PEÇA" => "PC",	                        
          "POTE	" => "POTE","QUILATE" => "K","RESMA" => "RESMA","ROLO" => "ROLO",                       
          "SACO" => "SACO","SACOLA" => "SACOLA","TAMBOR" => "TAMBOR","TANQUE" => "TANQUE",                   
          "TONELADA" => "TON","TUBO" => "TUBO","UNIDADE" => "UNID",	                    
          "VASILHAME" => "VASIL","VIDRO" => "VIDRO" }  
      end
    end
    field :quantity do
      label 'Quantidade'
    end
    field :description do
      label 'Descrição'
    end
    field :damage do
      label 'Avaria'
    end
    field :balance do
      label 'Balanço'
    end
    field :product_kind do
      label 'Categoria'
    end
    field :user do
      label 'Usuario'
    end
  end 

  RailsAdmin.config do |config|
    config.default_items_per_page = 10
    config.model Product do
      list do
        sort_by :id
      end
    end
  end
end
