module Cog_help

using Discord



function help(c::Client, m::Message)

    local e = Embed(
        
        color = 0x551f57,
        title="Help Menu",
        description="Main commands",


        fields=[EmbedField(
                    name="info", value="returns info about the bot"),
                EmbedField(
                    name="ping", value="pings the bot"),
                EmbedField(
                    name="help", value="Show this Message"),
                ],

        thumbnail=EmbedThumbnail(
            url="https://cdn.discordapp.com/avatars/768993400120016938/f4a74d83f3a9aace00841bb0902faaa6.png?size=1024"),
        
        footer=EmbedFooter(
            text="type jlo help <command> for more info about the command")
    )
    
    reply(c, m, e)
end

@command(
    name=:help,
    handler=help,
    help="Show avilable commands",
)
end