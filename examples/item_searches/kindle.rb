require File.expand_path('../../helper.rb', __FILE__)

req = AmazonProduct['us']

req.configure do |c|
  c.key    = YOUR_AMAZON_KEY
  c.secret = YOUR_AMAZON_SECRET
  c.tag    = YOUR_AMAZON_ASSOCIATE_TAG
end

# One interesting note: Kind books do not return an offers response group.
# Currently, there is no way to query Amazon's sale price other than scraping
# their website.

# An alternative way to search for Kindle books:
# req.search('Books', :power => 'deleuze binding:kindle')

req.search('KindleStore', 'deleuze')

binding.pry
