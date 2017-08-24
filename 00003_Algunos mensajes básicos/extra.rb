module CarlosDuty
  def violento?
      true
  end
  def tiempo_restante{
      30 - cantidadDeLogros * 0.5
  end
  def jugar!(tiempo)
      if(tiempo > 2)
          cantidadDeLogros += 1
      end
  end
end

module TimaElLeon
  @tiempoRestante = 50
  
  def violento?
      false
  end
  def tiempo_restante{
      @tiempoRestante
  end
  def jugar!(tiempo)
      @tiempoRestante -= tiempo
  end
end

module DevilMayLaugh
  @nivelDeSangre = 3

  def violento?
      nivelDeSangre > 5
  end
  def tiempo_restante{
      100
  end
  def jugar!(tiempo)
      # no pasa naranja
  end
  def nivelDeSangre(nivel)
    @nivelDeSangre = nivel
  end
end

class JuegoGenerico
  def violento? 
    true
  end
  def tiempo_restante 
    100
  end
  def jugar! 
  end
end