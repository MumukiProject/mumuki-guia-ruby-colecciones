it "la biblioteca debe contener al CarlosDuty"  do
  expect(biblioteca.juegos.include?(CarlosDuty)).to be true
end

it "la biblioteca debe contener al TimaElLeon"  do
  expect(biblioteca.juegos.include?(TimaElLeon)).to be true
end

it "la biblioteca NO debe contener al DevilMayLaugh"  do
  expect(biblioteca.juegos.include?(DevilMayLaugh)).to be false
end