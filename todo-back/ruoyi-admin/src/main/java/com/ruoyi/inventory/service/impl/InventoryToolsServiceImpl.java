package com.ruoyi.inventory.service.impl;

import java.util.List;

import com.ruoyi.inventory.domain.InventoryInbound;
import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.domain.InventoryOutbound;
import com.ruoyi.medicinesupplier.domain.InventoryMedicineSupplier;
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
     * 根据对冲修改药品库存
     *
     * @param inventoryOffsetting 药品库存
     * @return 结果
     */
    @Override
    public int offsettingUpdateTools(InventoryOffsetting inventoryOffsetting)
    {

        return inventoryToolsMapper.offsettingUpdateInventoryToolsResult(inventoryOffsetting);
    }

    /**
     * 根据入库修改药品库存
     *
     * @param inventoryInbound 药品库存
     * @return 结果
     */
    @Override
    public int inboundUpdateTools(InventoryInbound inventoryInbound)
    {

        return inventoryToolsMapper.inboundUpdateToolsUpdateInventoryToolsResult(inventoryInbound);
    }

    /**
     * 根据出库修改药品库存
     *
     * @param inventoryOutbound 药品库存
     * @return 结果
     */
    @Override
    public int outboundUpdateTools(InventoryOutbound inventoryOutbound)
    {

        return inventoryToolsMapper.outboundUpdateToolsUpdateInventoryToolsResult(inventoryOutbound);
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
    /**
     * 根据对冲修改药品库存
     *
     * @param inventoryMedicineSupplier 药品库存
     * @return 结果
     */
    @Override
    public Long getAllQuantity(InventoryMedicineSupplier inventoryMedicineSupplier)
    {

        return inventoryToolsMapper.getAllQuantity(inventoryMedicineSupplier);
    }
}
