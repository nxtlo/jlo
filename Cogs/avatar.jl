module Cog_avatar


using Discord

function avatar_cmd(c::Client, m::Message)
    local avatar = string(user.avatar)
    local e = Embed(

        title=string(mem.username),
        
        image=EmbedImage(
            url=avatar
        )
    )
    reply(c, m, e)
end

@command(
    name=:avatar,
    handler=avatar_cmd,
    help="Show member's avatar"
)
end