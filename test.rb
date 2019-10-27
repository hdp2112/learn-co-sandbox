food = [
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"KALE"    => {:price => 3.00, :clearance => false}}
]

def convert_to_hash(array)
  hash = array.map { |key, value| [key, value]}.to_h
  hash.transform_values { |v| "#{v}!" }
end

p convert_to_hash(food)

{
  {"AVOCADO"=>{:price=>3.0, :clearance=>true}}=>nil, 
  {"KALE"=>{:price=>3.0, :clearance=>false}}=>nil
}