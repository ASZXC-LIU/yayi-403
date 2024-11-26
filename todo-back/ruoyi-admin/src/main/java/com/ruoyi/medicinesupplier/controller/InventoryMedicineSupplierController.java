package com.ruoyi.medicinesupplier.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.medicinesupplier.domain.InventoryMedicineSupplier;
import com.ruoyi.medicinesupplier.service.IInventoryMedicineSupplierService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * medicine_supplierController
 * 
 * @author ruoyi
 * @date 2024-11-25
 */
@RestController
@RequestMapping("/medicinesupplier/medicinesuppliers")
public class InventoryMedicineSupplierController extends BaseController
{
    @Autowired
    private IInventoryMedicineSupplierService inventoryMedicineSupplierService;

    /**
     * 查询medicine_supplier列表
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:list')")
    @GetMapping("/list")
    public TableDataInfo list(InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        startPage();
        List<InventoryMedicineSupplier> list = inventoryMedicineSupplierService.selectInventoryMedicineSupplierList(inventoryMedicineSupplier);
        return getDataTable(list);
    }

    /**
     * 导出medicine_supplier列表
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:export')")
    @Log(title = "medicine_supplier", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        List<InventoryMedicineSupplier> list = inventoryMedicineSupplierService.selectInventoryMedicineSupplierList(inventoryMedicineSupplier);
        ExcelUtil<InventoryMedicineSupplier> util = new ExcelUtil<InventoryMedicineSupplier>(InventoryMedicineSupplier.class);
        util.exportExcel(response, list, "medicine_supplier数据");
    }

    /**
     * 获取medicine_supplier详细信息
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:query')")
    @GetMapping(value = "/{medicineSupplierId}")
    public AjaxResult getInfo(@PathVariable("medicineSupplierId") Long medicineSupplierId)
    {
        return success(inventoryMedicineSupplierService.selectInventoryMedicineSupplierByMedicineSupplierId(medicineSupplierId));
    }

    /**
     * 新增medicine_supplier
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:add')")
    @Log(title = "medicine_supplier", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        return toAjax(inventoryMedicineSupplierService.insertInventoryMedicineSupplier(inventoryMedicineSupplier));
    }

    /**
     * 修改medicine_supplier
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:edit')")
    @Log(title = "medicine_supplier", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        return toAjax(inventoryMedicineSupplierService.updateInventoryMedicineSupplier(inventoryMedicineSupplier));
    }

    /**
     * 删除medicine_supplier
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:remove')")
    @Log(title = "medicine_supplier", businessType = BusinessType.DELETE)
	@DeleteMapping("/{medicineSupplierIds}")
    public AjaxResult remove(@PathVariable Long[] medicineSupplierIds)
    {
        return toAjax(inventoryMedicineSupplierService.deleteInventoryMedicineSupplierByMedicineSupplierIds(medicineSupplierIds));
    }
}
