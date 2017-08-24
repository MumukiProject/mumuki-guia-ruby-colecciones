it "CarlosDuty es violento"  do
  expect(CarlosDuty.violento?).to be true
end

it "TimaElLeon no es violento"  do
  expect(!TimaElLeon.violento?).to be true
end

it "DevilMayLaugh por defecto NO es violento"  do
  expect(!DevilMayLaugh.violento?).to be true
end

it "DevilMayLaugh se vuelve violento si se juega muchas veces"  do
  5.times { DevilMayLaugh.jugar!(10) end
  expect(DevilMayLaugh.violento?).to be true
end

it "inicialmente el tiempo del CarlosDuty es 30"  do
  expect( CarlosDuty.tiempo_restante).to eq 30
end

it "si se juega al CarlosDuty por 7 horas en dos tramos distintos, su tiempo restante es 29"  do
  CarlosDuty.jugar!(7)
  CarlosDuty.jugar!(7)
  expect( CarlosDuty.tiempo_restante).to eq 29
end

it "si se juega al CarlosDuty por dos periodos de una hora su tiempo restante sigue siendo 30"  do
  CarlosDuty.jugar!(1)
  CarlosDuty.jugar!(1)
  expect( CarlosDuty.tiempo_restante).to eq 30
end

it "tiempo restante al jugar! TimaElLeon"  do
  expect( TimaElLeon.tiempo_restante).to eq 50
  TimaElLeon.jugar!(20)
  expect( TimaElLeon.tiempo_restante).to eq 30
end

it "inicialmente el tiempo restante del DevilMayLaugh es 100" do
  expect( DevilMayLaugh.tiempo_restante).to eq 100
  
end

it "si se juega dos veces al DevilMayLaugh, su tiempo restante sigue siendo 100"  do
  TimaElLeon.jugar!(20)
  TimaElLeon.jugar!(10)
  expect( DevilMayLaugh.tiempo_restante).to eq 100
end

