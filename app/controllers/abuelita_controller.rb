class AbuelitaController < ApplicationController
  def abuelita
  	p "x" * 50
  	p abuelita = params[:input]
  	@abuelita = response_abue(abuelita)
    render 'welcome/index'
  end

  private

  def response_abue(user_input)
  	# Iniciamos la condición para cuando le hablemos quedito (minúsculas), ya que no nos va a escuchar bien.
    if user_input == user_input.downcase
      abuelita = "HUH?! NO TE ESCUCHO, HIJO!"
    # Continuamos nuestra condición para cuando le hablemos fuerte (mayúsculas), y mientras lo que le digamos sea diferente a la despedida, la abuelita responderá:  
    elsif user_input == user_input.upcase && user_input != "BYE TQM"
      abuelita = "NO, NO DESDE 1983"
    # De no ser así; cuando nos despidamos, la abuelita preguntará "Que dijiste?", hasta que se lo digamos tres veces.
    else 
      abuelita = "Adiós hijo" 
    end


  end
end