package com.ruoyi.inventory.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.inventory.mapper.InventoryToolsMapper;
import com.ruoyi.inventory.domain.InventoryTools;
import com.ruoyi.inventory.service.IInventoryToolsService;

/**
 * 工具库存Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@Service
public class InventoryToolsServiceImpl implements IInventoryToolsService 
{
    @Autowired
    private InventoryToolsMapper inventoryToolsMapper;

    /**
     * 查询工具库存
     * 
     * @param toolsId 工具库存主键
     * @return 工具库存
     */
    @Override
    public InventoryTools selectInventoryToolsByToolsId(Long toolsId)
    {
        return inventoryToolsMapper.selectInventoryToolsByToolsId(toolsId);
    }

    /**
     * 查询工具库存列表
     * 
     * @param inventoryTools 工具库存
     * @return 工具库存
     */
    @Override
    public List<InventoryTools> selectInventoryToolsList(InventoryTools inventoryTools)
    {
        return inventoryToolsMapper.selectInventoryToolsList(inventoryTools);
    }

    /**
     * 新增工具库存
     * 
     * @param inventoryTools 工具库存
     * @return 结果
     */
    @Override
    public int insertInventoryTools(InventoryTools inventoryTools)
    {
        return inventoryToolsMapper.insertInventoryTools(inventoryTools);
    }

    /**
     * 修改工具库存
     * 
     * @param inventoryTools 工具库存
     * @return 结果
     */
    @Override
    public int updateInventoryTools(InventoryTools inventoryTools)
    {
        return inventoryToolsMapper.updateInventoryTools(inventoryTools);
    }

    /**
     * 批量删除工具库存
     * 
     * @param toolsIds 需要删除的工具库存主键
     * @return 结果
     */
    @Override
    public int deleteInventoryToolsByToolsIds(Long[] toolsIds)
    {
        return inventoryToolsMapper.deleteInventoryToolsByToolsIds(toolsIds);
    }

    /**
     * 删除工具库存信息
     * 
     * @param toolsId 工具库存主键
     * @return 结果
     */
    @Override
    public int deleteInventoryToolsByToolsId(Long toolsId)
    {
        return inventoryToolsMapper.deleteInventoryToolsByToolsId(toolsId);
    }
}
