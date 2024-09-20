local Tone = loadstring(game:HttpGet("https://raw.githubusercontent.com/ImNotACoderAi/TONE/main/Main.lua",true))()

-- Declarations
local localplr = game.Players.LocalPlayer
local camera = game:Getservice("Workspace").CurrentCamera
local Settings

Settings = {
    EspToggle = false
}, Settings or {}

local Window = Tone:Window({
	Title = "Example Hub Baseplate",
	Discord = "Discord.gg/Invitelink",
	Youtube = "https://Youtube.com/Channelname"
})

local Main = Window:Tab({
	Title = "Main"
})

local Essenstials = Main:Label({
	Text = "Essenstials"
})

local Visuals = Main:Label({
    Text = "Visuals"
})

local Esp = Main:Toggle({
    Title = "Esp",
    State = false,
    Callback = function(v)
        Settings.EspToggle = v
    end
})

local function Esp
    if Settings.EspToggle then
        
    end
end
