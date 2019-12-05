def map(array)
  new = []
  counter = 0
  while counter < array.length do
    new.push(yield(array[counter]))
    counter += 1
  end
  new
end

def reduce(array, sv = nil)
  if sv 
    num1 = sv
    counter = 0
  else
    num1 = array[0]
    counter = 1
  end
  
  while counter <array.length do
    yield(num1, array[counter])
end
