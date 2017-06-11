--
-- Created by IntelliJ IDEA.
-- User: wangys
-- Date: 2015/7/28
-- Time: 11:06
-- To change this template use File | Settings | File Templates.
-- TetrisPowerFailPanel 俄罗斯方块
-- 副本开始弹框
local TetrisPowerFailPanel = class("TetrisPowerFailPanel", BasePanel)
local TetrisPowerConf = import("..data.TetrisPowerConf")

--------------------------------
-- 创建方法
-- @function [parent=#TetrisPowerFailPanel] onCreate
function TetrisPowerFailPanel:onCreate(powerId, armyId, score, needScore, parent)
    local layout = require("layout.PowerFailPopup").create()

    self.parent = parent
    self.powerId = powerId
    self.armyId = armyId
    self.powerConf = TetrisPowerConf.loadConfig(powerId, armyId)
    self.powerDetailconf = TetrisPowerConf.loadDetailConfig(powerId, armyId)

    self.lbPowerName = layout['lb_powername']
    self.btnRetry = layout['btn_powerretry']
    self.btnClose = layout['btn_close']
    self.lbTarget = layout['lb_target']
    self.spTarget = layout['sp_target']

    -- 设置关卡名称
    self.lbPowerName:setString(string.format("第 %s 关", armyId))

    -- 设置分数
    self.lbTarget:setString(score .. "/" .. needScore)

    -- 更新方块内容
    self:setTargetBlock()

    self:addLayoutWithMask(layout, "layout.ModalMask")

    -- 减少生命
    utils.gameArchive:loseLife(1)

    self.btnRetry:addClickEventListener(handler(self, self.powerRetry))
    self.btnClose:addClickEventListener(function() 
        self:getScene():popPanel()
        self:getScene():popPanel()
    end)
end

--------------------------------
-- 点击挑战副本
-- @function [parent=#TetrisPowerFailPanel] powerContinue
function TetrisPowerFailPanel:powerRetry()
    if utils.gameArchive:queryData("lifes") < 1 then
        Tips.showSceneTips("您的生命值已耗费完毕，请等待恢复", 2)
        return
    end
    
    local parent = self.parent
    self:getScene():popPanel()
    parent:restartGame()
end

--------------------------------
-- 设置目标方块
-- @function [parent=#TetrisPowerFailPanel] setTargetBlock
function TetrisPowerFailPanel:setTargetBlock()
    local armyType = self.powerConf.armyType

    if armyType == TetrisPowerConf.TYPE_CLEAR_STONE or armyType == TetrisPowerConf.TYPE_MAZE then
        local pic = string.format("tetris/%s.png", self.powerDetailconf.blockType)
        self.spTarget:setTexture(pic)
    elseif armyType == TetrisPowerConf.TYPE_TIMEMODE then
        self.spTarget:setVisible(false)
    elseif armyType == TetrisPowerConf.TYPE_METEOR2 then
        self.spTarget:setTexture("tetris/fangkuai9.png")
        -- local animationLayout = require("layout.TetrisMeteorAnimation").create()
        -- local meteor = animationLayout['root']
        -- local animation = animationLayout['animation']
        -- self.spTarget:addChild(meteor)
        -- meteor:runAction(animation)
        -- animation:gotoFrameAndPlay(0)
    elseif armyType == TetrisPowerConf.TYPE_SPAR then
        self.spTarget:setTexture("tetris/fangkuai11.png")
    end
end



return TetrisPowerFailPanel

