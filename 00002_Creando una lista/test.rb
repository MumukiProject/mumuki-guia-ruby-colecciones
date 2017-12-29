it "El primer juego de la la Biblioteca es el CarlosDuty" do
  Biblioteca.juegos.pop
  Biblioteca.juegos.pop
  expect(Biblioteca.juegos.pop).to be CarlosDuty
end

it "El segundo juego de la Biblioteca es TimbaElLeon"  do
  Biblioteca.juegos.pop
  expect(Biblioteca.juegos.pop.to be TimbaElLeon
end

it "El tercer juego de la Biblioteca es TimbaElLeon"  do
  expect(Biblioteca.juegos.pop).to be TimbaElLeon
end

it "La Biblioteca tiene únicamente esos tres juegos"  do
  expect(Biblioteca.juegos).to be [CarlosDuty, TimbaElLeon, TimbaElLeon]
end
