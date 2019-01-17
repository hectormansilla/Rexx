/* REXX     */                                              
do while opcion_menu \= 'S'                                 
  say                                                       
  say 'Selecciona la rutina a ejecutar, ingresando su ID:'  
  say '--------------------------------------------------'  
  say ' Mostrar Fecha y Hora = F'                           
  say ' Mostrar Hola Mundo = H'                             
  say ' Elegir y mostrar numero aleatorio = N'              
  say ' Salir = S'                                          
  say '--------------------------------------------------'  
  say 'Ingrese su opcion => '                               
  pull opcion_menu .                                        
  select                                                    
    when opcion_menu = 'F' then                             
      call rutina_fecha_hora                                
    when opcion_menu = 'H' then                             
      call rutina_hola_mundo                                
    when opcion_menu = 'N' then                             
      call rutina_numero_aleatorio                          
    when opcion_menu = 'S' then do                          
      say                                                   
      say 'Adios!'                                          
    end                                                     
    otherwise                                               
      say                                                      
      say 'Por favor, ingrese una opcion valida:' opcion_menu  
      say 'Presione <ENTER> para ingresar su opcion.'          
      pull .                                                   
    end                                                        
end                                                            
exit 0                                                         
/* inicio de rutinas */                                        
rutina_fecha_hora: procedure                                   
  say 'Hoy es: ' Date() ' y la Hora es: ' Time()               
  return 0                                                     
rutina_hola_mundo: procedure                                   
  say 'Hola Mundo'                                             
  return 0                                                     
rutina_numero_aleatorio: procedure                             
  aleatorio = random(1,10)                                     
  say 'El numero aleatorio del 1 al 10 elegido es: ' aleatorio 
  if aleatorio = 9 then                                        
    say "Curiosamente el 9 es el numero favorito de Hector"    
  return 0
