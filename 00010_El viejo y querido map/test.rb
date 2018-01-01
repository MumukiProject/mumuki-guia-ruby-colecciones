it "Los juegos de la Biblioteca son CarlosDuty, TimbaElLeon y Metroide"  do
  expect(Biblioteca.juegos).to eq [CarlosDuty, TimbaElLeon, Metroide]
end

it "La dificultad violenta de los juegos violentos es 30 y 100"  do
  expect(Biblioteca.dificultad_violenta).to eq [30, 100]
end

it "Si CarlosDuty no estuviera en la Biblioteca sólo queda la dificultad violenta de Metroide"  do
  Biblioteca.juegos.shift
  expect(Biblioteca.dificultad_violenta).to eq [100]
end