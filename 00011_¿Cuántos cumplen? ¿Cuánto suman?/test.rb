it "Los juegos de la Biblioteca son CarlosDuty y dos copias de TimbaElLeon"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, TimbaElLeon]
end

it "El promedio de violencia es 30"  do
  expect(Biblioteca.promedio_de_violencia).to eq 30
end

it "El promedio de violencia es 65 si agrego Metroide, juego violento de dificultad 100"  do
  Biblioteca.juegos.push(Metroide)
  expect(Biblioteca.promedio_de_violencia).to eq 65
end