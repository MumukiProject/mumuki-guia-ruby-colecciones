it "Los juegos de la Biblioteca son CarlosDuty y dos copias de TimbaElLeon"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, TimbaElLeon]
end

it "Jugar a todo baja un punto la dificultad a CarlosDuty y sube en 5 la de TimbaElLeon"  do
  Biblioteca.jugar_a_todo!
  expect(CarlosDuty.dificultad).to eq 29.5
  expect(TimbaElLeon.dificultad). to eq 30
end