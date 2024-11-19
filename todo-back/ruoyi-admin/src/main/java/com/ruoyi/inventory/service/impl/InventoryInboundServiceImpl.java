package com.ruoyi.inventory.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.inventory.mapper.InventoryInboundMapper;
import com.ruoyi.inventory.domain.InventoryInbound;
import com.ruoyi.inventory.service.IInventoryInboundService;

/**
 * 入库工单Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@Service
public class InventoryInboundServiceImpl implements IInventoryInboundService 
{
    @Autowired
    private InventoryInboundMapper inventoryInboundMapper;

    /**
     * 查询入库工单
     * 
     * @param inboundId 入库工单主键
     * @return 入库工单
     */
    @Override
    public InventoryInbound selectInventoryInboundByInboundId(Long inboundId)
    {
        return inventoryInboundMapper.selectInventoryInboundByInboundId(inboundId);
    }

    /**
     * 查询入库工单列表
     * 
     * @param inventoryInbound 入库工单
     * @return 入库工单
     */
    @Override
    public List<InventoryInbound> selectInventoryInboundList(InventoryInbound inventoryInbound)
    {
        return inventoryInboundMapper.selectInventoryInboundList(inventoryInbound);
    }

    /**
     * 新增入库工单
     * 
     * @param inventoryInbound 入库工单
     * @return 结果
     */
    @Override
    public int insertInventoryInbound(InventoryInbound inventoryInbound)
    {
        inventoryInbound.setCreateTime(DateUtils.getNowDate());
        return inventoryInboundMapper.insertInventoryInbound(inventoryInbound);
    }

    /**
     * 修改入库工单
     * 
     * @param inventoryInbound 入库工单
     * @return 结果
     */
    @Override
    public int updateInventoryInbound(InventoryInbound inventoryInbound)
    {
        inventoryInbound.setUpdateTime(DateUtils.getNowDate());
        return inventoryInboundMapper.updateInventoryInbound(inventoryInbound);
    }

    /**
     * 批量删除入库工单
     * 
     * @param inboundIds 需要删除的入库工单主键
     * @return 结果
     */
    @Override
    public int deleteInventoryInboundByInboundIds(Long[] inboundIds)
    {
        return inventoryInboundMapper.deleteInventoryInboundByInboundIds(inboundIds);
    }

    /**
     * 删除入库工单信息
     * 
     * @param inboundId 入库工单主键
     * @return 结果
     */
    @Override
    public int deleteInventoryInboundByInboundId(Long inboundId)
    {
        return inventoryInboundMapper.deleteInventoryInboundByInboundId(inboundId);
    }
}
