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

--Create bg
local bg = cc.Sprite:create("egyptbackground0.png")
bg:setName("bg")
bg:setTag(2)
bg:setCascadeColorEnabled(true)
bg:setCascadeOpacityEnabled(true)
bg:setAnchorPoint(0.0000, 0.0000)
bg:setPosition(-0.0001, 0.0002)
bg:setScaleX(1.7710)
layout = ccui.LayoutComponent:bindLayoutComponent(bg)
layout:setPositionPercentX(0.0000)
layout:setPositionPercentY(0.0000)
layout:setSize(cc.size(640.0000, 640.0000))
layout:setLeftMargin(-0.0001)
layout:setRightMargin(496.0001)
layout:setTopMargin(-0.0002)
layout:setBottomMargin(0.0002)
Scene:addChild(bg)

--Create box_1
local box_1 = ccui.Button:create()
box_1:ignoreContentAdaptWithSize(false)
box_1:loadTextureNormal("BattleScene/BS02.png",0)
box_1:loadTexturePressed("BattleScene/BS02.png",0)
box_1:setTitleFontSize(14)
box_1:setTitleColor(cc.c3b(65, 65, 70))
box_1:setScale9Enabled(true)
box_1:setCapInsets(cc.rect(15,11,17,17))
box_1:setLayoutComponentEnabled(true)
box_1:setName("box_1")
box_1:setTag(3)
box_1:setCascadeColorEnabled(true)
box_1:setCascadeOpacityEnabled(true)
box_1:setPosition(948.8684, 612.4339)
if callBackProvider~=nil then
      box_1:addTouchEventListener(callBackProvider("UITestScene.lua", box_1, "onTouch"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(box_1)
layout:setPositionPercentX(0.8353)
layout:setPositionPercentY(0.9569)
layout:setPercentWidth(0.0414)
layout:setPercentHeight(0.0609)
layout:setSize(cc.size(47.0000, 39.0000))
layout:setLeftMargin(925.3684)
layout:setRightMargin(163.6316)
layout:setTopMargin(8.0661)
layout:setBottomMargin(592.9339)
Scene:addChild(box_1)

--Create Button_2
local Button_2 = ccui.Button:create()
Button_2:ignoreContentAdaptWithSize(false)
Button_2:loadTextureNormal("BattleScene/BS05.png",0)
Button_2:loadTexturePressed("BattleScene/BS05.png",0)
Button_2:loadTextureDisabled("Default/Button_Disable.png",0)
Button_2:setTitleFontSize(14)
Button_2:setTitleColor(cc.c3b(65, 65, 70))
Button_2:setScale9Enabled(true)
Button_2:setCapInsets(cc.rect(15,11,33,49))
Button_2:setLayoutComponentEnabled(true)
Button_2:setName("Button_2")
Button_2:setTag(4)
Button_2:setCascadeColorEnabled(true)
Button_2:setCascadeOpacityEnabled(true)
Button_2:setPosition(1051.5216, 615.2205)
layout = ccui.LayoutComponent:bindLayoutComponent(Button_2)
layout:setPositionPercentX(0.9256)
layout:setPositionPercentY(0.9613)
layout:setPercentWidth(0.0555)
layout:setPercentHeight(0.1109)
layout:setSize(cc.size(63.0000, 71.0000))
layout:setLeftMargin(1020.0216)
layout:setRightMargin(52.9784)
layout:setTopMargin(-10.7205)
layout:setBottomMargin(579.7205)
Scene:addChild(Button_2)

--Create Sprite_2
local Sprite_2 = cc.Sprite:create("Common/Cn16.png")
Sprite_2:setName("Sprite_2")
Sprite_2:setTag(5)
Sprite_2:setCascadeColorEnabled(true)
Sprite_2:setCascadeOpacityEnabled(true)
Sprite_2:setPosition(90.2489, 613.2403)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_2)
layout:setPositionPercentX(0.0794)
layout:setPositionPercentY(0.9582)
layout:setSize(cc.size(57.0000, 53.0000))
layout:setLeftMargin(61.7489)
layout:setRightMargin(1017.2511)
layout:setTopMargin(0.2597)
layout:setBottomMargin(586.7403)
Scene:addChild(Sprite_2)

--Create Sprite_3
local Sprite_3 = cc.Sprite:create("BattleScene/BS12.png")
Sprite_3:setName("Sprite_3")
Sprite_3:setTag(8)
Sprite_3:setCascadeColorEnabled(true)
Sprite_3:setCascadeOpacityEnabled(true)
Sprite_3:setPosition(943.7261, 307.6487)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_3)
layout:setPositionPercentX(0.8307)
layout:setPositionPercentY(0.4807)
layout:setSize(cc.size(350.0000, 86.0000))
layout:setLeftMargin(768.7261)
layout:setRightMargin(17.2739)
layout:setTopMargin(289.3513)
layout:setBottomMargin(264.6487)
Scene:addChild(Sprite_3)

--Create LoadingBar_2
local LoadingBar_2 = ccui.LoadingBar:create()
LoadingBar_2:loadTexture("BattleScene/BS09.png",0)
LoadingBar_2:ignoreContentAdaptWithSize(false)
LoadingBar_2:setPercent(0)
LoadingBar_2:setLayoutComponentEnabled(true)
LoadingBar_2:setName("LoadingBar_2")
LoadingBar_2:setTag(9)
LoadingBar_2:setCascadeColorEnabled(true)
LoadingBar_2:setCascadeOpacityEnabled(true)
LoadingBar_2:setAnchorPoint(0.0000, 0.5000)
LoadingBar_2:setPosition(128.6784, 401.3507)
LoadingBar_2:setScaleX(2.6263)
layout = ccui.LayoutComponent:bindLayoutComponent(LoadingBar_2)
layout:setPositionPercentX(0.1133)
layout:setPositionPercentY(0.6271)
layout:setPercentWidth(0.0827)
layout:setPercentHeight(0.0156)
layout:setSize(cc.size(94.0000, 10.0000))
layout:setLeftMargin(128.6784)
layout:setRightMargin(913.3216)
layout:setTopMargin(233.6493)
layout:setBottomMargin(396.3507)
Scene:addChild(LoadingBar_2)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize(cc.size(0, 0))
Text_1:setFontSize(20)
Text_1:setString([[你好]])
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(10)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setPosition(449.6373, 400.7302)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.3958)
layout:setPositionPercentY(0.6261)
layout:setSize(cc.size(40.0000, 20.0000))
layout:setLeftMargin(429.6373)
layout:setRightMargin(666.3627)
layout:setTopMargin(229.2698)
layout:setBottomMargin(390.7302)
Scene:addChild(Text_1)

--Create ListView_1
local ListView_1 = ccui.ListView:create()
ListView_1:setDirection(1)
ListView_1:setGravity(0)
ListView_1:ignoreContentAdaptWithSize(false)
ListView_1:setBackGroundColorType(1)
ListView_1:setBackGroundColor(cc.c3b(150, 150, 255))
ListView_1:setBackGroundColorOpacity(102)
ListView_1:setLayoutComponentEnabled(true)
ListView_1:setName("ListView_1")
ListView_1:setTag(11)
ListView_1:setCascadeColorEnabled(true)
ListView_1:setCascadeOpacityEnabled(true)
ListView_1:setAnchorPoint(0.0000, 0.0000)
ListView_1:setPosition(756.8203, 368.1802)
if callBackProvider~=nil then
      ListView_1:addClickEventListener(callBackProvider("UITestScene.lua", ListView_1, "sde"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(ListView_1)
layout:setPositionPercentX(0.6662)
layout:setPositionPercentY(0.5753)
layout:setSize(cc.size(200.0000, 200.0000))
layout:setLeftMargin(756.8203)
layout:setRightMargin(179.1797)
layout:setTopMargin(71.8198)
layout:setBottomMargin(368.1802)
Scene:addChild(ListView_1)

--Create Text_2
local Text_2 = ccui.Text:create()
Text_2:ignoreContentAdaptWithSize(true)
Text_2:setTextAreaSize(cc.size(0, 0))
Text_2:setFontSize(20)
Text_2:setString([[你好]])
Text_2:setLayoutComponentEnabled(true)
Text_2:setName("Text_2")
Text_2:setTag(13)
Text_2:setCascadeColorEnabled(true)
Text_2:setCascadeOpacityEnabled(true)
Text_2:setPosition(20.0000, 190.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_2)
layout:setPositionPercentX(0.1000)
layout:setPositionPercentY(0.9500)
layout:setSize(cc.size(40.0000, 20.0000))
layout:setLeftMargin(0.0000)
layout:setRightMargin(160.0000)
layout:setTopMargin(0.0000)
layout:setBottomMargin(180.0000)
ListView_1:pushBackCustomItem(Text_2)

--Create Text_3
local Text_3 = ccui.Text:create()
Text_3:ignoreContentAdaptWithSize(true)
Text_3:setTextAreaSize(cc.size(0, 0))
Text_3:setFontSize(20)
Text_3:setString([[你好1]])
Text_3:setLayoutComponentEnabled(true)
Text_3:setName("Text_3")
Text_3:setLocalZOrder(1)
Text_3:setTag(14)
Text_3:setCascadeColorEnabled(true)
Text_3:setCascadeOpacityEnabled(true)
Text_3:setPosition(25.0000, 170.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_3)
layout:setPositionPercentX(0.1250)
layout:setPositionPercentY(0.8500)
layout:setSize(cc.size(50.0000, 20.0000))
layout:setLeftMargin(0.0000)
layout:setRightMargin(150.0000)
layout:setTopMargin(20.0000)
layout:setBottomMargin(160.0000)
ListView_1:pushBackCustomItem(Text_3)

--Create Slider_3
local Slider_3 = ccui.Slider:create()
Slider_3:ignoreContentAdaptWithSize(false)
Slider_3:loadBarTexture("Default/Slider_Back.png",0)
Slider_3:loadProgressBarTexture("Default/Slider_PressBar.png",0)
Slider_3:loadSlidBallTextureNormal("Default/SliderNode_Normal.png",0)
Slider_3:loadSlidBallTexturePressed("Default/SliderNode_Press.png",0)
Slider_3:loadSlidBallTextureDisabled("Default/SliderNode_Disable.png",0)
Slider_3:setPercent(50)
Slider_3:setLayoutComponentEnabled(true)
Slider_3:setName("Slider_3")
Slider_3:setTag(16)
Slider_3:setCascadeColorEnabled(true)
Slider_3:setCascadeOpacityEnabled(true)
Slider_3:setPosition(559.3917, 290.1700)
layout = ccui.LayoutComponent:bindLayoutComponent(Slider_3)
layout:setPositionPercentX(0.4924)
layout:setPositionPercentY(0.4534)
layout:setSize(cc.size(200.0000, 14.0000))
layout:setLeftMargin(459.3917)
layout:setRightMargin(476.6083)
layout:setTopMargin(342.8300)
layout:setBottomMargin(283.1700)
Scene:addChild(Slider_3)

--Create info_text
local info_text = ccui.Text:create()
info_text:ignoreContentAdaptWithSize(true)
info_text:setTextAreaSize(cc.size(0, 0))
info_text:setFontSize(24)
info_text:setString([[状态显示
]])
info_text:setLayoutComponentEnabled(true)
info_text:setName("info_text")
info_text:setTag(17)
info_text:setCascadeColorEnabled(true)
info_text:setCascadeOpacityEnabled(true)
info_text:setPosition(564.0000, 514.0000)
info_text:setColor(cc.c3b(30, 144, 255))
layout = ccui.LayoutComponent:bindLayoutComponent(info_text)
layout:setPositionPercentX(0.4965)
layout:setPositionPercentY(0.8031)
layout:setSize(cc.size(96.0000, 48.0000))
layout:setLeftMargin(516.0000)
layout:setRightMargin(524.0000)
layout:setTopMargin(102.0000)
layout:setBottomMargin(490.0000)
Scene:addChild(info_text)

--Create checkBox
local checkBox = ccui.CheckBox:create()
checkBox:ignoreContentAdaptWithSize(false)
checkBox:loadTextureBackGround("Default/CheckBox_Normal.png",0)
checkBox:loadTextureBackGroundSelected("Default/CheckBox_Press.png",0)
checkBox:loadTextureBackGroundDisabled("Default/CheckBox_Disable.png",0)
checkBox:loadTextureFrontCross("Default/CheckBoxNode_Normal.png",0)
checkBox:loadTextureFrontCrossDisabled("Default/CheckBoxNode_Disable.png",0)
checkBox:setSelected(true)
checkBox:setLayoutComponentEnabled(true)
checkBox:setName("checkBox")
checkBox:setTag(18)
checkBox:setCascadeColorEnabled(true)
checkBox:setCascadeOpacityEnabled(true)
checkBox:setAnchorPoint(1.0000, 0.5000)
checkBox:setPosition(574.0000, 394.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(checkBox)
layout:setPositionPercentX(0.5053)
layout:setPositionPercentY(0.6156)
layout:setSize(cc.size(40.0000, 40.0000))
layout:setLeftMargin(534.0000)
layout:setRightMargin(562.0000)
layout:setTopMargin(226.0000)
layout:setBottomMargin(374.0000)
Scene:addChild(checkBox)

--Create scrollView
local scrollView = ccui.ScrollView:create()
scrollView:setBounceEnabled(true)
scrollView:setInnerContainerSize(cc.size(200,300))
scrollView:ignoreContentAdaptWithSize(false)
scrollView:setBackGroundColorType(1)
scrollView:setBackGroundColor(cc.c3b(144, 238, 144))
scrollView:setBackGroundColorOpacity(102)
scrollView:setLayoutComponentEnabled(true)
scrollView:setName("scrollView")
scrollView:setTag(19)
scrollView:setCascadeColorEnabled(true)
scrollView:setCascadeOpacityEnabled(true)
scrollView:setAnchorPoint(0.0000, 0.0000)
scrollView:setPosition(152.0000, 128.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(scrollView)
layout:setPositionPercentX(0.1338)
layout:setPositionPercentY(0.2000)
layout:setSize(cc.size(200.0000, 200.0000))
layout:setLeftMargin(152.0000)
layout:setRightMargin(784.0000)
layout:setTopMargin(312.0000)
layout:setBottomMargin(128.0000)
Scene:addChild(scrollView)

--Create PageView_1
local PageView_1 = ccui.PageView:create()
PageView_1:ignoreContentAdaptWithSize(false)
PageView_1:setBackGroundColorType(1)
PageView_1:setBackGroundColor(cc.c3b(150, 150, 100))
PageView_1:setBackGroundColorOpacity(102)
PageView_1:setLayoutComponentEnabled(true)
PageView_1:setName("PageView_1")
PageView_1:setTag(28)
PageView_1:setCascadeColorEnabled(true)
PageView_1:setCascadeOpacityEnabled(true)
PageView_1:setAnchorPoint(0.0000, 0.0000)
PageView_1:setPosition(540.6909, 29.1632)
PageView_1:setScaleY(1.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(PageView_1)
layout:setPositionPercentX(0.4760)
layout:setPositionPercentY(0.0456)
layout:setSize(cc.size(200.0000, 200.0000))
layout:setLeftMargin(540.6909)
layout:setRightMargin(395.3091)
layout:setTopMargin(410.8368)
layout:setBottomMargin(29.1632)
Scene:addChild(PageView_1)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Scene
return result;
end

return Result
