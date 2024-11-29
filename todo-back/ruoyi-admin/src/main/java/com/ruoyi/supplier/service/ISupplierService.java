package com.ruoyi.supplier.service;

import java.util.List;

import com.ruoyi.inventory.domain.InventoryInbound;
import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.medicinesupplier.domain.InventoryMedicineSupplier;
import com.ruoyi.supplier.domain.Supplier;

/**
 * 供应商列表Service接口
 * 
 * @author 刘航
 * @date 2024-11-20
 */
public interface ISupplierService 
{
    /**
     * 查询供应商列表
     * 
     * @param supplierId 供应商列表主键
     * @return 供应商列表
     */
    public Supplier selectSupplierBySupplierId(Long supplierId);

    /**
     * 通过药品ID获取他的所有供应商信息
     *
     * @param inventoryMedicineSupplier 供应商列表主键
     * @return 供应商列表
     */
    public List<Supplier> selectSupplierByMedicineId(InventoryMedicineSupplier inventoryMedicineSupplier);

    /**
     * 通过工具获取他的所有供应商信息
     *
     * @param inventoryMedicineSupplier 供应商列表主键
     * @return 供应商列表
     */
    public List<Supplier> selectSupplierByTool(InventoryMedicineSupplier inventoryMedicineSupplier);
    /**
     * 查询供应商列表列表
     * 
     * @param supplier 供应商列表
     * @return 供应商列表集合
     */
    public List<Supplier> selectSupplierList(Supplier supplier);

    /**
     * 新增供应商列表
     * 
     * @param supplier 供应商列表
     * @return 结果
     */
    public int insertSupplier(Supplier supplier);

    /**
     * 修改供应商列表
     * 
     * @param supplier 供应商列表
     * @return 结果
     */
    public int updateSupplier(Supplier supplier);

    /**
     * 修改供应商列表
     *
     * @param inventoryInbound 供应商列表
     * @return 结果
     */
    public int updateItemId(InventoryInbound inventoryInbound);

    /**
     * 批量删除供应商列表
     * 
     * @param supplierIds 需要删除的供应商列表主键集合
     * @return 结果
     */
    public int deleteSupplierBySupplierIds(Long[] supplierIds);

    /**
     * 删除供应商列表信息
     * 
     * @param supplierId 供应商列表主键
     * @return 结果
     */
    public int deleteSupplierBySupplierId(Long supplierId);
}
