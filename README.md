# Cyanide UI Library Documentation

## Overview

The **Cyanide UI Library** is a powerful tool for creating customizable user interfaces in your Roblox projects. It allows you to easily create windows, tabs, buttons, toggles, sliders, dropdowns, color pickers, labels, and warnings. 

## Getting Started

This Is A Documentation For A Beta Build Of Cyanide Interface

## Booting The Library

To Boot the library simply add

```lua
local CyanideInterfance = loadstring(game:HttpGet("https://raw.githubusercontent.com/ImNotACoderAi/Azuma/refs/heads/CyanideBranch/Main.lua",true))()
```

## Creating Elements

To create a new window using the Cyanide UI Library, you can use the `CreateWindow` method. Here’s how to set it up:

```lua
local Interface = Cyanide:CreateWindow({
	Name = "Cyanide UI Library",   -- The title of the window
	Bind = "RightControl",         -- The key to bind the window toggle
	NavigationPosition = "Right",  -- Position of the navigation (Left or Right)
	DiscordLink = "https://discord.gg/ReSXkjdjQR",  -- Link to the Discord server
	YoutubeLink = "Not Set"        -- Link to the YouTube channel (optional)
})
```

## Creating Tabs

Once you have your interface set up, you can create tabs within your window. Use the `CreateTab` method as follows:

```lua
local Tab = Interface:CreateTab({
	Name = "Example Tab"  -- The title of the tab
})
```

## Adding UI Elements

The following UI elements can be added to your tabs:

### Button

To add a button that executes a callback function when pressed, use `AddButton`:

```lua
local Button = Tab:AddButton({
	Name = "Example Button",  -- The title of the button
	Callback = function()     -- The function to call on button press
		print("Example Button Pressed!")
	end,
})
```

### Toggle

A toggle switch can be added using `AddToggle`. It can be set to a default state (on/off):

```lua
local Toggle = Tab:AddToggle({
	Name = "Example Toggle",  -- The title of the toggle
	Default = false,         -- The default state (true for on, false for off)
	Callback = function(v)    -- The function to call on toggle change
		print("Example Toggle Pressed!", v)
	end,
})
```

### Slider

To create a slider for selecting a numeric value, use `AddSlider`:

```lua
local Slider = Tab:AddSlider({
	Name = "Example Slider",  -- The title of the slider
	Default = 50,            -- Default value for the slider
	Max = 100,               -- Maximum value
	Min = 0,                 -- Minimum value
	Callback = function(v)    -- The function to call on slider change
		print("Example Slider Dragged!", v)
	end,
})
```

### Dropdown

You can add a dropdown menu with selectable items using `AddDropdown`:

```lua
local Dropdown = Tab:AddDropdown({
	Name = "Example Dropdown",  -- The title of the dropdown
	Selectmode = true           -- Enables single selection mode
})

local DropdownItem = Dropdown:Add(1, "Title!", function()  -- Adding an item to the dropdown
	print("Example Dropdown Item Clicked!")
end)
```

### Color Picker

To allow users to select colors, use `AddColorPicker`:

```lua
local ColorPicker = Tab:AddColorPicker({
	Name = "Example Color Picker",         -- The title of the color picker
	DefaultColor = Color3.fromRGB(255, 255, 255),  -- Default color (white)
	DefaultDarkness = 1,                   -- Default darkness level
	Callback = function(v)                  -- The function to call on color change
		print("Example Color Picker Changed!", v)
	end,
})
```

### Label

To add a static label, use `AddLabel`:

```lua
local Label = Tab:AddLabel({
	Text = "Example Label"  -- The text to display
})
```

### Warning

To display a warning message, use `AddWarning`:

```lua
local Warning = Tab:AddWarning({
	Text = "Example Warning"  -- The text for the warning
})
```

## Initializing the Library

Finally, make sure to initialize the library to apply all the settings and elements you’ve created:

```lua
Cyanide:Initilalize()
```

## Complete Example

Here’s a complete example of how to use the Cyanide UI Library:

```lua
local Interface = Cyanide:CreateWindow({
	Name = "Cyanide UI Library",
	Bind = "RightControl",
	NavigationPosition = "Right",
	DiscordLink = "https://discord.gg/ReSXkjdjQR",
	YoutubeLink = "Not Set",
})

local Tab = Interface:CreateTab({
	Name = "Example Tab"
})

local Button = Tab:AddButton({
	Name = "Example Button",
	Callback = function()
		print("Example Button Pressed!")
	end,
})

local Toggle = Tab:AddToggle({
	Name = "Example Toggle",
	Default = false,
	Callback = function(v)
		print("Example Toggle Pressed!", v)
	end,
})

local Slider = Tab:AddSlider({
	Name = "Example Slider",
	Default = 50,
	Max = 100,
	Min = 0,
	Callback = function(v)
		print("Example Slider Dragged!", v)
	end,
})

local Dropdown = Tab:AddDropdown({
	Name = "Example Dropdown",
	Selectmode = true
})

local DropdownItem = Dropdown:Add(1, "Title!", function()
	print("Example Dropdown Item Clicked!")
end)

local ColorPicker = Tab:AddColorPicker({
	Name = "Example Color Picker",
	DefaultColor = Color3.fromRGB(255, 255, 255),
	DefaultDarkness = 1,
	Callback = function(v)
		print("Example Color Picker Changed!", v)
	end,
})

local Label = Tab:AddLabel({
	Text = "Example Label"
})

local Warning = Tab:AddWarning({
	Text = "Example Warning"
})

Cyanide:Initilalize()
```

## Conclusion

The **Cyanide UI Library** provides a simple and effective way to create user interfaces in Roblox. With the various components available, you can easily customize your UI to fit your needs. Happy coding!
