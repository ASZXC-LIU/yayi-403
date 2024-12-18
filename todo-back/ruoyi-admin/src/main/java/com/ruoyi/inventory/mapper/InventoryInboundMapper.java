package com.ruoyi.inventory.mapper;

import java.util.List;
import com.ruoyi.inventory.domain.InventoryInbound;

/**
 * 入库工单Mapper接口
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public interface InventoryInboundMapper 
{
    /**
     * 查询入库工单
     * 
     * @param inboundId 入库工单主键
     * @return 入库工单
     */
    public InventoryInbound selectInventoryInboundByInboundId(Long inboundId);

    /**
     * 查询入库工单列表
     * 
     * @param inventoryInbound 入库工单
     * @return 入库工单集合
     */
    public List<InventoryInbound> selectInventoryInboundList(InventoryInbound inventoryInbound);

    /**
     * 新增入库工单
     * 
     * @param inventoryInbound 入库工单
     * @return 结果
     */
    public int insertInventoryInbound(InventoryInbound inventoryInbound);

    /**
     * 修改入库工单
     * 
     * @param inventoryInbound 入库工单
     * @return 结果
     */
    public int updateInventoryInbound(InventoryInbound inventoryInbound);

    /**
     * 删除入库工单
     * 
     * @param inboundId 入库工单主键
     * @return 结果
     */
    public int deleteInventoryInboundByInboundId(Long inboundId);

    /**
     * 批量删除入库工单
     * 
     * @param inboundIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInventoryInboundByInboundIds(Long[] inboundIds);
}
