# Cyanide Library Documentation

Welcome to the **Cyanide Library** documentation. This guide provides a comprehensive overview of how to use the Cyanide Library effectively, covering everything from booting the library to creating various UI components.

## Booting the Library

To start using the Cyanide Library, you need to load it using the following Lua code:

```lua
local CyanideInterface = loadstring(game:HttpGet('https://raw.githubusercontent.com/ImNotACoderAi/Azuma/refs/heads/CyanideBranch/Main.lua'))()
```

## Creating a Window

To create a main window for your UI, use the `MakeWindow` function as follows:

```lua
local Window = CyanideInterface:MakeWindow({
    Name = "Title of the Library"
})

--[[
Name = <string> - The name of the UI window.
]]
```

## Creating a Tab

Add a new tab to your window with the `MakeTab` function:

```lua
local Tab = Window:MakeTab({
    Name = "Tab 1"
})

--[[
Name = <string> - The name of the tab.
]]
```

## Creating a Section

Sections help organize your tabs. You can create one using:

```lua
local Section = Tab:AddSection({
    Name = "Section"
})

--[[
Name = <string> - The name of the section.
]]
```

You can add elements to sections in the same manner as you would add them to a tab.

## Notifying the User

To notify users, use the `MakeNotification` function:

```lua
CyanideInterface:MakeNotification({
    Name = "Title!",
    Content = "Notification content... what will it say?",
    Image = "rbxassetid://4483345998",
    Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notification (in seconds).
]]
```

## Creating a Button

To create a button, use the following code:

```lua
Tab:AddButton({
    Name = "Button!",
    Callback = function()
        print("Button pressed")
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function executed when the button is pressed.
]]
```

## Creating a Checkbox Toggle

Checkboxes can be created as follows:

```lua
Tab:AddToggle({
    Name = "This is a toggle!",
    State = false,
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the toggle.
State = <bool> - The initial state of the toggle (true/false).
Callback = <function> - The function executed when the toggle is activated/deactivated.
]]
```

## Creating a Color Picker

To allow users to select colors, implement a color picker:

```lua
Tab:AddColorpicker({
    Name = "Colorpicker",
    DefaultColor = Color3.fromRGB(255, 0, 0),
    DefaultDarkness = 0,
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the color picker.
DefaultColor = <Color3> - The default color selected in the color picker.
DefaultDarkness = <number> - The default darkness level (0-10).
Callback = <function> - The function executed when a color is selected.
]]
```

## Creating a Slider

To create a slider for numeric input, use:

```lua
Tab:AddSlider({
    Name = "Slider",
    Min = 0,
    Max = 20,
    Default = 5,
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimum value of the slider.
Max = <number> - The maximum value of the slider.
Default = <number> - The default value of the slider.
Callback = <function> - The function executed when the slider value changes.
]]
```

## Creating a Label

For static text, add a label with:

```lua
Tab:AddLabel("Label")
```

## Creating a Warning

To display a warning message, you can also use a label:

```lua
Tab:AddLabel("Warning: This is a warning message.")
```

## Creating an Input Box

To allow user text input, implement a textbox:

```lua
Tab:AddTextBox({
    Name = "Textbox",
    Default = "default box input",
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default text displayed in the textbox.
Callback = <function> - The function executed when the textbox value changes.
]]
```

## Creating a Keybind

To create a keybind for specific actions, use:

```lua
Tab:AddBind({
    Name = "Bind",
    Default = "E",
    Callback = function()
        print("Key pressed")
    end    
})

--[[
Name = <string> - The name of the keybind.
Default = <string> - The default key assigned to the bind.
Callback = <function> - The function executed when the key is pressed.
]]
```

## Creating a Dropdown Menu

For a dropdown selection menu:

```lua
Tab:AddDropdown({
    Name = "Dropdown",
    SelectMode = false  
})

--[[
Name = <string> - The name of the dropdown.
SelectMode = <boolean> - If true, allows multiple selections.
]]
```

### Adding New Dropdown Options

To add new buttons to an existing dropdown menu:

```lua
Dropdown:Refresh(<table>)
```

## Finishing Your Script (REQUIRED)

At the end of your script, ensure to initialize the library:

```lua
CyanideInterface:Initialize()
```
