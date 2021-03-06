require 'twilio-ruby'

# Initialize the client
# To set up environmental variables, see http://twil.io/secure
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
client = Twilio::REST::Client.new(account_sid, auth_token)

# Retreive the service
service = client.sync.v1.services('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')

# Create a Sync List Item
response = service.sync_lists('MyCollection').sync_list_items(1).update(
  data: "{ 'number': '001', 'name': 'Bulbasaur', 'attack':'185'}"
)

puts response
