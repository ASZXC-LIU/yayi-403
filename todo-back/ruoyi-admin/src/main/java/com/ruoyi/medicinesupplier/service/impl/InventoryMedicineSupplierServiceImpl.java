package com.ruoyi.medicinesupplier.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medicinesupplier.mapper.InventoryMedicineSupplierMapper;
import com.ruoyi.medicinesupplier.domain.InventoryMedicineSupplier;
import com.ruoyi.medicinesupplier.service.IInventoryMedicineSupplierService;

/**
 * medicine_supplierService业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-25
 */
@Service
public class InventoryMedicineSupplierServiceImpl implements IInventoryMedicineSupplierService 
{
    @Autowired
    private InventoryMedicineSupplierMapper inventoryMedicineSupplierMapper;

    /**
     * 查询medicine_supplier
     * 
     * @param medicineSupplierId medicine_supplier主键
     * @return medicine_supplier
     */
    @Override
    public InventoryMedicineSupplier selectInventoryMedicineSupplierByMedicineSupplierId(Long medicineSupplierId)
    {
        return inventoryMedicineSupplierMapper.selectInventoryMedicineSupplierByMedicineSupplierId(medicineSupplierId);
    }

    /**
     * 查询medicine_supplier列表
     * 
     * @param inventoryMedicineSupplier medicine_supplier
     * @return medicine_supplier
     */
    @Override
    public List<InventoryMedicineSupplier> selectInventoryMedicineSupplierList(InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        return inventoryMedicineSupplierMapper.selectInventoryMedicineSupplierList(inventoryMedicineSupplier);
    }

    /**
     * 新增medicine_supplier
     * 
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    @Override
    public int insertInventoryMedicineSupplier(InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        return inventoryMedicineSupplierMapper.insertInventoryMedicineSupplier(inventoryMedicineSupplier);
    }

    /**
     * 修改medicine_supplier
     * 
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    @Override
    public int updateInventoryMedicineSupplier(InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        return inventoryMedicineSupplierMapper.updateInventoryMedicineSupplier(inventoryMedicineSupplier);
    }

    /**
     * 批量删除medicine_supplier
     * 
     * @param medicineSupplierIds 需要删除的medicine_supplier主键
     * @return 结果
     */
    @Override
    public int deleteInventoryMedicineSupplierByMedicineSupplierIds(Long[] medicineSupplierIds)
    {
        return inventoryMedicineSupplierMapper.deleteInventoryMedicineSupplierByMedicineSupplierIds(medicineSupplierIds);
    }

    /**
     * 删除medicine_supplier信息
     * 
     * @param medicineSupplierId medicine_supplier主键
     * @return 结果
     */
    @Override
    public int deleteInventoryMedicineSupplierByMedicineSupplierId(Long medicineSupplierId)
    {
        return inventoryMedicineSupplierMapper.deleteInventoryMedicineSupplierByMedicineSupplierId(medicineSupplierId);
    }
}
