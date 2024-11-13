package com.ruoyi.inventory.service;

import java.util.List;
import com.ruoyi.inventory.domain.InventoryOffsetting;

/**
 * 对冲记录工单Service接口
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public interface IInventoryOffsettingService 
{
    /**
     * 查询对冲记录工单
     * 
     * @param offsettingId 对冲记录工单主键
     * @return 对冲记录工单
     */
    public InventoryOffsetting selectInventoryOffsettingByOffsettingId(Long offsettingId);

    /**
     * 查询对冲记录工单列表
     * 
     * @param inventoryOffsetting 对冲记录工单
     * @return 对冲记录工单集合
     */
    public List<InventoryOffsetting> selectInventoryOffsettingList(InventoryOffsetting inventoryOffsetting);

    /**
     * 新增对冲记录工单
     * 
     * @param inventoryOffsetting 对冲记录工单
     * @return 结果
     */
    public int insertInventoryOffsetting(InventoryOffsetting inventoryOffsetting);

    /**
     * 修改对冲记录工单
     * 
     * @param inventoryOffsetting 对冲记录工单
     * @return 结果
     */
    public int updateInventoryOffsetting(InventoryOffsetting inventoryOffsetting);

    /**
     * 批量删除对冲记录工单
     * 
     * @param offsettingIds 需要删除的对冲记录工单主键集合
     * @return 结果
     */
    public int deleteInventoryOffsettingByOffsettingIds(Long[] offsettingIds);

    /**
     * 删除对冲记录工单信息
     * 
     * @param offsettingId 对冲记录工单主键
     * @return 结果
     */
    public int deleteInventoryOffsettingByOffsettingId(Long offsettingId);
}
