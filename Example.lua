local Tone = loadstring(game:HttpGet("https://raw.githubusercontent.com/ImNotACoderAi/TONE/main/Main.lua",true))()

local Window = Tone:Window({
	Title = "Example Hub Baseplate",
	Discord = "Discord.gg/Invitelink",
	Youtube = "https://Youtube.com/Channelname"
})

local Tab = Window:Tab({
	Title = "Example Tab"
})

local Label = Tab:Label({
	Text = "Example Label"
})

local Warning = Tab:Warning({
	Text = "Example Warning"
})

local Button = Tab:Button({
	Title = "Example Button",
	Callback = function() 
		Tone:Notify({
			Title = "Example Notification",
			Description = "Cool Notification",
			Duration = 2
		})	
	end
})

local Bind = Tab:Bind({
	Title = "Example Button",
	DefaultBind = "F",
	Callback = function() 
		Tone:Notify({
			Title = "Example Notification",
			Description = "Cool Notification",
			Duration = 2
		})
	end
})

local Toggle = Tab:Toggle({
	Title = "Example Toggle",
	Callback = function(v)
		if v == true then
			Tone:Warn({
				Title = "Toggle On",
				Description = "Cool Warning",
				Duration = 2
			})
		else
			Tone:Warn({
				Title = "Toggle Off",
				Description = "Cool Warning",
				Duration = 2
			})
		end
	end
})

local Slider = Tab:Slider({
	Title = "Example Slider",
	Min = 0,
	Max = 1000,
	Default = 200,
	Callback = function(v)
		print(v)
	end
})

local Dropdown = Tab:Dropdown({
	Title = "Example Dropdown",
	Selectmode = true
})

local DropdownItem = Dropdown:Add(1, "Example Item", function(Title)
	Tone:Notify({
		Title = "Selected Something",
		Description = "You have selected" .. Title,
		Duration = 2
	})
end)
