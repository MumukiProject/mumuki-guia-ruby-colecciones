it "Los juegos de la Biblioteca son CarlosDuty y dos copias de TimbaElLeon"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, TimbaElLeon]
end

it "Jugar a todo le da un logro a CarlosDuty y sube en 5 puntos la dificultad de TimbaElLeon"  do
  Biblioteca.jugar_a_todo!
  expect(CarlosDuty.dificultad).to eq 29
  expect(TimbaElLeon.dificultad). to eq 25
end