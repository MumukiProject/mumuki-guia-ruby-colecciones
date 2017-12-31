it "Los juegos de la Biblioteca son CarlosDuty y dos copias de TimbaElLeon"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, TimbaElLeon]
end

it "CarlosDuty es el único juego violento"  do
  expect(Biblioteca.juegos_violentos).to be [CarlosDuty]
end