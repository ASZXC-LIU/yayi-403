package com.ruoyi.inventory.mapper;

import java.util.List;
import com.ruoyi.inventory.domain.InventoryOutbound;

/**
 * 出库工单Mapper接口
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public interface InventoryOutboundMapper 
{
    /**
     * 查询出库工单
     * 
     * @param outboundId 出库工单主键
     * @return 出库工单
     */
    public InventoryOutbound selectInventoryOutboundByOutboundId(Long outboundId);

    /**
     * 查询出库工单列表
     * 
     * @param inventoryOutbound 出库工单
     * @return 出库工单集合
     */
    public List<InventoryOutbound> selectInventoryOutboundList(InventoryOutbound inventoryOutbound);

    /**
     * 新增出库工单
     * 
     * @param inventoryOutbound 出库工单
     * @return 结果
     */
    public int insertInventoryOutbound(InventoryOutbound inventoryOutbound);

    /**
     * 修改出库工单
     * 
     * @param inventoryOutbound 出库工单
     * @return 结果
     */
    public int updateInventoryOutbound(InventoryOutbound inventoryOutbound);

    /**
     * 删除出库工单
     * 
     * @param outboundId 出库工单主键
     * @return 结果
     */
    public int deleteInventoryOutboundByOutboundId(Long outboundId);

    /**
     * 批量删除出库工单
     * 
     * @param outboundIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInventoryOutboundByOutboundIds(Long[] outboundIds);
}
