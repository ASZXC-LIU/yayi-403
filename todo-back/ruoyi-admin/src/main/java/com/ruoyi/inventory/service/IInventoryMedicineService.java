package com.ruoyi.inventory.service;

import java.util.List;

import com.ruoyi.inventory.domain.InventoryInbound;
import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.domain.InventoryOutbound;
import com.ruoyi.medicinesupplier.domain.InventoryMedicineSupplier;

/**
 * 药品库存Service接口
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public interface IInventoryMedicineService 
{
    /**
     * 查询药品库存
     * 
     * @param medicineId 药品库存主键
     * @return 药品库存
     */
    public InventoryMedicine selectInventoryMedicineByMedicineId(Long medicineId);

    /**
     * 查询药品库存列表
     * 
     * @param inventoryMedicine 药品库存
     * @return 药品库存集合
     */
    public List<InventoryMedicine> selectInventoryMedicineList(InventoryMedicine inventoryMedicine);

    /**
     * 新增药品库存
     * 
     * @param inventoryMedicine 药品库存
     * @return 结果
     */
    public int insertInventoryMedicine(InventoryMedicine inventoryMedicine);

    /**
     * 修改药品库存
     * 
     * @param inventoryMedicine 药品库存
     * @return 结果
     */
    public int updateInventoryMedicine(InventoryMedicine inventoryMedicine);

    /**
     * 修改对冲后的对应药品库存
     *
     * @param inventoryOffsetting 药品库存
     * @return 结果
     */
    public int offsettingUpdateMedicine(InventoryOffsetting inventoryOffsetting);

    /**
     * 根据不同供应商的供货量整合货物总量
     *
     * @param inventoryMedicineSupplier 药品库存
     * @return 结果
     */
    public Long getAllQuantity(InventoryMedicineSupplier inventoryMedicineSupplier);


    /**
     * 修改出库后的对应药品库存
     *
     * @param inventoryOutbound 药品库存
     * @return 结果
     */
    public int outboundUpdateMedicine(InventoryOutbound inventoryOutbound);


    /**
     * 批量删除药品库存
     * 
     * @param medicineIds 需要删除的药品库存主键集合
     * @return 结果
     */
    public int deleteInventoryMedicineByMedicineIds(Long[] medicineIds);

    /**
     * 删除药品库存信息
     * 
     * @param medicineId 药品库存主键
     * @return 结果
     */
    public int deleteInventoryMedicineByMedicineId(Long medicineId);
}
