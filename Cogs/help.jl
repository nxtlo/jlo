module Cog_help
println("Loading help...")

using Discord

function help(c::Client, m::Message)

    local e = Embed(
        
        color = 0x36393f,
        title="Help Menu",
        description="Main commands",


        fields=[EmbedField(
                    name="\U0001f587 info", value="returns info about the bot"),
                EmbedField(
                    name="\U0001f4e1 ping", value="pings the bot"),
                EmbedField(
                    name="\U0001f6e0 help", value="Show this Message"),
                EmbedField(
                    name="\U0001f4c1 repo", value="[Jlo's github repo](https://github.com/nxtlo/jlo)"),
                EmbedField(
                    name="\U0001f4e9 invite", value="[Invite Jlo to your server](https://discord.com/oauth2/authorize?client_id=768993400120016938&scope=bot&permissions=268823638)"),
                ],

        thumbnail=EmbedThumbnail(
            url="https://cdn.discordapp.com/avatars/768993400120016938/f4a74d83f3a9aace00841bb0902faaa6.png?size=1024"),
        
        footer=EmbedFooter(
            text="For more help please reach put to Fate 怒#5957")
    )
    
    reply(c, m, e)
end

@command(
    name=:help,
    handler=help,
    help="Show avilable commands",
)
end