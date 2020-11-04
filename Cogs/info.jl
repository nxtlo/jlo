module Cog_info

using Discord

const COLOR = 0x551f57

function info_cmd(c::Client, m::Message)

    local title = "Info about Jlo >.<"
    local disc = "Hello i'm Jlo, I'm a discord bot made with **Julia**" *
                 " I'm an open source you can check me out in [here!](https://github.com/nxtlo)\n\n**Julia version** `$(VERSION)`\n**Discord.jl version** `0.1.0`\n**Developer** <@350750086357057537>"
    local pic = "https://cdn.discordapp.com/avatars/768993400120016938/f4a74d83f3a9aace00841bb0902faaa6.png?size=1024"

    local embed = Embed(
        color=COLOR,
        title=title,
        description=disc,

        
        footer=EmbedFooter(
            text="Made with 💜 using Discord.jl!",
            icon_url="https://posts.xh4h.com/Discord.jl/dev/assets/logo.png"
            ),
        
        thumbnail=EmbedThumbnail(
            url=pic
            )
)
    reply(c, m, embed)
end

@command(
    name=:info,
    handler=info_cmd,
    help="Info about julia"
)    
end