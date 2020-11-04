module Cog_Ping

using Colors
using Discord


function ping_cmd(c::Client, m::Message)

    local author = string(m.author)


    local embed = Embed(

        color=0x551f57,
        description="Pong $(author)"
    )

    reply(c, m, embed)
end


@command(
    name=:ping,
    handler=ping_cmd,
    help="Pings the bot.",
)
end