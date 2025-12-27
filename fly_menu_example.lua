-- Example script showing how to use the FLY functionality with ui_menu.lua

-- Load the UI library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/your-repo/ui_menu.lua"))()

-- Create the main window
local Window = Library:Create({
    Name = "Fly Menu Example",
    Version = "v1.0.0",
    Bind = Enum.KeyCode.RightShift
})

-- Create a tab for movement controls
local MovementTab = Window:Tab({
    Name = "Movement",
    ShowOnStartup = true
})

-- Add the FLY toggle and speed slider to the movement tab
-- This will add both the fly toggle and speed slider automatically
local flyToggle, speedSlider = Library:CreateFlyToggle(MovementTab)

-- Optional: Add a button to toggle noclip as well
MovementTab:Button({
    Text = "Toggle Noclip",
    Callback = function()
        -- Noclip functionality would go here
        print("Noclip toggled")
    end
})

print("Fly menu loaded! Press Right Shift to open the menu.")
print("Use W/A/S/D to move, Space to go up, Left Control to go down")
print("Use Q/E to rotate left/right")
print("Fly speed can be adjusted with the slider in the menu")