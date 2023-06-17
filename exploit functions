-- < Aliases > --
local Instance_new = Instance.new
local Vector3_new = Vector3.new
local CFrame_new = CFrame.new
local CFrame_Angles = CFrame.Angles
local coroutine_wrap = coroutine.wrap
local coroutine_yield = coroutine.yield
local coroutine_running = coroutine.running
local string_find = string.find
local string_match = string.match
local string_gsub = string.gsub
local string_sub = string.sub
local string_byte = string.byte
local string_split = string.split
local table_concat = table.concat
local table_insert = table.insert
local debug_traceback = debug.traceback
local math_rad = math.rad
local math_abs = math.abs
local math_floor = math.floor
local pog pog = nil
local game = game
local delay = delay
local wait = wait
local rawget = rawget
local error = error
local rawset = rawset
local assert = function(p1, p2, p3)
if not p1 then
error(p2, p3)
end
end
local newproxy = newproxy
local ipairs = ipairs
local getmetatable = getmetatable
local setmetatable = setmetatable
local tostring = tostring
local tonumber = tonumber
local type = type
local typeof = typeof
local pcall = pcall
local xpcall = xpcall
local setfenv = setfenv
local getfenv = getfenv
local workspace = workspace
local newcclosure = newcclosure or function(p1)
return coroutine_wrap(function(...)
while true do
coroutine_yield(p1(...))
end
end)
end
-- < Services > --
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local ScriptContext = game:GetService("ScriptContext")
local InsertService = game:GetService("InsertService")
local TestService = game:GetService("TestService")
local StudioData = game:GetService("StudioData")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GlobalSettings = settings()
local TaskScheduler = GlobalSettings:GetService("TaskScheduler")
-- < Class Aliases > --
local IsA = game.IsA
local IsDescendantOf = game.IsDescendantOf
local GetPropertyChangedSignal = game.GetPropertyChangedSignal
local Destroy = game.Destroy
local WaitForChild = game.WaitForChild
local Fire = Instance_new("BindableEvent").Fire
local MoveTo = Instance_new("Model").MoveTo
local InputHoldBegin, InputHoldEnd = (function()
    local A = Instance_new("ProximityPrompt")
    return A.InputHoldBegin, A.InputHoldEnd
end)()
local GetFFlag = GlobalSettings.GetFFlag
local IsClient = RunService.IsClient
local IsServer = RunService.IsServer
local Error = ScriptContext.Error
local RenderStepped = RunService.RenderStepped
local LoadLocalAsset = InsertService.LoadLocalAsset
local Message = TestService.Message
local SendMouseButtonEvent = VirtualInputManager.SendMouseButtonEvent
local SendMouseWheelEvent = VirtualInputManager.SendMouseWheelEvent
local SendMouseMoveEvent = VirtualInputManager.SendMouseMoveEvent
local SendKeyEvent = VirtualInputManager.SendKeyEvent
local GetMouseLocation = UserInputService.GetMouseLocation
local Wait, Connect, Disconnect = (function()
    local A = game.Changed
    local B = A.Connect
    return A.Wait, B, B(A, function()end).Disconnect
end)()
-- < Upvalues > --
local ChangedSignals = {}
local HiddenPropertyEvents = {}
local IsRBXActive = true
local LocalCamera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local LocalMouse = LocalPlayer:GetMouse()
local instance_table = game:GetDescendants()
local env = (getgenv and getgenv or getrenv and getrenv or getfenv)()
local env_add = function(p1, p2, p3, p4)
if rawget(env, p1) then return end
if p4 and not rawget(env, p4) then return end
rawset((p4 and env[p4] or env), p1, (p3 and newcclosure or function(p1) 
return p1
end)(p2))
end
-- < Source > --
Connect(game.DescendantAdded, function(p1)
table_insert(instance_table, p1)
end)
Connect(game.ItemChanged, function(p1, p2)
local A = HiddenPropertyEvents[p1]
if A then
local B = A[p2]
if B then
for C, D in ipairs(B) do
Fire(D)
end
end
end
end)
Connect(UserInputService.WindowFocusReleased, function()
IsRBXActive = false
end)
Connect(UserInputService.WindowFocused, function()
IsRBXActive = true
end)
env_add("info", function(p1)
assert(type(p1) ~= "nil", "invalid argument #1 to '?' (value expected)", 2)
local A = pcall(Message, TestService, "Information\n" .. tostring(p1))
return A
end, true)
env_add("httpget", game.HttpGetAsync)
env_add("httppost", game.HttpPostAsync)
env_add("getreg", function()
-- There is no known method to do this in lua
return {}
end, true)
env_add("getgc", function(p1)
-- There is no known method to do this in lua
return {}
end, true)
env_add("newcclosure", newcclosure, true)
env_add("clonefunction", function(p1)
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = p1
local B = xpcall(setfenv, function(p2, p3)
return p2, p3
end, p1, getfenv(p1))
if B then
return function(...)
return A(...)
end
end
return coroutine_wrap(function(...)
while true do
A = coroutine_yield(A(...))
end
end)
end, true)
env_add("iscclosure", function(p1)
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = xpcall(setfenv, function(p2, p3)
return p2, p3
end, p1, getfenv(p1))
return not A
end, true)
env_add("islclosure", function(p1)
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = xpcall(setfenv, function(p2, p3)
return p2, p3
end, p1, getfenv(p1))
return A
end, true)
env_add("newlclosure", function(p1)
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = p1
return function(...)
return A(...)
end
end, true)
env_add("getexecutioncontext", function()
return IsClient(RunService) and "Client" or IsServer(RunService) and "Server" or "Studio"
end, true)
env_add("getthreadidentity", function()
local A, B = xpcall(GetPropertyChangedSignal, function(p1, p2)
return p1, p2
end, StudioData, "SrcUniverseId")
return A and 7 or string_sub(string_split(B, "identity (")[2], 1, 1)
end, true)
env_add("setthreadidentity", function(p1)
-- There is no known method to do this in lua
end, true)
env_add("ishiddenproperty", function(p1, p2)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(type(p2) == "string", "invalid argument #2 to '?' (string expected)", 2)
local A, B = xpcall(GetPropertyChangedSignal, function(p3, p4)
return p3, p4
end, p1, p2)
assert(not string_find(tostring(B), "not a valid"), "invalid argument #2 to '?' (property expected)", 2)
return (not A)
end, true)
env_add("isreadonly", function(p1)
assert(type(p1) == "table", "invalid argument #1 to '?' (table expected)", 2)
local A = xpcall(rawset, function(p2)
return p2
end, p1)
return (not A)
end, true)
env_add("getpropvalue", function(p1, p2)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(type(p2) == "string", "invalid argument #2 to '?' (string expected)", 2)
local A, B = xpcall(GetPropertyChangedSignal, function(p3, p4)
return p3, p4
end, p1, p2)
assert(not string_find(tostring(B), "not a valid"), "invalid argument #2 to '?' (property expected)", 2)
local A, B = pcall(function()
return p1[p2]
end)
if A then
return B
end
end, true)
env_add("setpropvalue", function(p1, p2, p3)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(type(p2) == "string", "invalid argument #2 to '?' (string expected)", 2)
assert(type(p3) ~= "nil", "invalid argument #3 to '?' (value expected)", 2)
local A, B = xpcall(GetPropertyChangedSignal, function(p3, p4)
return p3, p4
end, p1, p2)
assert(not string_find(tostring(B), "not a valid"), "invalid argument #2 to '?' (property expected)", 2)
local A, B = pcall(function()
p1[p2] = p3
end)
return A
end, true)
env_add("getsenv", function(p1)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(IsA(p1, "LocalScript"), "invalid argument #1 to '?' (LocalScript expected)", 2)
local A = getreg()
local B = {}
for C, D in next, A do
if type(D) == "function" and islclosure(D) then
local E = getfenv(D)
local F = rawget(E, "script")
if F and F == p1 then
for G, H in next, E do
if G ~= "script" then
rawset(B, G, H)
end
end
end
end
end
return B
end, true)
env_add("getmenv", function(p1)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(IsA(p1, "ModuleScript"), "invalid argument #1 to '?' (ModuleScript expected)", 2)
local A = getreg()
local B = {}
if #A == 0 then
return require(p1)
end
for C, D in next, A do
if type(D) == "function" and islclosure(D) then
local E = getfenv(D)
local F = rawget(E, "script")
if F and F == p1 then
for G, H in next, E do
if G ~= "script" then
rawset(B, G, H)
end
end
end
end
end
return B
end, true)
env_add("nyspawn", function(p1)
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = xpcall(setfenv, function(p1)
return p1
end, p1, getfenv(p1))
assert(A, "invalid argument #1 to '?' (Lua function expected)", 2)
local B = setmetatable({}, setmetatable({__concat = function()p1()end}, {__mode = "vk"})) .. pog
end, true)
env_add("isrobloxscript", function(p1)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(IsA(p1, "LuaSourceContainer"), "invalid argument #1 to '?' (LuaSourceContainer expected)", 2)
assert(gethiddenproperty, "isrobloxscript is not enabled.", 3)
if IsA(p1, "CoreScript") then
return true
end
local A = gethiddenproperty(p1, "ScriptGuid")
return #A == 0
end, true)
env_add("unlockmodulescript", function(p1)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(IsA(p1, "ModuleScript"), "invalid argument #1 to '?' (ModuleScript expected)", 2)
end, true)
env_add("isluau", function()
return _VERSION == "Luau"
end, true)
env_add("dumpstring", function(p1)
assert(type(p1) == "string", "invalid argument #1 to '?' (string expected)", 2)
return tostring("\\" .. table_concat({string_byte(p1, 1, #p1)}, "\\"))
end, true)
pcall(env_add, "isvalidlevel", function(p1)
assert(type(p1) == "number", "invalid argument #1 to '?' (number expected)")
local A = xpcall(getfenv, function(p2)
return p2
end, p1)
return A
end, true, "debug")
pcall(env_add, "getregistry", getreg, false, "debug")
pcall(env_add, "getconstants", function(p1)
-- There is no known method to do this in lua
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = xpcall(setfenv, function(p1, p2)
return p1, p2
end, p1, getfenv(p1))
assert(A, "invalid argument #1 to '?' (Lua function expected)", 2)
return {}
end, true, "debug")
pcall(env_add, "getprotos", function(p1)
-- There is no known method to do this in lua
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
local A = xpcall(setfenv, function(p2, p3)
return p2, p3
end, p1, getfenv(p1))
assert(A, "invalid argument #1 to '?' (Lua function expected)", 2)
return {}
end, true, "debug")
pcall(env_add, "getupvalues", function(p1)
-- There is no known method to do this in lua
assert(type(p1) == "function", "invalid argument #1 to '?' (function expected)", 2)
return {}
end, true, "debug")
pcall(env_add, "getstack", function(p1)
-- There is no known method to do this in lua
assert(type(p1) == "number", "invalid argument #1 to '?' (number expected)", 2)
local A = xpcall(getfenv, function(p2)
return p2
end, p1)
assert(A, "invalid argument #1 to '?' (valid level expected)", 2)
return {}
end, true, "debug")
env_add("getinstances", function()
return instance_table
end, true)
env_add("getnilinstances", function()
local A = {}
for B, C in ipairs(instance_table) do
if C.Parent == pog then
table_insert(A, C)
end
end
return A
end, true)
env_add("getscripts", function(p1)
local A = {}
for B, C in ipairs(instance_table) do
if IsA(C, "LocalScript") or IsA(C, "ModuleScript") or (p1 and IsA(C, "CoreScript")) then
table_insert(A, C)
end
end
return A
end, true)
env_add("getmodules", function()
local A = {}
for B, C in ipairs(instance_table) do
if IsA(C, "ModuleScript") then
table_insert(A, C)
end
end
return A
end, true)
env_add("getallthreads", function()
local A = {}
local B = getreg()
for C, D in next, B do
if type(D) == "thread" then
table_insert(A, D)
end
end
return A
end, true)
env_add("getthread", function()
return coroutine_running()
end, true)
env_add("isnetworkowner", function(p1)
-- "NetworkOwnerV3" can't be accessed in lua due to it being a 'SystemAddress' type property
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(IsA(p1, "BasePart"), "invalid argument #1 to '?' (BasePart expected)", 2)
local A = LocalPlayer.SimulationRadius
local B = LocalPlayer.Character or Wait(LocalPlayer.CharacterAdded)
local C = WaitForChild(B, "HumanoidRootPart", 300)
if C then
    if p1.Anchored then
        return false
    end
    if IsDescendantOf(p1, B) or (C.Position - p1.Position).Magnitude <= A then
        return true
    end
end
return false
end, true)
env_add("setsimulationradius", function(p1, p2)
assert(type(p1) == "number", "invalid argument #1 to '?' (number expected)", 2)
local A = setpropvalue
A(LocalPlayer, "SimulationRadius", p1)
if p2 then
A(LocalPlayer, "MaxSimulationRadius", p2)
end
end, true)
env_add("gettypeof", function(p1)
if type(p1) == "function" then
return "function"
end
delay(0, p1)
local A = Wait(Error)
local B = string_match(A, "%a+", 18)
return B
end)
env_add("getcallingscript", function()
local A, B = xpcall(getfenv, function()
return rawget(getfenv(0), "script")
end, 3)
local C = rawget(B, "script")
if not C or typeof(C) ~= "Instance" then
local D = string_match(debug_traceback(), "%w+:[%d%s]+$")
return string_split(D, ":")[1]
end
return C
end, true)
env_add("getcurrentline", function()
return tonumber(string_match(debug_traceback(), "[%d%s]+$"))
end, true)
env_add("getmemoryaddress", function(p1, p2)
assert(type(p2) == "boolean" or type(p2) == "nil", "invalid argument #2 to '?' (<boolean, nil> expected)", 2)
local A = p2 == pog and true or p2
local B, C = xpcall(tostring, function()
return
end, p1)
local D = string_match(C, ": ?(.+)")
return (not A) and string_gsub(D, "0x", "") or D
end, true)
env_add("getfflag", function(p1)
assert(type(p1) == "string", "invalid argument #1 to '?' (string expected)", 2)
return GetFFlag(p1)
end, true)
env_add("gethui", function()
return CoreGui
end, true)
env_add("getscheduler", function()
return TaskScheduler
end, true)
env_add("GetObjects", function(p1)
assert(type(p1) == "string", "invalid argument #1 to '?' (string expected)", 2)
assert(string_find(p1, "://"), "invalid argument #1 to '?' (url expected)", 2)
return {
LoadLocalAsset(InsertService, p1)
}
end, true)
env_add("setpropertylocked", function(p1, p2, p3)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)")
assert(type(p2) == "string", "invalid argument #2 to '?' (string expected)")
assert(type(p3) == "boolean", "invalid argument #3 to '?' (boolean expected)")
local A, B = xpcall(GetPropertyChangedSignal, function(p4, p5)
return p4, p5
end, p1, p2)
assert(A, B, 0)
if ChangedSignals[p1] and p3 then
assert(not ChangedSignals[p1][p2], "This property is already locked!", 0)
end
if p3 then
local C C = p1[p2]
local D D = Connect(B, function()
local A = tostring(C)
A = A == "nil" and "NULL" or A
p1[p2] = C
error("The " .. p2 .. " property of " .. tostring(p1) .. " is locked, current: " .. A, 0)
end)
local E E = ChangedSignals[p1]
if E then
E[p2] = D
else
ChangedSignals[p1] = {
[p2] = D
}
end
else
local F F = ChangedSignals[p1]
if F then
local G G = F[p2]
if G then
Disconnect(G)
F[p2] = nil
end
end
end
end, true)
env_add("GetHiddenPropertyChangedSignal", function(p1, p2)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(type(p2) == "string", "invalid argument #2 to '?' (string expected)", 2)
local A, B = xpcall(GetPropertyChangedSignal, function(p3, p4)
return p3, p4
end, p1, p2)
assert(not string_find(tostring(B), "not a valid"), "invalid argument #2 to '?' (property expected)", 2)
if A then
return GetPropertyChangedSignal(p1, p2)
end
local D = newproxy(true)
local E = getmetatable(D)
E.__newindex = function(p5, p6, p7)
error(tostring(p6) .. " cannot be assigned to", 0)
end
E.__index = function(p8, p9)
local A = {}
local C = Instance_new("BindableEvent")
function A:Connect(p10)
Connect(C.Event, p10)
local A = HiddenPropertyEvents[p1]
if A then
local B = A[p2]
if B then
table_insert(B, C)
else
A[p2] = {C}
end
else
HiddenPropertyEvents[p1] = {[p2] = {C}}
end
local B = newproxy(true)
local D = getmetatable(B)
D.__newindex = function(p1, p2)
error(tostring(p2) .. " cannot be assigned to", 0)
end
D.__index = function(p3, p4)
local A = {}
function A:Disconnect()
local A = HiddenPropertyEvents[p1]
if A then
local B = A[p2]
if B then
Destroy(C)
else
A[p2] = {}
end
else
HiddenPropertyEvents[p1] = {}
end
end
local B = A[p4]
if B then
return B
end
error(p4 .. " is not a valid member of CustomScriptConnection", 0)
end
D.__tostring = function()
return "Connection"
end
D.__metatable = "The metatable is locked"
return B
end
function A:Wait()
local A = HiddenPropertyEvents[p1]
if A then
local B = A[p2]
if B then
table_insert(B, C)
else
A[p2] = {C}
end
else
HiddenPropertyEvents[p1] = {[p2] = {C}}
end
Wait(C.Event)
end
local B = A[p9]
if B then
return B
end
error(p9 .. " is not a valid member of CustomScriptSignal", 0)
end
E.__tostring = function(p12)
return "Signal " .. p2 .. "Changed"
end
E.__metatable = "The metatable is locked"
return D
end, true)
env_add("isrbxactive", function()
return IsRBXActive
end, true)
env_add("fireproximityprompt", function(p1, p2)
assert(typeof(p1) == "Instance", "invalid argument #1 to '?' (Instance expected)", 2)
assert(IsA(p1, "ProximityPrompt"), "invalid argument #1 to '?' (ProximityPrompt expected)", 2)
assert(type(p2) == "number" or type(p2) == "nil", "invalid argument #2 to '?' (<number, void> expected)", 2)
local A = p1.Parent
if A then
    local C = LocalPlayer.Character or Wait(LocalPlayer.CharacterAdded)
    if C then
        local D = WaitForChild(C, "HumanoidRootPart", 300)
        if D then
            local E = D.Position
            local F = A.Position
            local G = p1.HoldDuration
            local H = p1.MaxActivationDistance
            p1.HoldDuration = 0
            if (E - F).Magnitude <= H then
                InputHoldBegin(p1)
                InputHoldEnd(p1)
            else
                p1.MaxActivationDistance = 9e99
                MoveTo(C, F)
                delay(.5, function()
                    InputHoldBegin(p1)
                    InputHoldEnd(p1)
                end)
            end
            p1.MaxActivationDistance = H
            p1.HoldDuration = G
        end
    end
end
end, true)
env_add("mouse1click", function(p1, p2, p3)
local A = GetMouseLocation(UserInputService)
SendMouseButtonEvent(VirtualInputManager, p2 or A.X, p3 or A.Y, 0, true, pog, 0)
delay(p1, function()
SendMouseButtonEvent(VirtualInputManager, p2 or A.X, p3 or A.Y, 0, false, pog, 0)
end)
end, true)
env_add("mouse1press", function(p1, p2)
local A = GetMouseLocation(UserInputService)
SendMouseButtonEvent(VirtualInputManager, p1 or A.X, p2 or A.Y, 0, true, pog, 0)
end, true)
env_add("mouse1release", function(p1, p2)
local A = GetMouseLocation(UserInputService)
SendMouseButtonEvent(VirtualInputManager, p1 or A.X, p2 or A.Y, 0, false, pog, 0)
end, true)
env_add("mouse2click", function(p1, p2, p3)
local A = GetMouseLocation(UserInputService)
SendMouseButtonEvent(VirtualInputManager, p2 or A.X, p3 or A.Y, 1, true, pog, 0)
delay(p1, function()
SendMouseButtonEvent(VirtualInputManager, p2 or A.X, p3 or A.Y, 1, false, pog, 0)
end)
end, true)
env_add("mouse2press", function(p1, p2)
local A = GetMouseLocation(UserInputService)
SendMouseButtonEvent(VirtualInputManager, p1 or A.X, p2 or A.Y, 1, true, pog, 0)
end, true)
env_add("mouse2release", function(p1, p2)
local A = GetMouseLocation(UserInputService)
SendMouseButtonEvent(VirtualInputManager, p1 or A.X, p2 or A.Y, 1, false, pog, 0)
end, true)
env_add("keypress", function(p1, p2)
SendKeyEvent(VirtualInputManager, true, p1, p2 and p2 or false, pog)
end, true)
env_add("keyrelease", function(p1)
SendKeyEvent(VirtualInputManager, false, p1, false, pog)
end, true)
env_add("mousemoveabs", function(p1, p2)
local A = GetMouseLocation(UserInputService)
return SendMouseMoveEvent(VirtualInputManager, p1, p2)
end, true)
env_add("mousemoverel", function(p1, p2)
local A = GetMouseLocation(UserInputService)
return SendMouseMoveEvent(VirtualInputManager, A.X + p1, A.Y + p1, p1, p2)
end, true)
env_add("mousescroll", function(p1, p2, p3)
if (type(p1) == "boolean") then
p1 = p1 and 120 or -120
end
assert(type(p1) == "number", "invalid argument #1 to '?' (<boolean, number> expected)")
local A = GetMouseLocation(UserInputService)
for B = 1, math_abs(math_floor(p1 / 120)) do
SendMouseWheelEvent(VirtualInputManager, p2 or A.X, p3 or A.Y, p1 >= 0, pog)
Wait(RenderStepped)
end
end, true)
