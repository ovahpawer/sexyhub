
getgenv().SecureMode = true
getgenv().PlaceId = game.PlaceId
getgenv().Good = false

if not Good then
    return
end

print(Good)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "SexyHub",
    LoadingTitle = "SexyHub",
    LoadingSubtitle = "by OSAKA#0001",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = 'SexyHub', -- Create a custom folder for your hub/game
       FileName = tostring(game.Players.LocalPlayer.UserId) .. tostring(PlaceId)
    },
    Discord = {
       Enabled = false,
       Invite = "A75HAZQa4p", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "SexyHub",
       Subtitle = "Key System",
       Note = "join discord for key",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 getgenv().cheats = {
    infinite_stamina = false
 }

 local mainTab = Window:CreateTab("Main", 4483362458) -- Title, Image
 local mainSection = mainTab:CreateSection("main")

 local infstam = mainTab:CreateToggle({
    Name = "Infinite Stamina",
    CurrentValue = false,
    Flag = "infstam", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        cheats.infinite_stamina = Value
        local mt = getrawmetatable(game)
        make_writeable(mt)
        
        local namecall = mt.__namecall
        
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
        
            if method == "FireServer" and tostring(self) == 'CommE' then
               if cheats.infinite_stamina then
                return
               end
            end
            return namecall(self, table.unpack(args))
        end)
    end,
 })
