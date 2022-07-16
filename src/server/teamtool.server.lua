local players = game:GetService("Players")
local teams = game:GetService("Teams")
local teamtoolconifg = require(script.Parent:WaitForChild("teamtoolconfig"))

for _,v in teamtoolconifg do
    if v ~= nil then
        print(typeof(v))
        v:SetAttribute("TeamTool", true)
    end
end

for i,v in teamtoolconifg do
    if i ~= nil then
        if v ~= nil then
            i.PlayerAdded:Connect(function(plr)
                for _,tool in plr.Character:GetDescendants() do
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