--
-- Created by IntelliJ IDEA.
-- User: wangys
-- Date: 2015/7/28
-- Time: 11:06
-- To change this template use File | Settings | File Templates.
-- TetrisPowerConf 方块迷阵

local TetrisPowerConf = class("TetrisPowerConf")
local TetrisMeteorConf = import(".TetrisMeteorConf")
local TetrisMeteor2Conf = import(".TetrisMeteor2Conf")
local TetrisMazeConf = import(".TetrisMazeConf")
local TetrisClearStoneConf = import(".TetrisClearStoneConf")
local TetrisTimeModeConf = import(".TetrisTimeModeConf")
local TetrisSparConf = import(".TetrisSparConf")

TetrisPowerConf.configMap = {}
TetrisPowerConf.powerInfoMap = {}

-- 关卡模式1 -- 清理陨石
TetrisPowerConf.TYPE_CLEAR_STONE = 1
-- 关卡模式2 -- 极速挑战
TetrisPowerConf.TYPE_TIMEMODE = 2
-- 关卡模式3 -- 星际迷阵
TetrisPowerConf.TYPE_METEOR = 3
-- 关卡模式4 -- 方块迷阵
TetrisPowerConf.TYPE_MAZE = 4
-- 关卡模式5 -- 星际迷阵2
TetrisPowerConf.TYPE_METEOR2 = 5
-- 关卡模式6 -- 收集晶石
TetrisPowerConf.TYPE_SPAR = 6

--------------------------------
-- 构造函数
-- @function [parent=#TetrisPowerConf] ctor
function TetrisPowerConf:ctor(powerId, armyId, confId, armyType)
    self.powerId = powerId
    self.armyId = armyId
    self.confId = confId
    self.armyType = armyType
    if self.armyType == TetrisPowerConf.TYPE_CLEAR_STONE then
        self.pic = "square3"
        self.module = "TetrisClearStone"
    elseif self.armyType == TetrisPowerConf.TYPE_TIMEMODE then
        self.pic = "square2"
        self.module = "TetrisTimeMode"
    elseif self.armyType == TetrisPowerConf.TYPE_METEOR2 then
        self.pic = "square4"
        self.module = "TetrisMeteor2"
    elseif self.armyType == TetrisPowerConf.TYPE_MAZE then
        self.pic = "square1"
        self.module = "TetrisMaze"
    elseif self.armyType == TetrisPowerConf.TYPE_SPAR then
        self.pic = "square1"
        self.module = "TetrisSpar"
    else
        return
    end

    if TetrisPowerConf.configMap[powerId] == nil then
        TetrisPowerConf.configMap[powerId] = {}
    end
    TetrisPowerConf.configMap[powerId][armyId] = self
end

-- TetrisPowerConf.new(1, 1, 1, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 2, 2, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 3, 3, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 4, 4, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 5, 5, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 6, 6, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 7, 7, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 8, 8, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 9, 9, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 10, 10, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 11, 11, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 12, 12, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 13, 13, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 14, 14, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 15, 15, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 16, 16, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 17, 17, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 18, 18, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 19, 19, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 20, 20, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 21, 20, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 22, 20, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 23, 20, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 24, 20, TetrisPowerConf.TYPE_CLEAR_STONE)
-- TetrisPowerConf.new(1, 25, 20, TetrisPowerConf.TYPE_CLEAR_STONE)

TetrisPowerConf.new(1, 1, 1, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 2, 1, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 3, 1, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 4, 1, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 5, 2, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 6, 2, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 7, 2, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 8, 2, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 9, 3, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 10, 3, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 11, 3, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 12, 3, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 13, 4, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 14, 4, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 15, 4, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 16, 4, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 17, 5, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 18, 5, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 19, 5, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 20, 5, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 21, 6, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 22, 6, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 23, 6, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 24, 6, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 25, 7, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 26, 7, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 27, 7, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 28, 7, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 29, 8, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 30, 8, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 31, 8, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 32, 8, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 33, 9, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 34, 9, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 35, 9, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 36, 9, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 37, 10, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 38, 10, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 39, 10, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 40, 10, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 41, 11, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 42, 11, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 43, 11, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 44, 11, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 45, 12, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 46, 12, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 47, 12, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 48, 12, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 49, 13, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 50, 13, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 51, 13, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 52, 13, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 53, 14, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 54, 14, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 55, 14, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(1, 56, 14, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(1, 57, 15, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(1, 58, 15, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(1, 59, 15, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 1, 15, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 2, 16, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 3, 16, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 4, 16, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 5, 16, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 6, 17, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 7, 17, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 8, 17, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 9, 17, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 10, 18, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 11, 18, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 12, 18, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 13, 18, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 14, 19, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 15, 19, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 16, 19, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 17, 19, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 18, 20, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 19, 20, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 20, 20, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 21, 20, TetrisPowerConf.TYPE_METEOR2)


TetrisPowerConf.new(2, 22, 21, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 23, 21, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 24, 21, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 25, 21, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 26, 22, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 27, 22, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 28, 22, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 29, 22, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 30, 23, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 31, 23, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 32, 23, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 33, 23, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 34, 24, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 35, 24, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 36, 24, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 37, 24, TetrisPowerConf.TYPE_METEOR2)

TetrisPowerConf.new(2, 38, 25, TetrisPowerConf.TYPE_CLEAR_STONE)
TetrisPowerConf.new(2, 39, 25, TetrisPowerConf.TYPE_TIMEMODE)
TetrisPowerConf.new(2, 40, 25, TetrisPowerConf.TYPE_SPAR)
TetrisPowerConf.new(2, 41, 25, TetrisPowerConf.TYPE_METEOR2)



TetrisPowerConf.MAX_POWER_ID = 2
TetrisPowerConf.powerInfoMap[1] = 59
TetrisPowerConf.powerInfoMap[2] = 66

--------------------------------
-- 获取配置
-- @function [parent=#TetrisPowerConf] loadConfig
function TetrisPowerConf.loadConfig(powerId, armyId)
    local conf = nil
    if TetrisPowerConf.configMap[powerId] ~= nil then
        conf =  TetrisPowerConf.configMap[powerId][armyId]
    end

    if nil == conf then
        return TetrisPowerConf.new(powerId, armyId, 2)
    end
    return conf
end

--------------------------------
-- 获取副本最大章节数
-- @function [parent=#TetrisPowerConf] getPowerMaxArmyId
function TetrisPowerConf.getPowerMaxArmyId(powerId)
    return TetrisPowerConf.powerInfoMap[powerId]
end

--------------------------------
-- 获取配置
-- @function [parent=#TetrisPowerConf] loadDetailConfig
function TetrisPowerConf.loadDetailConfig(powerId, armyId)
    local conf = TetrisPowerConf.loadConfig(powerId, armyId)
    if conf.armyType == TetrisPowerConf.TYPE_CLEAR_STONE then
        return TetrisClearStoneConf.loadConfig(conf.confId)
    elseif conf.armyType == TetrisPowerConf.TYPE_TIMEMODE then
        return TetrisTimeModeConf.loadConfig(conf.confId)
    elseif conf.armyType == TetrisPowerConf.TYPE_METEOR2 then
        return TetrisMeteor2Conf.loadConfig(conf.confId)
    elseif conf.armyType == TetrisPowerConf.TYPE_MAZE then
        return TetrisMazeConf.loadConfig(conf.confId)   
    elseif conf.armyType == TetrisPowerConf.TYPE_SPAR then
        return TetrisSparConf.loadConfig(conf.confId)  
    end

    return nil
end


return TetrisPowerConf