it "la biblioteca debe contener al CarlosDuty"  do
  expect(Biblioteca.juegos.include?(CarlosDuty)).to be true
end

it "la biblioteca debe contener al TimaElLeon"  do
  expect(Biblioteca.juegos.include?(TimaElLeon)).to be true
end

it "la biblioteca NO debe contener al DevilMayLaugh"  do
  expect(Biblioteca.juegos.include?(DevilMayLaugh)).to be false
end