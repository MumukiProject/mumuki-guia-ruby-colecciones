it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "Si se borra CarlosDuty la Juegoteca queda con dos juegos" do
  Juegoteca.borrar_juego!(CarlosDuty)
  expect(Juegoteca.juegos.include?(CarlosDuty)).to be false
  expect(Juegoteca.juegos.size()).to eq 2
  expect(Juegoteca.puntos()).to eq 0
  Juegoteca.juegos.push(CarlosDuty)
end

it "Si se adquiere otro juego se agrega a los juegos y suma puntos"  do
  Juegoteca.adquirir_juego!(OtroJuego)
  expect(Juegoteca.juegos.include?(OtroJuego)).to be true
  expect(Juegoteca.puntos()).to eq 150
end

it "La Juegoteca no es completa al iniciar" do
  expect(Juegoteca.completa?).to be false
end

it "Si se adquieren suficientes juegos la Juegoteca es completa" do
  Juegoteca.adquirir_juego!(OtroJuego)
  Juegoteca.adquirir_juego!(OtroJuego)
  Juegoteca.adquirir_juego!(OtroJuego)
  Juegoteca.adquirir_juego!(OtroJuego)
  Juegoteca.adquirir_juego!(OtroJuego)
  expect(Juegoteca.completa?).to be false
  Juegoteca.adquirir_juego!(OtroJuego)
  Juegoteca.adquirir_juego!(OtroJuego)
  expect(Juegoteca.completa?).to be true
  7.times { Juegoteca.juegos.delete(OtroJuego) }
end

it "CarlosDuty es recomendable si no está en la Juegoteca" do
  expect(Juegoteca.juego_recomendable?(CarlosDuty)).to be false
  Juegoteca.borrar_juego!(CarlosDuty)
  expect(Juegoteca.juego_recomendable?(CarlosDuty)).to be true
end

it "TimbaElLeon no es recomendable porque no es violento aunque no esté en la Juegoteca" do
  Juegoteca.borrar_juego!(TimbaElLeon)
  expect(Juegoteca.juego_recomendable?(TimbaElLeon)).to be false
end