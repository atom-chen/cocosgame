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
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(34)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
panel:setAnchorPoint(0.5000, 0.5000)
panel:setPosition(320.0000, 567.9998)
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 640.0000, height = 1136.0000})
layout:setTopMargin(0.0002)
layout:setBottomMargin(-0.0002)
Scene:addChild(panel)

--Create top_panel
local top_panel = ccui.Layout:create()
top_panel:ignoreContentAdaptWithSize(false)
top_panel:setClippingEnabled(false)
top_panel:setBackGroundColorOpacity(102)
top_panel:setTouchEnabled(true);
top_panel:setLayoutComponentEnabled(true)
top_panel:setName("top_panel")
top_panel:setTag(120)
top_panel:setCascadeColorEnabled(true)
top_panel:setCascadeOpacityEnabled(true)
top_panel:setAnchorPoint(0.5000, 0.5000)
top_panel:setPosition(318.6400, 1094.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(top_panel)
layout:setPositionPercentX(0.4979)
layout:setPositionPercentY(0.9630)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(0.0845)
layout:setSize({width = 640.0000, height = 96.0000})
layout:setLeftMargin(-1.3600)
layout:setRightMargin(1.3600)
layout:setTopMargin(-6.0000)
layout:setBottomMargin(1046.0000)
panel:addChild(top_panel)

--Create bar_bg
local bar_bg = ccui.ImageView:create()
bar_bg:ignoreContentAdaptWithSize(false)
bar_bg:loadTexture("ui/tetris/power/main_bar_bg.png",0)
bar_bg:setScale9Enabled(true)
bar_bg:setCapInsets({x = 50, y = 0, width = 50, height = 96})
bar_bg:setLayoutComponentEnabled(true)
bar_bg:setName("bar_bg")
bar_bg:setTag(603)
bar_bg:setCascadeColorEnabled(true)
bar_bg:setCascadeOpacityEnabled(true)
bar_bg:setPosition(320.9998, 49.9997)
layout = ccui.LayoutComponent:bindLayoutComponent(bar_bg)
layout:setPositionPercentX(0.5016)
layout:setPositionPercentY(0.5208)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 640.0000, height = 96.0000})
layout:setLeftMargin(0.9998)
layout:setRightMargin(-0.9998)
layout:setTopMargin(-1.9997)
layout:setBottomMargin(1.9997)
top_panel:addChild(bar_bg)

--Create energy_bg_3
local energy_bg_3 = cc.Sprite:create("ui/tetris/power/bar_bg2.png")
energy_bg_3:setName("energy_bg_3")
energy_bg_3:setTag(605)
energy_bg_3:setCascadeColorEnabled(true)
energy_bg_3:setCascadeOpacityEnabled(true)
energy_bg_3:setPosition(143.4615, 49.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(energy_bg_3)
layout:setPositionPercentX(0.2242)
layout:setPositionPercentY(0.5104)
layout:setPercentWidth(0.3688)
layout:setPercentHeight(0.6250)
layout:setSize({width = 236.0000, height = 60.0000})
layout:setLeftMargin(25.4615)
layout:setRightMargin(378.5385)
layout:setTopMargin(17.0000)
layout:setBottomMargin(19.0000)
energy_bg_3:setBlendFunc({src = 1, dst = 771})
top_panel:addChild(energy_bg_3)

--Create energy_bg
local energy_bg = cc.Sprite:create("ui/tetris/power/energy_bg2.png")
energy_bg:setName("energy_bg")
energy_bg:setTag(286)
energy_bg:setCascadeColorEnabled(true)
energy_bg:setCascadeOpacityEnabled(true)
energy_bg:setPosition(39.0927, 29.9735)
layout = ccui.LayoutComponent:bindLayoutComponent(energy_bg)
layout:setPositionPercentX(0.1656)
layout:setPositionPercentY(0.4996)
layout:setPercentWidth(0.1864)
layout:setPercentHeight(0.7333)
layout:setSize({width = 44.0000, height = 44.0000})
layout:setLeftMargin(17.0927)
layout:setRightMargin(174.9073)
layout:setTopMargin(8.0266)
layout:setBottomMargin(7.9735)
energy_bg:setBlendFunc({src = 1, dst = 771})
energy_bg_3:addChild(energy_bg)

--Create lb_energy
local lb_energy = ccui.Text:create()
lb_energy:ignoreContentAdaptWithSize(true)
lb_energy:setTextAreaSize({width = 0, height = 0})
lb_energy:setFontSize(28)
lb_energy:setString([[10000]])
lb_energy:enableShadow({r = 34, g = 93, b = 104, a = 255}, {width = 1, height = -1}, 0)
lb_energy:setLayoutComponentEnabled(true)
lb_energy:setName("lb_energy")
lb_energy:setTag(607)
lb_energy:setCascadeColorEnabled(true)
lb_energy:setCascadeOpacityEnabled(true)
lb_energy:setPosition(132.9890, 31.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_energy)
layout:setPositionPercentX(0.5635)
layout:setPositionPercentY(0.5167)
layout:setPercentWidth(0.2966)
layout:setPercentHeight(0.4667)
layout:setSize({width = 70.0000, height = 28.0000})
layout:setLeftMargin(97.9890)
layout:setRightMargin(68.0110)
layout:setTopMargin(15.0000)
layout:setBottomMargin(17.0000)
energy_bg_3:addChild(lb_energy)

--Create btn_buy_energy
local btn_buy_energy = ccui.Button:create()
btn_buy_energy:ignoreContentAdaptWithSize(false)
btn_buy_energy:loadTextureNormal("ui/tetris/power/pay_bg.png",0)
btn_buy_energy:loadTexturePressed("ui/tetris/power/pay_bg.png",0)
btn_buy_energy:loadTextureDisabled("ui/tetris/power/pay_bg.png",0)
btn_buy_energy:setTitleFontSize(14)
btn_buy_energy:setTitleColor({r = 65, g = 65, b = 70})
btn_buy_energy:setScale9Enabled(true)
btn_buy_energy:setCapInsets({x = 15, y = 11, width = 20, height = 58})
btn_buy_energy:setLayoutComponentEnabled(true)
btn_buy_energy:setName("btn_buy_energy")
btn_buy_energy:setTag(609)
btn_buy_energy:setCascadeColorEnabled(true)
btn_buy_energy:setCascadeOpacityEnabled(true)
btn_buy_energy:setPosition(229.3618, 31.3039)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_buy_energy)
layout:setPositionPercentX(0.9719)
layout:setPositionPercentY(0.5217)
layout:setPercentWidth(0.2119)
layout:setPercentHeight(1.3333)
layout:setSize({width = 50.0000, height = 80.0000})
layout:setLeftMargin(204.3618)
layout:setRightMargin(-18.3618)
layout:setTopMargin(-11.3039)
layout:setBottomMargin(-8.6961)
energy_bg_3:addChild(btn_buy_energy)

--Create item_bg_2
local item_bg_2 = cc.Sprite:create("ui/tetris/power/bar_bg2.png")
item_bg_2:setName("item_bg_2")
item_bg_2:setTag(604)
item_bg_2:setCascadeColorEnabled(true)
item_bg_2:setCascadeOpacityEnabled(true)
item_bg_2:setPosition(471.0900, 49.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(item_bg_2)
layout:setPositionPercentX(0.7361)
layout:setPositionPercentY(0.5104)
layout:setPercentWidth(0.3688)
layout:setPercentHeight(0.6250)
layout:setSize({width = 236.0000, height = 60.0000})
layout:setLeftMargin(353.0900)
layout:setRightMargin(50.9100)
layout:setTopMargin(17.0000)
layout:setBottomMargin(19.0000)
item_bg_2:setBlendFunc({src = 1, dst = 771})
top_panel:addChild(item_bg_2)

--Create gem_bg
local gem_bg = cc.Sprite:create("ui/tetris/power/gem_bg.png")
gem_bg:setName("gem_bg")
gem_bg:setTag(287)
gem_bg:setCascadeColorEnabled(true)
gem_bg:setCascadeOpacityEnabled(true)
gem_bg:setPosition(33.0082, 29.9735)
layout = ccui.LayoutComponent:bindLayoutComponent(gem_bg)
layout:setPositionPercentX(0.1399)
layout:setPositionPercentY(0.4996)
layout:setPercentWidth(0.1864)
layout:setPercentHeight(0.7333)
layout:setSize({width = 44.0000, height = 44.0000})
layout:setLeftMargin(11.0082)
layout:setRightMargin(180.9918)
layout:setTopMargin(8.0266)
layout:setBottomMargin(7.9735)
gem_bg:setBlendFunc({src = 1, dst = 771})
item_bg_2:addChild(gem_bg)

--Create lb_item
local lb_item = ccui.Text:create()
lb_item:ignoreContentAdaptWithSize(true)
lb_item:setTextAreaSize({width = 0, height = 0})
lb_item:setFontSize(28)
lb_item:setString([[10000]])
lb_item:enableShadow({r = 34, g = 93, b = 104, a = 255}, {width = 1, height = -1}, 0)
lb_item:setLayoutComponentEnabled(true)
lb_item:setName("lb_item")
lb_item:setTag(608)
lb_item:setCascadeColorEnabled(true)
lb_item:setCascadeOpacityEnabled(true)
lb_item:setPosition(135.9896, 31.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_item)
layout:setPositionPercentX(0.5762)
layout:setPositionPercentY(0.5167)
layout:setPercentWidth(0.2966)
layout:setPercentHeight(0.4667)
layout:setSize({width = 70.0000, height = 28.0000})
layout:setLeftMargin(100.9896)
layout:setRightMargin(65.0104)
layout:setTopMargin(15.0000)
layout:setBottomMargin(17.0000)
item_bg_2:addChild(lb_item)

--Create btn_buy_item
local btn_buy_item = ccui.Button:create()
btn_buy_item:ignoreContentAdaptWithSize(false)
btn_buy_item:loadTextureNormal("ui/tetris/power/pay_bg.png",0)
btn_buy_item:loadTexturePressed("ui/tetris/power/pay_bg.png",0)
btn_buy_item:loadTextureDisabled("ui/tetris/power/pay_bg.png",0)
btn_buy_item:setTitleFontSize(14)
btn_buy_item:setTitleColor({r = 65, g = 65, b = 70})
btn_buy_item:setScale9Enabled(true)
btn_buy_item:setCapInsets({x = 15, y = 11, width = 20, height = 58})
btn_buy_item:setLayoutComponentEnabled(true)
btn_buy_item:setName("btn_buy_item")
btn_buy_item:setTag(606)
btn_buy_item:setCascadeColorEnabled(true)
btn_buy_item:setCascadeOpacityEnabled(true)
btn_buy_item:setPosition(228.3611, 31.3039)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_buy_item)
layout:setPositionPercentX(0.9676)
layout:setPositionPercentY(0.5217)
layout:setPercentWidth(0.2119)
layout:setPercentHeight(1.3333)
layout:setSize({width = 50.0000, height = 80.0000})
layout:setLeftMargin(203.3611)
layout:setRightMargin(-17.3611)
layout:setTopMargin(-11.3039)
layout:setBottomMargin(-8.6961)
item_bg_2:addChild(btn_buy_item)

--Create bottom_panel
local bottom_panel = ccui.Layout:create()
bottom_panel:ignoreContentAdaptWithSize(false)
bottom_panel:setClippingEnabled(false)
bottom_panel:setBackGroundColorOpacity(102)
bottom_panel:setTouchEnabled(true);
bottom_panel:setLayoutComponentEnabled(true)
bottom_panel:setName("bottom_panel")
bottom_panel:setTag(121)
bottom_panel:setCascadeColorEnabled(true)
bottom_panel:setCascadeOpacityEnabled(true)
bottom_panel:setAnchorPoint(0.5000, 0.5000)
bottom_panel:setPosition(320.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bottom_panel)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.0440)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(0.0880)
layout:setSize({width = 640.0000, height = 100.0000})
layout:setTopMargin(1036.0000)
panel:addChild(bottom_panel)

--Create bottom_bg
local bottom_bg = cc.Sprite:create("ui/tetris/power/bar_bg.png")
bottom_bg:setName("bottom_bg")
bottom_bg:setTag(306)
bottom_bg:setCascadeColorEnabled(true)
bottom_bg:setCascadeOpacityEnabled(true)
bottom_bg:setPosition(320.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bottom_bg)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.3313)
layout:setPercentHeight(1.0000)
layout:setSize({width = 852.0000, height = 100.0000})
layout:setLeftMargin(-106.0000)
layout:setRightMargin(-106.0000)
bottom_bg:setBlendFunc({src = 1, dst = 771})
bottom_panel:addChild(bottom_bg)

--Create bar1
local bar1 = cc.Sprite:create("ui/tetris/power/bar_unchoose.png")
bar1:setName("bar1")
bar1:setTag(307)
bar1:setCascadeColorEnabled(true)
bar1:setCascadeOpacityEnabled(true)
bar1:setPosition(82.5000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bar1)
layout:setPositionPercentX(0.1289)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.2578)
layout:setPercentHeight(1.0000)
layout:setSize({width = 165.0000, height = 100.0000})
layout:setRightMargin(475.0000)
bar1:setBlendFunc({src = 1, dst = 771})
bottom_panel:addChild(bar1)

--Create bar2
local bar2 = cc.Sprite:create("ui/tetris/power/bar_unchoose.png")
bar2:setName("bar2")
bar2:setTag(312)
bar2:setCascadeColorEnabled(true)
bar2:setCascadeOpacityEnabled(true)
bar2:setPosition(320.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bar2)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.2578)
layout:setPercentHeight(1.0000)
layout:setSize({width = 165.0000, height = 100.0000})
layout:setLeftMargin(237.5000)
layout:setRightMargin(237.5000)
bar2:setBlendFunc({src = 1, dst = 771})
bottom_panel:addChild(bar2)

--Create bar3
local bar3 = cc.Sprite:create("ui/tetris/power/bar_unchoose.png")
bar3:setName("bar3")
bar3:setTag(313)
bar3:setCascadeColorEnabled(true)
bar3:setCascadeOpacityEnabled(true)
bar3:setPosition(557.5000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bar3)
layout:setPositionPercentX(0.8711)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.2578)
layout:setPercentHeight(1.0000)
layout:setSize({width = 165.0000, height = 100.0000})
layout:setLeftMargin(475.0000)
bar3:setBlendFunc({src = 1, dst = 771})
bottom_panel:addChild(bar3)

--Create bar_choose
local bar_choose = cc.Sprite:create("ui/tetris/power/bar_choose.png")
bar_choose:setName("bar_choose")
bar_choose:setTag(315)
bar_choose:setCascadeColorEnabled(true)
bar_choose:setCascadeOpacityEnabled(true)
bar_choose:setPosition(320.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bar_choose)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.4844)
layout:setPercentHeight(1.0000)
layout:setSize({width = 310.0000, height = 100.0000})
layout:setLeftMargin(165.0000)
layout:setRightMargin(165.0000)
bar_choose:setBlendFunc({src = 1, dst = 771})
bottom_panel:addChild(bar_choose)

--Create bar_light
local bar_light = cc.Sprite:create("ui/tetris/power/bar_light.png")
bar_light:setName("bar_light")
bar_light:setTag(314)
bar_light:setCascadeColorEnabled(true)
bar_light:setCascadeOpacityEnabled(true)
bar_light:setPosition(320.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(bar_light)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.4844)
layout:setPercentHeight(1.0000)
layout:setSize({width = 310.0000, height = 100.0000})
layout:setLeftMargin(165.0000)
layout:setRightMargin(165.0000)
bar_light:setBlendFunc({src = 1, dst = 771})
bottom_panel:addChild(bar_light)

--Create btn_left
local btn_left = ccui.Button:create()
btn_left:ignoreContentAdaptWithSize(false)
btn_left:loadTextureNormal("ui/tetris/power/btn_arrow.png",0)
btn_left:loadTexturePressed("ui/tetris/power/btn_arrow.png",0)
btn_left:loadTextureDisabled("ui/tetris/power/btn_arrow.png",0)
btn_left:setTitleFontSize(14)
btn_left:setTitleColor({r = 65, g = 65, b = 70})
btn_left:setScale9Enabled(true)
btn_left:setCapInsets({x = 7, y = 11, width = 8, height = 14})
btn_left:setLayoutComponentEnabled(true)
btn_left:setName("btn_left")
btn_left:setTag(316)
btn_left:setCascadeColorEnabled(true)
btn_left:setCascadeOpacityEnabled(true)
btn_left:setPosition(175.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_left)
layout:setPositionPercentX(0.2734)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.0344)
layout:setPercentHeight(0.3600)
layout:setSize({width = 22.0000, height = 36.0000})
layout:setLeftMargin(164.0000)
layout:setRightMargin(454.0000)
layout:setTopMargin(32.0000)
layout:setBottomMargin(32.0000)
bottom_panel:addChild(btn_left)

--Create btn_right
local btn_right = ccui.Button:create()
btn_right:ignoreContentAdaptWithSize(false)
btn_right:loadTextureNormal("ui/tetris/power/btn_arrow.png",0)
btn_right:loadTexturePressed("ui/tetris/power/btn_arrow.png",0)
btn_right:loadTextureDisabled("ui/tetris/power/btn_arrow.png",0)
btn_right:setTitleFontSize(14)
btn_right:setTitleColor({r = 65, g = 65, b = 70})
btn_right:setScale9Enabled(true)
btn_right:setCapInsets({x = 7, y = 11, width = 8, height = 14})
btn_right:setLayoutComponentEnabled(true)
btn_right:setName("btn_right")
btn_right:setTag(317)
btn_right:setCascadeColorEnabled(true)
btn_right:setCascadeOpacityEnabled(true)
btn_right:setPosition(463.0000, 50.0000)
btn_right:setRotationSkewX(180.0000)
btn_right:setRotationSkewY(180.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_right)
layout:setPositionPercentX(0.7234)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.0344)
layout:setPercentHeight(0.3600)
layout:setSize({width = 22.0000, height = 36.0000})
layout:setLeftMargin(452.0000)
layout:setRightMargin(166.0000)
layout:setTopMargin(32.0000)
layout:setBottomMargin(32.0000)
bottom_panel:addChild(btn_right)

--Create lb_intro
local lb_intro = ccui.Text:create()
lb_intro:ignoreContentAdaptWithSize(true)
lb_intro:setTextAreaSize({width = 0, height = 0})
lb_intro:setFontSize(24)
lb_intro:setString([[副 本]])
lb_intro:enableShadow({r = 0, g = 0, b = 0, a = 255}, {width = 2, height = -2}, 0)
lb_intro:setLayoutComponentEnabled(true)
lb_intro:setName("lb_intro")
lb_intro:setTag(318)
lb_intro:setCascadeColorEnabled(true)
lb_intro:setCascadeOpacityEnabled(true)
lb_intro:setPosition(320.0000, 20.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(lb_intro)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.2000)
layout:setPercentWidth(0.0938)
layout:setPercentHeight(0.2400)
layout:setSize({width = 60.0000, height = 24.0000})
layout:setLeftMargin(290.0000)
layout:setRightMargin(290.0000)
layout:setTopMargin(68.0000)
layout:setBottomMargin(8.0000)
bottom_panel:addChild(lb_intro)

--Create btn_single
local btn_single = ccui.Button:create()
btn_single:ignoreContentAdaptWithSize(false)
btn_single:loadTextureNormal("ui/tetris/power/btn_single.png",0)
btn_single:loadTexturePressed("ui/tetris/power/btn_single.png",0)
btn_single:loadTextureDisabled("ui/tetris/power/btn_single.png",0)
btn_single:setTitleFontSize(14)
btn_single:setTitleColor({r = 65, g = 65, b = 70})
btn_single:setScale9Enabled(true)
btn_single:setCapInsets({x = 15, y = 11, width = 74, height = 88})
btn_single:setLayoutComponentEnabled(true)
btn_single:setName("btn_single")
btn_single:setTag(310)
btn_single:setCascadeColorEnabled(true)
btn_single:setCascadeOpacityEnabled(true)
btn_single:setPosition(320.0000, 85.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_single)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.8500)
layout:setPercentWidth(0.1625)
layout:setPercentHeight(1.1000)
layout:setSize({width = 104.0000, height = 110.0000})
layout:setLeftMargin(268.0000)
layout:setRightMargin(268.0000)
layout:setTopMargin(-40.0000)
layout:setBottomMargin(30.0000)
bottom_panel:addChild(btn_single)

--Create btn_shop
local btn_shop = ccui.Button:create()
btn_shop:ignoreContentAdaptWithSize(false)
btn_shop:loadTextureNormal("ui/tetris/power/btn_shop.png",0)
btn_shop:loadTexturePressed("ui/tetris/power/btn_shop.png",0)
btn_shop:loadTextureDisabled("ui/tetris/power/btn_shop.png",0)
btn_shop:setTitleFontSize(14)
btn_shop:setTitleColor({r = 65, g = 65, b = 70})
btn_shop:setScale9Enabled(true)
btn_shop:setCapInsets({x = 15, y = 11, width = 74, height = 88})
btn_shop:setLayoutComponentEnabled(true)
btn_shop:setName("btn_shop")
btn_shop:setTag(309)
btn_shop:setCascadeColorEnabled(true)
btn_shop:setCascadeOpacityEnabled(true)
btn_shop:setPosition(82.5000, 55.0000)
btn_shop:setScaleX(0.8000)
btn_shop:setScaleY(0.8000)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_shop)
layout:setPositionPercentX(0.1289)
layout:setPositionPercentY(0.5500)
layout:setPercentWidth(0.1625)
layout:setPercentHeight(1.1000)
layout:setSize({width = 104.0000, height = 110.0000})
layout:setLeftMargin(30.5000)
layout:setRightMargin(505.5000)
layout:setTopMargin(-10.0000)
bottom_panel:addChild(btn_shop)

--Create btn_multi
local btn_multi = ccui.Button:create()
btn_multi:ignoreContentAdaptWithSize(false)
btn_multi:loadTextureNormal("ui/tetris/power/btn_multi.png",0)
btn_multi:loadTexturePressed("ui/tetris/power/btn_multi.png",0)
btn_multi:loadTextureDisabled("ui/tetris/power/btn_multi.png",0)
btn_multi:setTitleFontSize(14)
btn_multi:setTitleColor({r = 65, g = 65, b = 70})
btn_multi:setScale9Enabled(true)
btn_multi:setCapInsets({x = 15, y = 11, width = 74, height = 88})
btn_multi:setLayoutComponentEnabled(true)
btn_multi:setName("btn_multi")
btn_multi:setTag(311)
btn_multi:setCascadeColorEnabled(true)
btn_multi:setCascadeOpacityEnabled(true)
btn_multi:setPosition(557.5000, 55.0000)
btn_multi:setScaleX(0.8000)
btn_multi:setScaleY(0.8000)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_multi)
layout:setPositionPercentX(0.8711)
layout:setPositionPercentY(0.5500)
layout:setPercentWidth(0.1625)
layout:setPercentHeight(1.1000)
layout:setSize({width = 104.0000, height = 110.0000})
layout:setLeftMargin(505.5000)
layout:setRightMargin(30.5000)
layout:setTopMargin(-10.0000)
bottom_panel:addChild(btn_multi)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Scene
return result;
end

return Result
