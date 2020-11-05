module Cog_video
println("Loading Meta...")
using Discord

const COLOR = 0x36393f

function repo_cmd(c::Client, m::Message)
    local e = Embed(
        color=COLOR,
        fields=[EmbedField(
            name="Jlo's repo", value="https://github.com/nxtlo/jlo")]
    )
    reply(c, m, e)
end


function invite_cmd(c::Client, m::Message)
    local e = Embed(
        color=COLOR,
        fields=[EmbedField(
            name="Invite link", value="https://discord.com/oauth2/authorize?client_id=768993400120016938&scope=bot&permissions=268823638")
        ]
    )
    reply(c, m, e)

end



function ping_cmd(c::Client, m::Message)

    local author = string(m.author)

    local embed = Embed(
    
        color=COLOR,
        description="Pong $(author)"
    )

    reply(c, m, embed)
end


@command(
    name=:ping,
    handler=ping_cmd,
    help="Pings the bot."
),


@command(
    name=:invite,
    handler=invite_cmd,
    help="Invite the bot"
),

@command(
    name=:repo,
    handler=repo_cmd,
    help="Jlo's github repo"
)
end