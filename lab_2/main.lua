local y1 = math.random(10, 90)
local y2 = math.random(140, 210)
local y3 = math.random(280, 350)

local x1 = math.random(85, 100)
local x2 = math.random(250, 300)
local x3 = math.random(85, 100)

local gravity = math.random(-1,2)

local physics = require "physics"
physics.start()

local MyRec1 = display.newRect(x1, y1, 270, 10)

MyRec1:setFillColor(1, 1, 1,1)
physics.addBody(MyRec1, "static")

local MyRec2 = display.newRect(x2, y2, 270, 10)

MyRec2:setFillColor(1, 1, 1,1)
physics.addBody(MyRec2, "static")

local MyRec3 = display.newRect(x3, y3, 270, 10)

MyRec3:setFillColor(1, 1, 1,1)
physics.addBody(MyRec3, "static")

local MyWall1 = display.newRect(-1,400, 1,30000)
physics.addBody(MyWall1, "static")
local MyWall2 = display.newRect(321,400, 1,30000)
physics.addBody(MyWall2, "static")

local MyFan = display.newRect(60, 480, 140, 50)

MyFan:rotate(35)
MyFan:setFillColor(1, 1, 1,1)
physics.addBody(MyFan, "static")

local MyFan1 = display.newRect(260, 480, 140, 50)

MyFan1:rotate(-35)
MyFan1:setFillColor(1, 1, 1,1)
physics.addBody(MyFan1, "static")


local MyCircle = display.newCircle(160, 400, 35)
MyCircle:setFillColor(1, 0.2, 0.8, 1)
physics.addBody(MyCircle, "dinamic")
MyCircle.gravityScale = gravity



local function pushR()
    MyCircle:applyLinearImpulse(0.2, -0.2, MyCircle.x, MyCircle.y)    
end

local function pushL()
    MyCircle:applyLinearImpulse(-0.2, -0.2, MyCircle.x, MyCircle.y)    
end

MyFan1:addEventListener("tap", pushL)
MyFan:addEventListener("tap", pushR)


