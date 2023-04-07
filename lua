local ESPEnabled = false

local function toggleESP()
    ESPEnabled = not ESPEnabled
    if ESPEnabled then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureServicess/Kirot-Esp/main/lua"))()
    else
        esp.enabled = false
    end
end

-- Set the keybind to toggle ESP on and off
local toggleESPKeybind = Enum.KeyCode.Z
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and input.KeyCode == toggleESPKeybind then
        toggleESP()
    end
end)
