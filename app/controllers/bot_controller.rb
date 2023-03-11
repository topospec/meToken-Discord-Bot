require 'discordrb'

class BotController < ApplicationController

    def send_message
        puts 'Sending message to group...'

        # Embed code for DiscordRB Gem.
        # FIXME: Variables must be added and URL Changed
        embed = Discordrb::Webhooks::Embed.new(
            title: "meToken $TOPO",
            description: "meToken $TOPO has been created :)",
            color: 0x00FFFF,
            url: "https://google.com",
            fields: [
              Discordrb::Webhooks::EmbedField.new(name: "Issuer", value: "AAA", inline: true),
              Discordrb::Webhooks::EmbedField.new(name: "Initial Supply", value: "BBB", inline: true),
              Discordrb::Webhooks::EmbedField.new(name: "Block Explorer", value: "CCC"),
              Discordrb::Webhooks::EmbedField.new(name: "\u200B", value: "Built by MrTopo")
            ]
          )

        # FIXME: Replace Channel ID for the channel on .env file
        channel = Bot.channel('<your channel id here>')
        channel.send_message("", false, embed)

        render json: 'Done', status: :ok
    end

    def read
        # FIXME: Just reading params
        puts params
        render json: 'Received!', status: :ok
    end
end
