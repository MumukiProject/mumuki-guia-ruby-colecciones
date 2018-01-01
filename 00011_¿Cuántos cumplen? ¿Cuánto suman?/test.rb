it "Los juegos de la Biblioteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "El promedio de violencia es 30"  do
  expect(Biblioteca.promedio_de_violencia).to eq 30
end

it "El promedio de violencia es 65 si agrego un juego violento de dificultad 100"  do
  Biblioteca.juegos.push(JuegoViolento)
  expect(Biblioteca.promedio_de_violencia).to eq 65
end