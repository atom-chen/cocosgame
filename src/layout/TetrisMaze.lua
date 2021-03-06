--------------------------------------------------------------
-- This file was automatically generated by Cocos Studio.
-- Do not make changes to this file.
-- All changes will be lost.
--------------------------------------------------------------

local luaExtend = require "LuaExtend"

-- using for layout to decrease count of local variables
local layout = nil
local localLuaFile = nil
local innerCSD = nil
local innerProject = nil
local localFrame = nil

local Result = {}
------------------------------------------------------------
-- function call description
-- create function caller should provide a function to 
-- get a callback function in creating scene process.
-- the returned callback function will be registered to 
-- the callback event of the control.
-- the function provider is as below :
-- Callback callBackProvider(luaFileName, node, callbackName)
-- parameter description:
-- luaFileName  : a string, lua file name
-- node         : a Node, event source
-- callbackName : a string, callback function name
-- the return value is a callback function
------------------------------------------------------------
function Result.create(callBackProvider)

local result={}
setmetatable(result, luaExtend)

--Create Scene
local Scene=cc.Node:create()
Scene:setName("Scene")

--Create panel
local panel = ccui.Layout:create()
panel:ignoreContentAdaptWithSize(false)
panel:setClippingEnabled(false)
panel:setTouchEnabled(true);
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(34)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
panel:setAnchorPoint(0.5000, 0.5000)
panel:setPosition(320.0000, 568.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 640.0000, height = 1136.0000})
Scene:addChild(panel)

--Create scene_bg
local scene_bg = ccui.ImageView:create()
scene_bg:ignoreContentAdaptWithSize(false)
scene_bg:loadTexture("ui/bg/singlematch_bg.png",0)
scene_bg:setLayoutComponentEnabled(true)
scene_bg:setName("scene_bg")
scene_bg:setTag(64)
scene_bg:setCascadeColorEnabled(true)
scene_bg:setCascadeOpacityEnabled(true)
scene_bg:setPosition(319.1040, 568.9088)
layout = ccui.LayoutComponent:bindLayoutComponent(scene_bg)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.4986)
layout:setPositionPercentY(0.5008)
layout:setPercentWidth(1.3313)
layout:setPercentHeight(1.0000)
layout:setSize({width = 852.0000, height = 1136.0000})
layout:setLeftMargin(-106.8960)
layout:setRightMargin(-105.1040)
layout:setTopMargin(-0.9088)
layout:setBottomMargin(0.9088)
panel:addChild(scene_bg)

--Create tetris_panel
local tetris_panel = ccui.Layout:create()
tetris_panel:ignoreContentAdaptWithSize(false)
tetris_panel:setClippingEnabled(true)
tetris_panel:setBackGroundColorOpacity(102)
tetris_panel:setTouchEnabled(true);
tetris_panel:setLayoutComponentEnabled(true)
tetris_panel:setName("tetris_panel")
tetris_panel:setTag(32)
tetris_panel:setCascadeColorEnabled(true)
tetris_panel:setCascadeOpacityEnabled(true)
tetris_panel:setAnchorPoint(0.5000, 0.5000)
tetris_panel:setPosition(318.9999, 643.3920)
layout = ccui.LayoutComponent:bindLayoutComponent(tetris_panel)
layout:setPositionPercentX(0.4984)
layout:setPositionPercentY(0.5664)
layout:setPercentWidth(0.5953)
layout:setPercentHeight(0.4780)
layout:setSize({width = 381.0000, height = 543.0000})
layout:setLeftMargin(128.4999)
layout:setRightMargin(130.5001)
layout:setTopMargin(221.1080)
layout:setBottomMargin(371.8920)
panel:addChild(tetris_panel)

--Create btn_down_low
local btn_down_low = ccui.Button:create()
btn_down_low:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_down_low:loadTextureNormal("down.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_down_low:loadTexturePressed("down.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_down_low:loadTextureDisabled("down.png",1)
btn_down_low:setTitleFontSize(28)
btn_down_low:setScale9Enabled(true)
btn_down_low:setCapInsets({x = 15, y = 11, width = 66, height = 74})
btn_down_low:setLayoutComponentEnabled(true)
btn_down_low:setName("btn_down_low")
btn_down_low:setTag(15)
btn_down_low:setCascadeColorEnabled(true)
btn_down_low:setCascadeOpacityEnabled(true)
btn_down_low:setPosition(173.3403, 68.5792)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_down_low)
layout:setPositionPercentX(0.2708)
layout:setPositionPercentY(0.0604)
layout:setPercentWidth(0.1500)
layout:setPercentHeight(0.0845)
layout:setSize({width = 96.0000, height = 96.0000})
layout:setLeftMargin(125.3403)
layout:setRightMargin(418.6597)
layout:setTopMargin(1019.4210)
layout:setBottomMargin(20.5792)
panel:addChild(btn_down_low)

--Create btn_down
local btn_down = ccui.Button:create()
btn_down:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_down:loadTextureNormal("down_fast.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_down:loadTexturePressed("down_fast.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_down:loadTextureDisabled("down_fast.png",1)
btn_down:setTitleFontSize(28)
btn_down:setScale9Enabled(true)
btn_down:setCapInsets({x = 15, y = 11, width = 66, height = 74})
btn_down:setLayoutComponentEnabled(true)
btn_down:setName("btn_down")
btn_down:setTag(42)
btn_down:setCascadeColorEnabled(true)
btn_down:setCascadeOpacityEnabled(true)
btn_down:setPosition(173.6924, 214.0341)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_down)
layout:setPositionPercentX(0.2714)
layout:setPositionPercentY(0.1884)
layout:setPercentWidth(0.1500)
layout:setPercentHeight(0.0845)
layout:setSize({width = 96.0000, height = 96.0000})
layout:setLeftMargin(125.6924)
layout:setRightMargin(418.3076)
layout:setTopMargin(873.9659)
layout:setBottomMargin(166.0341)
panel:addChild(btn_down)

--Create btn_shift
local btn_shift = ccui.Button:create()
btn_shift:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_shift:loadTextureNormal("shift.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_shift:loadTexturePressed("shift.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_shift:loadTextureDisabled("shift.png",1)
btn_shift:setTitleFontSize(28)
btn_shift:setScale9Enabled(true)
btn_shift:setCapInsets({x = 15, y = 11, width = 123, height = 131})
btn_shift:setLayoutComponentEnabled(true)
btn_shift:setName("btn_shift")
btn_shift:setTag(27)
btn_shift:setCascadeColorEnabled(true)
btn_shift:setCascadeOpacityEnabled(true)
btn_shift:setPosition(527.2410, 116.4452)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_shift)
layout:setPositionPercentX(0.8238)
layout:setPositionPercentY(0.1025)
layout:setPercentWidth(0.2391)
layout:setPercentHeight(0.1347)
layout:setSize({width = 153.0000, height = 153.0000})
layout:setLeftMargin(450.7410)
layout:setRightMargin(36.2590)
layout:setTopMargin(943.0548)
layout:setBottomMargin(39.9452)
panel:addChild(btn_shift)

--Create btn_right
local btn_right = ccui.Button:create()
btn_right:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_right:loadTextureNormal("right.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_right:loadTexturePressed("right.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_right:loadTextureDisabled("right.png",1)
btn_right:setTitleFontSize(28)
btn_right:setScale9Enabled(true)
btn_right:setCapInsets({x = 15, y = 11, width = 66, height = 74})
btn_right:setLayoutComponentEnabled(true)
btn_right:setName("btn_right")
btn_right:setTag(26)
btn_right:setCascadeColorEnabled(true)
btn_right:setCascadeOpacityEnabled(true)
btn_right:setPosition(270.1837, 143.5790)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_right)
layout:setPositionPercentX(0.4222)
layout:setPositionPercentY(0.1264)
layout:setPercentWidth(0.1500)
layout:setPercentHeight(0.0845)
layout:setSize({width = 96.0000, height = 96.0000})
layout:setLeftMargin(222.1837)
layout:setRightMargin(321.8163)
layout:setTopMargin(944.4210)
layout:setBottomMargin(95.5790)
panel:addChild(btn_right)

--Create btn_left
local btn_left = ccui.Button:create()
btn_left:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_left:loadTextureNormal("left.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_left:loadTexturePressed("left.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_left:loadTextureDisabled("left.png",1)
btn_left:setTitleFontSize(28)
btn_left:setLayoutComponentEnabled(true)
btn_left:setName("btn_left")
btn_left:setTag(25)
btn_left:setCascadeColorEnabled(true)
btn_left:setCascadeOpacityEnabled(true)
btn_left:setPosition(79.0177, 143.5790)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_left)
layout:setPositionPercentX(0.1235)
layout:setPositionPercentY(0.1264)
layout:setPercentWidth(0.1500)
layout:setPercentHeight(0.0845)
layout:setSize({width = 96.0000, height = 96.0000})
layout:setLeftMargin(31.0177)
layout:setRightMargin(512.9823)
layout:setTopMargin(944.4210)
layout:setBottomMargin(95.5790)
panel:addChild(btn_left)

--Create lb_left_line
local lb_left_line = ccui.TextAtlas:create([[10]],
													"ui/number_atlas/number.png",
													30,
													50,
													"0")
lb_left_line:setLayoutComponentEnabled(true)
lb_left_line:setName("lb_left_line")
lb_left_line:setTag(25)
lb_left_line:setCascadeColorEnabled(true)
lb_left_line:setCascadeOpacityEnabled(true)
lb_left_line:setPosition(320.0001, 1066.2090)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_left_line)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.9386)
layout:setPercentWidth(0.0938)
layout:setPercentHeight(0.0440)
layout:setSize({width = 60.0000, height = 50.0000})
layout:setLeftMargin(290.0001)
layout:setRightMargin(289.9999)
layout:setTopMargin(44.7910)
layout:setBottomMargin(1041.2090)
panel:addChild(lb_left_line)

--Create btn_pause
local btn_pause = ccui.Button:create()
btn_pause:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_pause:loadTextureNormal("game_pause.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_pause:loadTexturePressed("game_pause.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
btn_pause:loadTextureDisabled("game_pause.png",1)
btn_pause:setTitleFontSize(14)
btn_pause:setTitleColor({r = 65, g = 65, b = 70})
btn_pause:setScale9Enabled(true)
btn_pause:setCapInsets({x = 15, y = 11, width = 45, height = 53})
btn_pause:setLayoutComponentEnabled(true)
btn_pause:setName("btn_pause")
btn_pause:setTag(46)
btn_pause:setCascadeColorEnabled(true)
btn_pause:setCascadeOpacityEnabled(true)
btn_pause:setPosition(427.0000, 229.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_pause)
layout:setPositionPercentX(0.6672)
layout:setPositionPercentY(0.2016)
layout:setPercentWidth(0.1172)
layout:setPercentHeight(0.0660)
layout:setSize({width = 75.0000, height = 75.0000})
layout:setLeftMargin(389.5000)
layout:setRightMargin(175.5000)
layout:setTopMargin(869.5000)
layout:setBottomMargin(191.5000)
panel:addChild(btn_pause)

--Create lb_left_bg
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/singlematch.plist")
local lb_left_bg = cc.Sprite:createWithSpriteFrameName("lb_left_bg.png")
lb_left_bg:setName("lb_left_bg")
lb_left_bg:setTag(42)
lb_left_bg:setCascadeColorEnabled(true)
lb_left_bg:setCascadeOpacityEnabled(true)
lb_left_bg:setPosition(120.0000, 1057.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_left_bg)
layout:setPositionPercentX(0.1875)
layout:setPositionPercentY(0.9305)
layout:setPercentWidth(0.3750)
layout:setPercentHeight(0.1408)
layout:setSize({width = 240.0000, height = 160.0000})
layout:setRightMargin(400.0000)
layout:setTopMargin(-1.0000)
layout:setBottomMargin(977.0000)
lb_left_bg:setBlendFunc({src = 1, dst = 771})
Scene:addChild(lb_left_bg)

--Create next_bg
local next_bg = ccui.Layout:create()
next_bg:ignoreContentAdaptWithSize(false)
next_bg:setClippingEnabled(false)
next_bg:setBackGroundColorOpacity(102)
next_bg:setTouchEnabled(true);
next_bg:setLayoutComponentEnabled(true)
next_bg:setName("next_bg")
next_bg:setTag(71)
next_bg:setCascadeColorEnabled(true)
next_bg:setCascadeOpacityEnabled(true)
next_bg:setPosition(87.4052, 56.8405)
layout = ccui.LayoutComponent:bindLayoutComponent(next_bg)
layout:setPositionPercentX(0.3642)
layout:setPositionPercentY(0.3553)
layout:setPercentWidth(0.3750)
layout:setPercentHeight(0.5625)
layout:setSize({width = 90.0000, height = 90.0000})
layout:setLeftMargin(87.4052)
layout:setRightMargin(62.5948)
layout:setTopMargin(13.1595)
layout:setBottomMargin(56.8405)
lb_left_bg:addChild(next_bg)

--Create next_bg_title
local next_bg_title = ccui.ImageView:create()
next_bg_title:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/common.plist")
next_bg_title:loadTexture("next.png",1)
next_bg_title:setLayoutComponentEnabled(true)
next_bg_title:setName("next_bg_title")
next_bg_title:setTag(66)
next_bg_title:setCascadeColorEnabled(true)
next_bg_title:setCascadeOpacityEnabled(true)
next_bg_title:setPosition(51.8657, 124.4441)
layout = ccui.LayoutComponent:bindLayoutComponent(next_bg_title)
layout:setPositionPercentX(0.2161)
layout:setPositionPercentY(0.7778)
layout:setPercentWidth(0.3333)
layout:setPercentHeight(0.1875)
layout:setSize({width = 80.0000, height = 30.0000})
layout:setLeftMargin(11.8657)
layout:setRightMargin(148.1343)
layout:setTopMargin(20.5559)
layout:setBottomMargin(109.4441)
lb_left_bg:addChild(next_bg_title)

--Create lb_right_bg
cc.SpriteFrameCache:getInstance():addSpriteFrames("ui/plist/singlematch.plist")
local lb_right_bg = cc.Sprite:createWithSpriteFrameName("lb_right_bg.png")
lb_right_bg:setName("lb_right_bg")
lb_right_bg:setTag(43)
lb_right_bg:setCascadeColorEnabled(true)
lb_right_bg:setCascadeOpacityEnabled(true)
lb_right_bg:setPosition(520.5939, 1057.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_right_bg)
layout:setPositionPercentX(0.8134)
layout:setPositionPercentY(0.9305)
layout:setPercentWidth(0.3750)
layout:setPercentHeight(0.1408)
layout:setSize({width = 240.0000, height = 160.0000})
layout:setLeftMargin(400.5939)
layout:setRightMargin(-0.5939)
layout:setTopMargin(-1.0000)
layout:setBottomMargin(977.0000)
lb_right_bg:setBlendFunc({src = 1, dst = 771})
Scene:addChild(lb_right_bg)

--Create fangkuai_bg
local fangkuai_bg = cc.Sprite:create("Default/Sprite.png")
fangkuai_bg:setName("fangkuai_bg")
fangkuai_bg:setTag(44)
fangkuai_bg:setCascadeColorEnabled(true)
fangkuai_bg:setCascadeOpacityEnabled(true)
fangkuai_bg:setPosition(144.4906, 106.2090)
layout = ccui.LayoutComponent:bindLayoutComponent(fangkuai_bg)
layout:setPositionPercentX(0.6020)
layout:setPositionPercentY(0.6638)
layout:setPercentWidth(0.1917)
layout:setPercentHeight(0.2875)
layout:setSize({width = 46.0000, height = 46.0000})
layout:setLeftMargin(121.4906)
layout:setRightMargin(72.5094)
layout:setTopMargin(30.7910)
layout:setBottomMargin(83.2090)
fangkuai_bg:setBlendFunc({src = 1, dst = 771})
lb_right_bg:addChild(fangkuai_bg)

--Create lb_result
local lb_result = ccui.TextAtlas:create([[100/100]],
													"ui/number_atlas/number_small.png",
													15,
													25,
													"/")
lb_result:setLayoutComponentEnabled(true)
lb_result:setName("lb_result")
lb_result:setTag(45)
lb_result:setCascadeColorEnabled(true)
lb_result:setCascadeOpacityEnabled(true)
lb_result:setPosition(144.4845, 73.6389)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_result)
layout:setPositionPercentX(0.6020)
layout:setPositionPercentY(0.4602)
layout:setPercentWidth(0.4375)
layout:setPercentHeight(0.1563)
layout:setSize({width = 105.0000, height = 25.0000})
layout:setLeftMargin(91.9845)
layout:setRightMargin(43.0155)
layout:setTopMargin(73.8611)
layout:setBottomMargin(61.1389)
lb_right_bg:addChild(lb_result)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Scene
return result;
end

return Result

