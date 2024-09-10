print("funcionando")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Section"


    
})
Tab:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		print(Value)
        local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

function teleportToClosestPlayer()
    local closestPlayer = getClosestPlayer()
    if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = closestPlayer.Character.HumanoidRootPart.CFrame
    end
end

-- Chame a função teleportToClosestPlayer quando quiser teleportar
teleportToClosestPlayer()

	end    
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
              local Players = game:GetService("Players")
              local LocalPlayer = Players.LocalPlayer
              
              function getClosestPlayer()
                  local closestPlayer = nil
                  local shortestDistance = math.huge
              
                  for _, player in pairs(Players:GetPlayers()) do
                      if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                          local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
                          if distance < shortestDistance then
                              closestPlayer = player
                              shortestDistance = distance
                          end
                      end
                  end
              
                  return closestPlayer
              end
              
              function teleportToClosestPlayer()
                  local closestPlayer = getClosestPlayer()
                  if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                      LocalPlayer.Character.HumanoidRootPart.CFrame = closestPlayer.Character.HumanoidRootPart.CFrame
                  end
              end
              
              -- Chame a função teleportToClosestPlayer quando quiser teleportar
              teleportToClosestPlayer()
              
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

--[[
Name = <string> - The name of the section.
]]