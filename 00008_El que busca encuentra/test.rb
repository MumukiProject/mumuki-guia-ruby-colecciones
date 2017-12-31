it "CarlosDuty es más difícil que 10"  do
  expect(Biblioteca.juego_mas_dificil_que(10)).to eq CarlosDuty
end

it "Ningún juego es más difícil que 50"  do
  expect(Biblioteca.juego_mas_dificil_que(50)).to eq nil
end