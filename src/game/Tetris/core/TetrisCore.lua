--
-- Created by IntelliJ IDEA.
-- User: wangys
-- Date: 2016/12/31
-- Time: 15:16
-- To change this template use File | Settings | File Templates.
-- TetrisCore 俄罗斯方块核心层

local TetrisCore = class("TetrisCore")


--------------------------------
-- 创建方法
-- @function [parent=#TetrisCore] onCreate
function TetrisCore:ctor(isNet, width, height)
    self.id = 0
    self.grids = {}
    self.blockMap = {}

    self.isNet = isNet
    self.width = width
    self.height = height
    
    self.frameNum = 0
    self.serverFrameNum = 0
end

--------------------------------
-- 根据配置文件初始化
-- @function [parent=#TetrisCore] onCreate
function TetrisCore:init(conf)
    self:initGrid(self.width, self.height)
    self:initGridBlock(conf)
end

--------------------------------
-- 定时调用
-- @function [parent=#TetrisCore] doUpdate
function TetrisCore:doUpdate(dt)
    if self.block == nil then
        return
    end

    self.block:doAction("down")
    if not self:checkAvailable(self.block.x, self.block.y, self.block:getBlockArray()) then
        -- 不可以下降，回退
        self.block:doAction("down", true)

        -- 进行下落
        self:merge(self.block)

        -- 判断消除
        self:checkBlockEliminate()
    end
end

--------------------------------
-- 判断消除
-- @function [parent=#TetrisCore] checkBlockEliminate
function TetrisCore:checkBlockEliminate()
    -- 消除判断
    local eliminateArr = {}
    local eliminateNum = 0
    for i = #self.grids, 1, -1 do
        local canEliminate = true
        for j = 1, #self.grids[i] do
            if self.grids[i][j] == 0 then
                canEliminate = false
                break
            end
        end
        if canEliminate then
            eliminateArr[i] = true
            eliminateNum = eliminateNum + 1
        else
            eliminateArr[i] = false
        end
    end

    -- 进行消除
    if eliminateNum > 0 then
        local nextIdx = 1
        for i = 1, self.row do
            while (nextIdx <= self.row and eliminateArr[nextIdx]) do
                nextIdx = nextIdx + 1
            end

            if i == nextIdx then
                nextIdx = nextIdx + 1
            else
                if nextIdx <= self.row then
                    for j = 1, self.col do
                        self.grids[i][j] = self.grids[nextIdx][j]
                    end
                    nextIdx = nextIdx + 1
                else
                    for j = 1, self.col do
                        self.grids[i][j] = 0
                    end
                end
            end
        end
    end
end

--------------------------------
-- 进行融合
-- @function [parent=#TetrisCore] merge
function TetrisCore:merge(block)
    local blockArray = block:getBlockArray()
    local tx = block.x
    local ty = block.y

    for i = 1, 4 do
        for j = 1, 4 do
            if blockArray[i][j] ~= 0 then
                self.grids[ty + i][tx + j] = blockArray[i][j]
            end
        end
    end
end

--------------------------------
-- 检查当前位置是否可用
-- @function [parent=#TetrisCore] onCreate
function TetrisCore:checkAvailable(tx, ty, blockArray)
    for i = 1, 4 do
        for j = 1, 4 do
            if blockArray[i][j] ~= 0 then
                if (tx + j < 0 || tx + j >= self.col || ty + i < 0 || ty + i >= self.row) then
                    -- 边界检查
                    return false
                end
                if self.grids[ty + i][tx + j] == 1 then
                    return false
                end
            end
        end
    end

    return true
end

--------------------------------
-- 初始化Grid
-- @function [parent=#TetrisCore] initGrid
function TetrisCore:initGrid(width, height)
    self.col = width / self.blockWidth
    self.row = height / self.blockWidth

    for i = 1, self.row do
        for j = 1, self.col do
            if self.grids[i] == nil then
                self.grids[i] = {}
            end
            table.insert(self.grids[i], 0)
        end
    end
end

--------------------------------
-- 打印tetris
-- @function [parent=#TetrisCore] print
function TetrisCore:print()
    local fmt = ""
    for i = 1, self.col do
        if i = 1 then
            fmt = fmt .. "%s"
        else
            fmt = fmt .. " %s"
        end
    end
    for i = self.row, 1, -1 do
        log:info(fmt, unpack(self.grids[i]))
    end
end


return TetrisCore
