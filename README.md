# Azuma UI Library
This documentation is for the stable release of Tone UI Library. "A better Delmo"

## Booting the Library
```lua
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ImNotACoderAi/Azuma/refs/heads/AzumaBranch/Main.lua",true))()
```

# IMPORTANT

- The name of the libary while declaring it cannot be "Tone" Or else you wont be able to use the library

## Creating a Window
```lua
local Window = Azuma:Window({
    Title = "Title of the library",
    Bind = "RightShift",
    NavigationPosition = "Right",
    DiscordLink = "Discord.gg/YourInviteLink",
    YoutubeLink = "https://Youtube.com/YourChannel"
})

--[[
Title = <string> - The name of the UI.
DiscordLink = <string> - The Bind to close and open the UI.
NavigationPosition = <string> - The position of the Navigation for now only takes Top, And Right.
DiscordLink = <string> - The Discord invite link to be displayed.
YoutubeLink = <string> - The YouTube channel link to be displayed.
]]
```

## Creating a Tab
```lua
local Tab = Window:Tab({
    Title = "Tab 1"
})

--[[
Title = <string> - The name of the tab.
]]
```

## Creating a Label
```lua
local Label = Tab:Label({
    Text = "This is a label"
})

--[[
Text = <string> - The text of the label.
]]
```

### Changing the value of an existing label
```lua
Label:Set("New Label Text")
```

## Creating a Warning
```lua
local Warning = Tab:Warning({
    Text = "This is a warning message"
})

--[[
Text = <string> - The text of the warning.
]]
```

## Creating a Button
```lua
Tab:Button({
    Title = "Button!",
    Callback = function()
        print("button pressed")
    end    
})

--[[
Title = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
```

## Creating a Toggle
```lua
local Toggle = Tab:Toggle({
    Title = "This is a toggle!",
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Title = <string> - The name of the toggle.
Callback = <function> - The function of the toggle.
]]
```

## Creating a Slider
```lua
local Slider = Tab:Slider({
    Title = "Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Title = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maximum value of the slider.
Default = <number> - The default value of the slider.
Callback = <function> - The function of the slider.
]]
```

## Creating a Bind
```lua
local Bind = Tab:Bind({
    Title = "Keybind",
    DefaultBind = "F",
    Callback = function()
        print("Keybind Activated")
    end    
})

--[[
Title = <string> - The name of the bind.
DefaultBind = <string> - The default key for the bind.
Callback = <function> - The function of the bind.
]]
```

## Creating a Dropdown menu
```lua
local Dropdown = Tab:Dropdown({
    Title = "Dropdown",
    Selectmode = true
})

--[[
Title = <string> - The name of the dropdown.
Selectmode = <bool> - Whether multiple options can be selected.
]]
```

### Adding options to a Dropdown
```lua
Dropdown:Add(1, "Option 1", function(Selected)
    print("Selected:", Selected)
end)

--[[
id = <number> - The id of the option.
title = <string> - The name of the option.
callback = <function> - The function called when the option is selected.
]]
```

## Creating a Color Picker
```lua
local ColorPicker = Tab:ColorPicker({
    Title = "Color Picker",
    DefaultColor = Color3.fromRGB(255, 255, 255)
    DefaultDarkness = 0
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Title = <string> - The name of the Color Picker.
DefaultColor = Color3.fromRGB(<number>) - The default Color of the Color Picker.
DefaultDarkness = 0/100 - The default Color of the Color Picker.
Callback = <function> - The function of the Color Picker.
]]
```

## Creating a Text Box
```lua
local TextBox = Tab:TextBox({
    Title = "Text Box",
    Callback = function(Text)
        print(Text)
    end    
})

--[[
Title = <string> - The name of the Color Picker.
Callback = <function> - The function of the Color Picker.
]]
```

## Notifying the user
```lua
Azuma:Notify({
    Title = "Notification Title",
    Description = "This is a notification",
    Duration = 5
})

--[[
Title = <string> - The title of the notification.
Description = <string> - The content of the notification.
Duration = <number> - The duration of the notification in seconds.
]]
```
