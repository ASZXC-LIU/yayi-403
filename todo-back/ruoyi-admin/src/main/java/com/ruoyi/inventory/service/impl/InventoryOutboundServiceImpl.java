package com.ruoyi.inventory.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.inventory.mapper.InventoryOutboundMapper;
import com.ruoyi.inventory.domain.InventoryOutbound;
import com.ruoyi.inventory.service.IInventoryOutboundService;

/**
 * 出库工单Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@Service
public class InventoryOutboundServiceImpl implements IInventoryOutboundService 
{
    @Autowired
    private InventoryOutboundMapper inventoryOutboundMapper;

    /**
     * 查询出库工单
     * 
     * @param outboundId 出库工单主键
     * @return 出库工单
     */
    @Override
    public InventoryOutbound selectInventoryOutboundByOutboundId(Long outboundId)
    {
        return inventoryOutboundMapper.selectInventoryOutboundByOutboundId(outboundId);
    }

    /**
     * 查询出库工单列表
     * 
     * @param inventoryOutbound 出库工单
     * @return 出库工单
     */
    @Override
    public List<InventoryOutbound> selectInventoryOutboundList(InventoryOutbound inventoryOutbound)
    {
        return inventoryOutboundMapper.selectInventoryOutboundList(inventoryOutbound);
    }

    /**
     * 新增出库工单
     * 
     * @param inventoryOutbound 出库工单
     * @return 结果
     */
    @Override
    public int insertInventoryOutbound(InventoryOutbound inventoryOutbound)
    {
        inventoryOutbound.setCreateTime(DateUtils.getNowDate());
        return inventoryOutboundMapper.insertInventoryOutbound(inventoryOutbound);
    }

    /**
     * 修改出库工单
     * 
     * @param inventoryOutbound 出库工单
     * @return 结果
     */
    @Override
    public int updateInventoryOutbound(InventoryOutbound inventoryOutbound)
    {
        inventoryOutbound.setUpdateTime(DateUtils.getNowDate());
        return inventoryOutboundMapper.updateInventoryOutbound(inventoryOutbound);
    }

    /**
     * 批量删除出库工单
     * 
     * @param outboundIds 需要删除的出库工单主键
     * @return 结果
     */
    @Override
    public int deleteInventoryOutboundByOutboundIds(Long[] outboundIds)
    {
        return inventoryOutboundMapper.deleteInventoryOutboundByOutboundIds(outboundIds);
    }

    /**
     * 删除出库工单信息
     * 
     * @param outboundId 出库工单主键
     * @return 结果
     */
    @Override
    public int deleteInventoryOutboundByOutboundId(Long outboundId)
    {
        return inventoryOutboundMapper.deleteInventoryOutboundByOutboundId(outboundId);
    }
}
