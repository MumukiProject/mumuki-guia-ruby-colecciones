it "Si se adquiere Metroide se agrega a los juegos y suma puntos"  do
  biblioteca.adquirir_juego!(Metroide)
  expect(biblioteca.juegos.include?(Metroide)).to be true
  expect(biblioteca.puntos()).to eq 150
end

it "si se borra TimbaElLeon la biblioteca queda con un solo juego" do
  biblioteca.borrarJuego(TimaElLeon)
  expect(biblioteca.juegos.include?(TimaElLeon)).to be false
  expect( biblioteca.juegos.size()).to eq 1
  expect( biblioteca.puntos()).to eq 0
end

it "inicialmente la biblioteca no es de gamer" do
  expect(biblioteca.esDeGamer()).to be false
end

it "si se adquieren suficientes juegos la biblioteca es de gamer" do
  biblioteca.adquirir_juego!(DevilMayLaugh)
  biblioteca.adquirir_juego!(JuegoGenerico.new)
  biblioteca.adquirir_juego!(JuegoGenerico.new)
  biblioteca.adquirir_juego!(JuegoGenerico.new)
  biblioteca.adquirir_juego!(JuegoGenerico.new)
  expect(biblioteca.esDeGamer()).to be false
  biblioteca.adquirir_juego!(JuegoGenerico.new)
  biblioteca.adquirir_juego!(JuegoGenerico.new)
  expect(biblioteca.esDeGamer()).to be true
end

it "CarlosDuty es recomendable si no esta en la biblioteca" do
  expect(biblioteca.esJuegoRecomendable(CarlosDuty)).to be false
  biblioteca.borrarJuego(CarlosDuty)
  expect(biblioteca.esJuegoRecomendable(CarlosDuty)).to be true
end

it "DevilMayLaugh no es recomendable porque no es violento" do
  expect(biblioteca.esJuegoRecomendable(DevilMayLaugh)).to be false
end