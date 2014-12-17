require 'yaml'
require 'pp'

parks = YAML.load(File.read('../data/amusement_parks.yml'))


#Exercise 1
result = {}
parks.each do |park|
  result[park[:id]] ||= []
  result[park[:id]] << park
end
pp result
