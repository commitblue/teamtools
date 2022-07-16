local players = game:GetService("Players")
local teams = game:GetService("Teams")
local teamtoolconifg = require(script.Parent:WaitForChild("teamtoolconfig"))

for _,v in teamtoolconifg do
    for _,v in v do
        if v ~= nil then
            v:SetAttribute("TeamTool", true)
        end 
    end
end

for i,v in teamtoolconifg do
    if i ~= nil then
        if v ~= nil then
            i.PlayerAdded:Connect(function(plr)
                local char = plr.Character or plr.CharacterAdded:Wait()
                if plr ~= nil then else
                    return
                end
                for _,tool in char:GetDescendants() do
                    if tool:GetAttribute("TeamTool") then
                        tool:Destroy()
                    end
                end
                for _,tool in plr:GetDescendants() do
                    if tool:GetAttribute("TeamTool") then
                        tool:Destroy()
                    end
                end
                for _,r in v do
                    r:Clone().Parent = plr.StarterGear
                    r:Clone().Parent = plr.Backpack
                end
            end)
        end
    end
end