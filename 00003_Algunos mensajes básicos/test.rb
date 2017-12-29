it "Si se adquiere Metroide se agrega a los juegos y suma puntos"  do
  biblioteca.adquirir_juego!(Metroide)
  expect(biblioteca.juegos.include?(Metroide)).to be true
  expect(biblioteca.puntos()).to eq 150
end

it "Si se borra CarlosDuty la biblioteca queda con dos juegos" do
  biblioteca.borrarJuego(CarlosDuty)
  expect(biblioteca.juegos.include?(CarlosDuty)).to be false
  expect( biblioteca.juegos.size()).to eq 2
  expect( biblioteca.puntos()).to eq 0
end

it "La Biblioteca no es completa al iniciar" do
  expect(biblioteca.completa?).to be false
end

it "Si se adquieren suficientes juegos la Biblioteca es completa" do
  biblioteca.adquirir_juego!(Metroide)
  biblioteca.adquirir_juego!(Metroide.new)
  biblioteca.adquirir_juego!(Metroide.new)
  biblioteca.adquirir_juego!(Metroide.new)
  biblioteca.adquirir_juego!(Metroide.new)
  expect(biblioteca.completa?).to be false
  biblioteca.adquirir_juego!(Metroide.new)
  biblioteca.adquirir_juego!(Metroide.new)
  expect(biblioteca.completa?).to be true
end

it "CarlosDuty es recomendable si no está en la biblioteca" do
  expect(biblioteca.esJuegoRecomendable(CarlosDuty)).to be false
  biblioteca.borrarJuego(CarlosDuty)
  expect(biblioteca.esJuegoRecomendable(CarlosDuty)).to be true
end

it "TimbaElLeon no es recomendable porque no es violento" do
  expect(biblioteca.esJuegoRecomendable(TimbaElLeon)).to be false
end