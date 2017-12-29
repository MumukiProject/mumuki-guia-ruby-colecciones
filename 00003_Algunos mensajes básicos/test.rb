it "Si se adquiere Metroide se agrega a los juegos y suma puntos"  do
  Biblioteca.adquirir_juego!(Metroide)
  expect(Biblioteca.juegos.include?(Metroide)).to be true
  expect(Biblioteca.puntos()).to eq 150
end

it "Si se borra CarlosDuty la biblioteca queda con dos juegos" do
  Biblioteca.borrar_juego!(CarlosDuty)
  expect(Biblioteca.juegos.include?(CarlosDuty)).to be false
  expect(Biblioteca.juegos.size()).to eq 2
  expect(Biblioteca.puntos()).to eq 0
end

it "La Biblioteca no es completa al iniciar" do
  expect(Biblioteca.completa?).to be false
end

it "Si se adquieren suficientes juegos la Biblioteca es completa" do
  Biblioteca.adquirir_juego!(Metroide)
  Biblioteca.adquirir_juego!(Metroide)
  Biblioteca.adquirir_juego!(Metroide)
  Biblioteca.adquirir_juego!(Metroide)
  Biblioteca.adquirir_juego!(Metroide)
  expect(Biblioteca.completa?).to be false
  Biblioteca.adquirir_juego!(Metroide)
  Biblioteca.adquirir_juego!(Metroide)
  expect(Biblioteca.completa?).to be true
end

it "CarlosDuty es recomendable si no está en la biblioteca" do
  expect(Biblioteca.juego_recomendable?(CarlosDuty)).to be false
  Biblioteca.borrar_juego(CarlosDuty)
  expect(Biblioteca.juego_recomendable?(CarlosDuty)).to be true
end

it "TimbaElLeon no es recomendable porque no es violento" do
  expect(Biblioteca.juego_recomendable?(TimbaElLeon)).to be false
end