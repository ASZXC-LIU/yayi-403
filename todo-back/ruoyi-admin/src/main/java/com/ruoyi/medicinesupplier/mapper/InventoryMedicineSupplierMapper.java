package com.ruoyi.medicinesupplier.mapper;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.ruoyi.medicinesupplier.domain.InventoryMedicineSupplier;
import com.ruoyi.medicinesupplier.domain.MedicineSupplierVO;

/**
 * medicine_supplierMapper接口
 * 
 * @author ruoyi
 * @date 2024-11-25
 */
public interface InventoryMedicineSupplierMapper 
{
    /**
     * 查询medicine_supplier
     * 
     * @param medicineSupplierId medicine_supplier主键
     * @return medicine_supplier
     */
    public InventoryMedicineSupplier selectInventoryMedicineSupplierByMedicineSupplierId(Long medicineSupplierId);

    /**
     * 查询medicine_supplier列表
     * 
     * @param inventoryMedicineSupplier medicine_supplier
     * @return medicine_supplier集合
     */
    public List<InventoryMedicineSupplier> selectInventoryMedicineSupplierList(InventoryMedicineSupplier inventoryMedicineSupplier);

    /**
     * 新增medicine_supplier
     * 
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    public int insertInventoryMedicineSupplier(InventoryMedicineSupplier inventoryMedicineSupplier);


    /**
     * 新增medicine_supplier
     *
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    public Integer ifExit(InventoryMedicineSupplier inventoryMedicineSupplier);


    /**
     * 修改medicine_supplier
     * 
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    public int updateInventoryMedicineSupplier(InventoryMedicineSupplier inventoryMedicineSupplier);


    /**
     * 修改medicine_supplier
     *
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    public int outboundMS(InventoryMedicineSupplier inventoryMedicineSupplier);


    /**
     * 修改medicine_supplier
     *
     * @param inventoryMedicineSupplier medicine_supplier
     * @return 结果
     */
    public int updateNumber(InventoryMedicineSupplier inventoryMedicineSupplier);
    /**
     * 删除medicine_supplier
     * 
     * @param medicineSupplierId medicine_supplier主键
     * @return 结果
     */
    public int deleteInventoryMedicineSupplierByMedicineSupplierId(Long medicineSupplierId);

    /**
     * 批量删除medicine_supplier
     * 
     * @param medicineSupplierIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInventoryMedicineSupplierByMedicineSupplierIds(Long[] medicineSupplierIds);

    public PageInfo<MedicineSupplierVO> selectMedicineSupplierList(Map<String, Object> params);
}
