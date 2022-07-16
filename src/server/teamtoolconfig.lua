local teams = game:GetService("Teams")
local serverStorage = game:GetService("ServerStorage")
return {
    [teams:WaitForChild("sample")] = {
        serverStorage:WaitForChild("Tools"):WaitForChild("tool1")
    },
    [teams:WaitForChild("sample2")] = {
        serverStorage:WaitForChild("Tools"):WaitForChild("tool2")
    }
}