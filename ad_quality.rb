require 'net/http'
require 'json'

class Ads
	attr_accessor :response
	def initialize()
		uri = URI('http://seamlessmedia-dev-1040005613.us-east-1.elb.amazonaws.com/api/ads')
		self.response = Net::HTTP.get(uri)
	end
end




ads = Ads.new

ads_hash = JSON.parse(ads.response)

ads_array =  ads_hash['adMetaDatas']

length =  ads_array.length



puts ads_array[length-1]
