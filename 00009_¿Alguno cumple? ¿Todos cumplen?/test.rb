it "Los juegos de la Biblioteca son CarlosDuty y dos copias de TimbaElLeon"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, TimbaElLeon]
end

it "En la Biblioteca no hay mucha violencia porque TimbaElLeon no es violento"  do
  expect(Biblioteca.mucha_violencia?).to be false
end

it "La Biblioteca es muy difícil porque CarlosDuty tiene más de 25 puntos de dificultad"  do
  expect(Biblioteca.muy_dificil?).to eq true
end