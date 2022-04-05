it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "CarlosDuty es el único juego interesante"  do
  expect(Juegoteca.juegos_interesantes).to eq [CarlosDuty]
end