require 'yaml'
require 'pp'

parks = YAML.load(File.read('../data/amusement_parks.yml'))


#Exercise 2

result = {}
parks.each do |park|
  result[park[:country]] ||= []
  result[park[:country]] << park
end
pp result
