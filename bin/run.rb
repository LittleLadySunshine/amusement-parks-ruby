require 'yaml'
require 'pp'

parks = YAML.load(File.read('../data/amusement_parks.yml'))



result = {}
parks.each do |park|
  result[park[:id]] ||= []
  result[park[:id]] << park
end
pp result


result = {}
parks.each do |park|
  result["#{park[:city]} , #{park[:state]}"] ||= []
  result["#{park[:city]} , #{park[:state]}"] << park
end
pp result
