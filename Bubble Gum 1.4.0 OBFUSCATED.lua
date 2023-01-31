local UserInputService = game:GetService("UserInputService")
for i,v in ipairs(getconnections(UserInputService.WindowFocusReleased)) do
   v:Disable()
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Bubble Gum Clicker!", HidePremium = true, SaveConfig = false, ConfigFolder = "Bubble Gum Clicker!"})
OrionLib:MakeNotification({
	Name = "Bubble Gum Clicker!",
	Content = "Scripts Loaded!",
	Time = 2
})
--Random values--
getgenv().autotap = false
getgenv().autosell = false
getgenv().autobuy = false
getgenv().autobest = false
getgenv().canclaim = true
getgenv().autochest = false
getgenv().meetme = true
getgenv().bypassed = false

local InfoTab = Window:MakeTab({
	Name = "INFO",
})
local AutofarmTab = Window:MakeTab({
	Name = "Autofarm",
})
local EggsTab = Window:MakeTab({
	Name = "Eggs",
})
local TeleportsTab = Window:MakeTab({
	Name = "Teleports",
})
local PlayerTab = Window:MakeTab({
	Name = "Player",
})
local CreditsTab = Window:MakeTab({
	Name = "Credits",
})
local Section = AutofarmTab:AddSection({
	Name = "Autofarm Options"
})
--Credits&Info--
InfoTab:AddParagraph("-IMPORTANT-","DO NOT RESET OR DIE WITH AUTOSELL X2 ON OR YOU WILL HAVE TO REJOIN BECAUSE IT WONT WORK AGAIN")
InfoTab:AddParagraph("GUI Version","1.4.0")
CreditsTab:AddParagraph("Made By","tupsutumppu#3145, Tumppi68")
InfoTab:AddParagraph("Changelog","1.4.0 - Fixed patched features (sorta...)")
InfoTab:AddParagraph("Update Date","31.1.2023")
AutofarmTab:AddToggle({
	Name = "Auto Bubble",
	Default = false,
	Callback = function(atcall)
        if atcall == true then
            getgenv().autotap = true
            autotap()
        else
            getgenv().autotap = false
        end
    end
})
AutofarmTab:AddToggle({
	Name = "Auto Sell Bubble X2",
	Default = false,
	Callback = function(ascall)
        if ascall == true then
            if getgenv().bypassed == false then
                bypasser()
                getgenv().bypassed = true
                wait(6)
                getgenv().autosell = true
                autosell()
                local ContextActionService = game:GetService("ContextActionService")
                ContextActionService:UnbindAction("jumpAction")
            else
                getgenv().autosell = true
                autosell()
                local ContextActionService = game:GetService("ContextActionService")
                ContextActionService:UnbindAction("jumpAction")
            end
        else
            getgenv().autosell = false
        end
    end
})
local Section = EggsTab:AddSection({
	Name = "Egg Options"
})
local Section = AutofarmTab:AddSection({
	Name = "Misc"
})
AutofarmTab:AddButton({
	Name = "Disable Popups",
	Callback = function()
        destroypopup()
    end
})
AutofarmTab:AddToggle({
	Name = "Auto Collect Chests",
	Default = false,
	Callback = function(achest)
        if achest == true then
            getgenv().autochest = true
            zesty()
        else
            getgenv().autochest = false
        end
    end
})
AutofarmTab:AddButton({
	Name = "Anti AFK",
	Callback = function()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
           vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
           wait(1)
           vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
})
AutofarmTab:AddButton({
	Name = "Redeem Codes",
	Callback = function()
        codes()
  	end
})
EggsTab:AddToggle({
	Name = "Infinite 2X Luck",
	Default = false,
	Callback = function(luck)
        if luck == true then
            game:GetService("ReplicatedStorage").Is2xLuckEnabled.Value = true
        else
            game:GetService("ReplicatedStorage").Is2xLuckEnabled.Value = false
        end
    end
})
EggsTab:AddToggle({
	Name = "Auto Equip Best Pets",
	Default = false,
	Callback = function(bpets)
        if bpets == true then
            getgenv().autobest = true
            autoequipbest()
        else
            getgenv().autobest = false
        end
	end
})
EggsTab:AddLabel("Options under this only work with Auto Sell X2")
local Section = EggsTab:AddSection({
	Name = "Buy Egg"
})
EggsTab:AddDropdown({
	Name = "Buy Egg",
	Default = "Eggs",
	Options = {"Common Egg", "Spotted Egg","Safe Egg","Magma Egg","Void Egg","Lantern Egg","Galaxy Egg","Frosted Egg","Banana Bandana on Nana Egg","Season 1 Egg"},
	Callback = function(selectedegg)
        if selectedegg == "Common Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Common Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Spotted Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Spotted Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Safe Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Safe Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Magma Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Magma Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Void Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Void Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Lantern Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Lantern Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Galaxy Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Galaxy Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Frosted Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Frosted Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Banana Bandana on Nana Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Banana Bandana on Nana Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        elseif selectedegg == "Season 1 Egg" then
            for i=1, 30 do
                local args = {[1] = {[1] = {[1] = "Season 1 Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait()
            end
        end
    end
})
local Section = EggsTab:AddSection({
	Name = "Auto Buy Eggs"
})
EggsTab:AddToggle({
	Name = "Toggle Auto Buy Egg",
	Default = false,
	Callback = function(at)
        if at == true then
            if getgenv().bypassed == false then
                bypasser()
                getgenv().bypassed = true
                getgenv().autobuy = true
                wait()
            else
                getgenv().autobuy = true
            end
        else
            getgenv().autobuy = false
        end
    end
})
EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "",
	Options = {"Common Egg", "Spotted Egg","Safe Egg","Magma Egg","Void Egg","Lantern Egg","Galaxy Egg","Frosted Egg","Banana Bandana on Nana Egg","Season 1 Egg"},
	Callback = function(autoegg)
        if autoegg == "Common Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Common Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Spotted Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Spotted Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Safe Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Safe Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Magma Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Magma Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Void Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Void Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Lantern Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Lantern Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Galaxy Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Galaxy Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Frosted Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Frosted Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Banana Bandana on Nana Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Banana Bandana on Nana Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        elseif autoegg == "Season 1 Egg" and getgenv().autobuy == true then
            repeat
                local args = {[1] = {[1] = {[1] = "Season 1 Egg"},[2] = {[1] = false}}}
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild("buy egg"):InvokeServer(unpack(args))
                wait(getgenv().waittime)
            until getgenv().autobuy == false
        end
    end
})
EggsTab:AddParagraph("-NOTE-","Toggle Auto Buy first then set desired egg")
local Section = TeleportsTab:AddSection({
	Name = "Teleport to selected island"
})
TeleportsTab:AddDropdown({
	Name = "Select Island",
	Default = "Islands",
	Options = {"Spawn", "Sky Island","Lucky Landing","Heaven","Space","The Void","Fairy World","XP Island",},
	Callback = function(tpisland)
        if tpisland == "Spawn" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-376, 4, -556))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-376, 4, -556))
            end
        elseif tpisland == "Sky Island" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-402, 959, -554))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-402, 959, -554))
            end
        elseif tpisland == "Lucky Landing" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-422, 5199, -584))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-422, 5199, -584))
            end
        elseif tpisland == "Heaven" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-354, 11342, -581))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-354, 11342, -581))
            end
        elseif tpisland == "Space" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-379, 21342, -564))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-379, 21342, -564))
            end
        elseif tpisland == "The Void" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-409, 33369, -566))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-409, 33369, -566))
            end
        elseif tpisland == "Fairy World" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-392, 40969, -560))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-392, 40969, -560))
            end
        elseif tpisland == "XP Island" then
            if getgenv().bypassed == true then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = (Vector3.new(-377, 49997, -579))
            else
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-377, 49997, -579))
            end
        end
    end
})
PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 1,
	Max = 500,
	Default = 26,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(txt)
        getgenv().WalkSpeedValue = txt;
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end
})
PlayerTab:AddParagraph("Default Walkspeed","26")
PlayerTab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
        local infjump = true
        game:GetService("UserInputService").JumpRequest:connect(function()
           if infjump then
               game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
           end
        end)
    end
})

--functions--
function destroypopup()
    spawn(function ()
        game.Players.LocalPlayer.PlayerGui.Numbers:Destroy()
        game.Players.LocalPlayer.PlayerGui.Diamonds:Destroy()
        game.Players.LocalPlayer.PlayerGui.Message:Destroy()
        game.Players.LocalPlayer.PlayerGui.Overlay:Destroy()
    end)
end
function autoequipbest()
    spawn(function()
        while getgenv().autobest == true do
            local args = {[1] = {[1] = {[1] = false},[2] = {[1] = 2}}}
            game:GetService("ReplicatedStorage").Remotes:FindFirstChild("equip best pets"):FireServer(unpack(args))
            wait(2)
        end
    end)
end
function autotap()
    spawn(function()
       while getgenv().autotap == true do
        local ohTable1 = {[1] = {[1] = false},[2] = {[1] = 2}}
        game:GetService("ReplicatedStorage").Remotes["blow bubble"]:FireServer(ohTable1)
        task.wait()
       end
    end)
end
function autosell()
    spawn(function()
       while getgenv().autosell == true do
        local args = {
            [1] = {
                [1] = {
                    [1] = true
                },
                [2] = {
                    [1] = false
                }
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("sell bubbles"):FireServer(unpack(args))
        wait(0.1)
       end
    end)
 end
 function codes()
    spawn(function ()
        if getgenv().canclaim == true then
            local args = {[1] = {[1] = {[1] = "season1"},[2] = {[1] = false}}}
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "bubblegum"},[2] = {[1] = false}}}
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "banana"},[2] = {[1] = false}}}
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "bandana"},[2] = {[1] = false}}}
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "nana"},[2] = {[1] = false}}} 
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "scramble"},[2] = {[1] = false}}}     
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "stayfrosty"},[2] = {[1] = false}}} 
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             local args = {[1] = {[1] = {[1] = "lucky"},[2] = {[1] = false}}}   
             game:GetService("ReplicatedStorage").Remotes:FindFirstChild("redeem twitter code"):InvokeServer(unpack(args))
             wait(1)
             getgenv().canclaim = false
            end
        end)
    end
function zesty()
    spawn(function()
        while getgenv().autochest == true do
            local args = {[1] = {[1] = {[1] = "Sky Chest"},[2] = {[1] = false}}}
            game:GetService("ReplicatedStorage").Remotes:FindFirstChild("collect chest"):FireServer(unpack(args))
            wait(1)
            local args = {[1] = {[1] = {[1] = "Heavenly Chest"},[2] = {[1] = false}}}     
            game:GetService("ReplicatedStorage").Remotes:FindFirstChild("collect chest"):FireServer(unpack(args))
            wait(1)
            local args = {[1] = {[1] = {[1] = "Void Chest"},[2] = {[1] = false}}}       
            game:GetService("ReplicatedStorage").Remotes:FindFirstChild("collect chest"):FireServer(unpack(args))
            wait(1)
            local args = {[1] = {[1] = {[1] = "XP Chest"},[2] = {[1] = false}}}
            game:GetService("ReplicatedStorage").Remotes:FindFirstChild("collect chest"):FireServer(unpack(args))
            wait(60)
        end
    end)
end
function bypasser()
    spawn (function()
        game:GetService'Players'.LocalPlayer.Character:MoveTo(Vector3.new(-510, 63, -478));
        wait(0.5)
         game.Workspace[game.Players.LocalPlayer.Name].LowerTorso:Destroy()
         game.Workspace[game.Players.LocalPlayer.Name].UpperTorso.Anchored = true
        local luku = 1
        for k, v in pairs( game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                   if v.Name == "HumanoidRootPart" then
                   v.Name = "HumanoidRootPart" .. luku
                   luku = luku + 1
               end
        end
        wait(0.5)
        local tools =  game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart1-- change toolname to tools name
        tools:clone().Parent = game:GetService("Workspace")[game.Players.LocalPlayer.Name]
        wait(1)
        local luku = 1
        for k, v in pairs( game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                   if v.Name == "HumanoidRootPart1" then
                   v.Name = "HumanoidRootPart" .. luku
                   luku = luku + 1
               end
        end
        for k, v in pairs( game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do 
               if v.Name == "HumanoidRootPart2" then
                   v.Name = "HumanoidRootPart"
               end
        end
        wait(1)
         game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.Position = Vector3.new(-423, 3, -636)
        getgenv().test = true
        while getgenv().test == true do
             game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart1.Position = Vector3.new(-270, 6, -584)
            task.wait()
             game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart1.Position = Vector3.new(-395, 21342, -566)
            task.wait()
             game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart1.Position = Vector3.new(-270, 6, -553)
            task.wait()
             game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart1.Position = Vector3.new(-434, 4, -605)
            task.wait()
        end
    end)
end
while getgenv().meetme == true do
    wait(20)
    if game:GetService("Players"):FindFirstChild("Tumppi68") ~= nil then
        wait(5)
        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("I have found tupsutumppu/Tumppi68 the creator of this awesome GUI! ","All")
        wait(0.5)
        getgenv().meetme = false
        wait(0.5)
    end
end
OrionLib:Init()