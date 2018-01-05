it "Si se evalúa jugar_a_timba con 10 horas, la dificultad es 35"  do
  jugar_a_timba.call(10)
  expect(TimbaElLeon.dificultad).to be 35
end