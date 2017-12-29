module TimbaElLeon
  @dificultad = 25

  def self.jugar!(un_tiempo)
    @dificultad += un_tiempo
  end
  
  def self.dificultad
    @dificultad
  end
end