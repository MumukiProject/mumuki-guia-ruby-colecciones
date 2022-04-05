it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "La dificultad interesante del único juego intresante es 30"  do
  expect(Juegoteca.dificultad_interesante).to eq [30]
end

it "Si CarlosDuty no estuviera en la Juegoteca no habría dificultad interesante"  do
  Juegoteca.juegos.shift
  expect(Juegoteca.dificultad_interesante).to eq []
end