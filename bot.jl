println("Running now...")

using Discord
using JSON



config = JSON.parse(open(file -> read(file, String), "./config.json"))

LoadCogs = filter(cmd -> endswith(cmd, ".jl"), readdir("./Cogs")) 

for Cog in LoadCogs
    include("./Cogs/$Cog")
end


#Reading config.json

config = JSON.parse(open(file -> read(file, String), "./config.json"))
println("Compiling...")

    # Loading the token and prefix from config.json

const c = Client(
    config["Token"],
    prefix=config["Prefix"]; 
    presence=(game=(name="\U0001f49c", type=AT_GAME),
    ))


function handler(c::Client, m::MessageCreate)
    println("$(m.message.author) sent $(m.message.content)")
end


add_handler!(c, MessageCreate, handler)
add_help!(c)


Cogs = filter(m -> startswith(string(m), "Cog"), names(Main))

for cog in Cogs 
    add_command!(c, eval(cog)) 
end

open(c)
wait(c)