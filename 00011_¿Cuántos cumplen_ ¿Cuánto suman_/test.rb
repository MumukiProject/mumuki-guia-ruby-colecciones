it "Los juegos de la Juegoteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Juegoteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "El promedio de interés es 30"  do
  expect(Juegoteca.promedio_de_interes).to eq 30
end

it "El promedio de interés es 62.5 si agrego un juego interesante de dificultad 95"  do
  Juegoteca.juegos.push(JuegoViolento)
  expect(Juegoteca.promedio_de_interes).to eq 62.5
end