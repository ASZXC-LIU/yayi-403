package com.ruoyi.inventory.service.impl;

import java.util.List;

import com.ruoyi.inventory.domain.InventoryInbound;
import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.domain.InventoryOutbound;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.inventory.mapper.InventoryMedicineMapper;
import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.inventory.service.IInventoryMedicineService;

/**
 * 药品库存Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@Service
public class InventoryMedicineServiceImpl implements IInventoryMedicineService 
{
    @Autowired
    private InventoryMedicineMapper inventoryMedicineMapper;

    /**
     * 查询药品库存
     * 
     * @param medicineId 药品库存主键
     * @return 药品库存
     */
    @Override
    public InventoryMedicine selectInventoryMedicineByMedicineId(Long medicineId)
    {
        return inventoryMedicineMapper.selectInventoryMedicineByMedicineId(medicineId);
    }

    /**
     * 查询药品库存列表
     * 
     * @param inventoryMedicine 药品库存
     * @return 药品库存
     */
    @Override
    public List<InventoryMedicine> selectInventoryMedicineList(InventoryMedicine inventoryMedicine)
    {
        return inventoryMedicineMapper.selectInventoryMedicineList(inventoryMedicine);
    }

    /**
     * 新增药品库存
     * 
     * @param inventoryMedicine 药品库存
     * @return 结果
     */
    @Override
    public int insertInventoryMedicine(InventoryMedicine inventoryMedicine)
    {
        return inventoryMedicineMapper.insertInventoryMedicine(inventoryMedicine);
    }

    /**
     * 修改药品库存
     * 
     * @param inventoryMedicine 药品库存
     * @return 结果
     */
    @Override
    public int updateInventoryMedicine(InventoryMedicine inventoryMedicine)
    {
        return inventoryMedicineMapper.updateInventoryMedicine(inventoryMedicine);
    }

    /**
     * 根据对冲修改药品库存
     *
     * @param inventoryOffsetting 药品库存
     * @return 结果
     */
    @Override
    public int offsettingUpdateMedicine(InventoryOffsetting inventoryOffsetting)
    {

        return inventoryMedicineMapper.offsettingUpdateInventoryMedicineResult(inventoryOffsetting);
    }

    /**
     * 根据入库修改药品库存
     *
     * @param inventoryInbound 药品库存
     * @return 结果
     */
    @Override
    public int inboundUpdateMedicine(InventoryInbound inventoryInbound)
    {

        return inventoryMedicineMapper.inboundUpdateMedicineUpdateInventoryMedicineResult(inventoryInbound);
    }

    /**
     * 根据出库修改药品库存
     *
     * @param inventoryOutbound 药品库存
     * @return 结果
     */
    @Override
    public int outboundUpdateMedicine(InventoryOutbound inventoryOutbound)
    {

        return inventoryMedicineMapper.outboundUpdateMedicineUpdateInventoryMedicineResult(inventoryOutbound);
    }



    /**
     * 批量删除药品库存
     * 
     * @param medicineIds 需要删除的药品库存主键
     * @return 结果
     */
    @Override
    public int deleteInventoryMedicineByMedicineIds(Long[] medicineIds)
    {
        return inventoryMedicineMapper.deleteInventoryMedicineByMedicineIds(medicineIds);
    }

    /**
     * 删除药品库存信息
     * 
     * @param medicineId 药品库存主键
     * @return 结果
     */
    @Override
    public int deleteInventoryMedicineByMedicineId(Long medicineId)
    {
        return inventoryMedicineMapper.deleteInventoryMedicineByMedicineId(medicineId);
    }
}
