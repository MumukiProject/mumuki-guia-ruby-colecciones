it "CarlosDuty solo debe tener el atributo @cantidad_logros" do
    expect(CarlosDuty.instance_variables.size).to eq 1
    expect(CarlosDuty.instance_variables.include? :@cantidad_logros).to be true
end

it "TimbaElLeon solo debe tener el atributo @dificultad" do
    expect(TimbaElLeon.instance_variables.size).to eq 1
    expect(TimbaElLeon.instance_variables.include? :@dificultad).to be true
end

it "Metroide solo debe tener el atributo @nivel_espacial" do
    expect(Metroide.instance_variables.size).to eq 1
    expect(Metroide.instance_variables.include? :@nivel_espacial).to be true
end

it "CarlosDuty es interesante"  do
  expect(CarlosDuty.interesante?).to be true
end

it "TimbaElLeon no es interesante"  do
  expect(TimbaElLeon.interesante?).to be false
end

it "Metroide inicialmente no es interesante"  do
  expect(Metroide.interesante?).to be false
end

it "Metroide se vuelve interesante si se juega muchas veces"  do
  5.times { Metroide.jugar!(10) }
  expect(Metroide.interesante?).to be true
end

it "La dificultad inicial del CarlosDuty es 30"  do
  expect(CarlosDuty.dificultad).to eq 30
end

it "CarlosDuty no tiene logros al empezar"  do
  expect(CarlosDuty.cantidad_logros).to eq 0
end

it "Si se juega dos veces al CarlosDuty por menos de dos horas su dificultad sigue siendo 30"  do
  CarlosDuty.jugar!(1)
  CarlosDuty.jugar!(1)
  expect(CarlosDuty.dificultad).to eq 30
end

it "Si se juega dos veces al CarlosDuty más de dos horas seguidas, su dificultad es 29"  do
  CarlosDuty.jugar!(5)
  CarlosDuty.jugar!(7)
  expect(CarlosDuty.dificultad).to eq 29
end

it "La dificultad inicial de TimbaElLeon es 25" do
  expect(TimbaElLeon.dificultad).to eq 25
end

it "La dificultad de TimbaElLeon aumenta en 20 puntos si se juega 20 horas"  do
  TimbaElLeon.reiniciar_dificultad
  TimbaElLeon.jugar!(20)
  expect(TimbaElLeon.dificultad).to eq 45
end

it "La dificultad de Metroide es siempre 100" do
  expect(Metroide.dificultad).to eq 100
  Metroide.jugar!(20)
  Metroide.jugar!(10)
  expect(Metroide.dificultad).to eq 100
end


it "Si se juega Metroide por 10 horas su nivel_espacial aumenta en 1" do
  Metroide.reiniciar_nive_espacial
  Metroide.jugar!(10)
  expect(Metroide.nivel_espacial).to eq 4
end

it "Si se juega Metroide por 2 horas su nivel_espacial aumenta en 1" do
  Metroide.reiniciar_nive_espacial
  Metroide.jugar!(2)
  expect(Metroide.nivel_espacial).to eq 4
end

it "Si se juega Metroide por 5 horas y luego de nuevo se juega por 2 horas nivel_espacial aumenta en 2" do
  Metroide.reiniciar_nive_espacial
  Metroide.jugar!(5)
  Metroide.jugar!(2)
  expect(Metroide.nivel_espacial).to eq 5
end