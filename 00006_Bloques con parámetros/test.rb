it "Si se evalúa jugar_TimbaElLeon con 10 horas, la dificultad es 35"  do
  jugar_TimbaElLeon.call(10)
  expect(TimbaElLeon.dificultad).to be 35
end