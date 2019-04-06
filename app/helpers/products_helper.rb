module ProductsHelper
       UNIDADE_MEDIDA = [["AMPOLA", "AMPOLA"], 
                        ["BALDE", "BALDE"], 
                        ["BANDEJA", "BANDEJ"], 
                        ["BARRA", "BARRA"], 
                        ["BISNAGA", "BISNAG"], 
                        ["BLOCO", "BLOCO"], 
                        ["BOBINA", "BOBINA"],
                        ["BOMBONA","BOMB"], 
                        ["CAPSULA","CAPS"], 
                        ["CARTELA","CART"],						
                        ["CENTO","CENTO"],							
                        ["CONJUNTO","CJ"],		    					
                        ["CENTIMETRO","CM"],	    					
                        ["CENTIMETRO QUADRADO","CM2"],		    					
                        ["CAIXA","CX"],	    					
                        ["CAIXA COM 2 UNIDADES","CX2"],	    					
                        ["CAIXA COM 3 UNIDADES","CX3"],	    					
                        ["CAIXA COM 5 UNIDADES","CX5"],	    					
                        ["CAIXA COM 10 UNIDADES","CX10"],						
                        ["CAIXA COM 15 UNIDADES","CX15"],					
                        ["CAIXA COM 20 UNIDADES","CX20"],						
                        ["CAIXA COM 25 UNIDADES","CX25"],						
                        ["CAIXA COM 50 UNIDADES","CX50"],						
                        ["CAIXA COM 100 UNIDADES","CX100"],						
                        ["DISPLAY","DISP"],						
                        ["DUZIA","DUZIA"],						
                        ["EMBALAGEM","EMBAL"],						
                        ["FARDO","FARDO"],						
                        ["FOLHA","FOLHA"],						
                        ["FRASCO","FRASCO"],	                
                        ["GALÃO","GALAO"],	                    
                        ["GARRAFA","GF"],	                        
                        ["GRAMAS","GRAMAS"],	                
                        ["JOGO","JOGO"],	                    
                        ["QUILOGRAMA","KG"],                        
                        ["KIT","KIT"],	                        
                        ["LATA","LATA"],	                    
                        ["LITRO","LITRO"],	                    
                        ["METRO","M"],	                            
                        ["METRO QUADRADO","M2"],                           
                        ["METRO CÚBICO","M3"],                           
                        ["MILHEIRO","MILHEI"],	                    
                        ["MILILITRO","ML"],	                        
                        ["MEGAWATT HORA","MWH"],	                    
                        ["PACOTE","PACOTE"],	                
                        ["PALETE","PALETE"],	                
                        ["PARES","PARES"],                     
                        ["PEÇA","PC"],	                        
                        ["POTE	","POTE"],	                    
                        ["QUILATE","K"],	                            
                        ["RESMA","RESMA"],	                
                        ["ROLO","ROLO"],                       
                        ["SACO","SACO"],                       
                        ["SACOLA","SACOLA"],                   
                        ["TAMBOR",	"TAMBOR"],                  
                        ["TANQUE","TANQUE"],                   
                        ["TONELADA","TON"],	                        
                        ["TUBO","TUBO"],	                    
                        ["UNIDADE",	"UNID"],	                    
                        ["VASILHAME","VASIL"],	                    
                        ["VIDRO","VIDRO"]]	 

    def option_for_unidade (selected)
        options_for_select(UNIDADE_MEDIDA, selected)
    end   
    
    def option_for_unidade_find (selected)
        UNIDADE_MEDIDA.select{ |x| x[1] == selected }.first.first
    end 

    def avaria_boolean(boolean)
        boolean ? 'Sim' : 'Não'
    end
end
