package com.ruoyi.inventory.service;

import java.util.List;

import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.domain.InventoryTools;

/**
 * 工具库存Service接口
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public interface IInventoryToolsService 
{
    /**
     * 查询工具库存
     * 
     * @param toolsId 工具库存主键
     * @return 工具库存
     */
    public InventoryTools selectInventoryToolsByToolsId(Long toolsId);

    /**
     * 查询工具库存列表
     * 
     * @param inventoryTools 工具库存
     * @return 工具库存集合
     */
    public List<InventoryTools> selectInventoryToolsList(InventoryTools inventoryTools);

    /**
     * 新增工具库存
     * 
     * @param inventoryTools 工具库存
     * @return 结果
     */
    public int insertInventoryTools(InventoryTools inventoryTools);

    /**
     * 修改工具库存
     * 
     * @param inventoryTools 工具库存
     * @return 结果
     */
    public int updateInventoryTools(InventoryTools inventoryTools);


    /**
     * 修改对冲后的对应药品库存
     *
     * @param inventoryOffsetting 药品库存
     * @return 结果
     */
    public int offsettingUpdateInventorytools(InventoryOffsetting inventoryOffsetting);


    /**
     * 批量删除工具库存
     * 
     * @param toolsIds 需要删除的工具库存主键集合
     * @return 结果
     */
    public int deleteInventoryToolsByToolsIds(Long[] toolsIds);

    /**
     * 删除工具库存信息
     * 
     * @param toolsId 工具库存主键
     * @return 结果
     */
    public int deleteInventoryToolsByToolsId(Long toolsId);
}
