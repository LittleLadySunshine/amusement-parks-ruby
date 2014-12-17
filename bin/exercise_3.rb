require 'yaml'
require 'pp'

parks = YAML.load(File.read('../data/amusement_parks.yml'))


#Exercise 3
result = {}
parks.each do |park|
  result["#{park[:city]} , #{park[:state]}"] ||= []
  result["#{park[:city]} , #{park[:state]}"] << park
end
pp result
