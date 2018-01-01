module CarlosDuty
  @cantidad_logros = 0
  @dificultad = 30
  def self.violento?
    true
  end
  
  def self.jugar!(un_tiempo)
    if un_tiempo > 2
      @cantidad_logros += 1
    end
  end

  def self.dificultad
    30 - @cantidad_logros * 0.5
  end
  
end

module TimbaElLeon
  @dificultad = 25
  def self.violento?
    false
  end
  
  def self.jugar!(un_tiempo)
    @dificultad += un_tiempo
  end
  
  def self.dificultad
    @dificultad
  end

end