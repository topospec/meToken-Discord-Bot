require 'discordrb'

# rubocop:disable Style/NumericLiterals
# ChannelID = <your channel ID here>

Bot = Discordrb::Commands::CommandBot.new(
  token: '<your token here>',
  client_id: '<your client ID here>',
  prefix: '!'
)
Dir["#{Rails.root}/app/commands/*.rb"].each { |file| require file }
Bot.run(true)

# Print out the bot join channel link
puts "Invite URL: #{Bot.invite_url}"