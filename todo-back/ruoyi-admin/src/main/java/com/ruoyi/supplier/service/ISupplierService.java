package com.ruoyi.supplier.service;

import java.util.List;

import com.ruoyi.inventory.domain.InventoryMedicine;
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
     * @param itemId 供应商列表主键
     * @return 供应商列表
     */
    public List<Supplier> selectSupplierByMedicineId(Long itemId);


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
