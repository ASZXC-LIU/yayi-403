package com.ruoyi.supplier.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.supplier.domain.Supplier;
import com.ruoyi.supplier.service.ISupplierService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 供应商列表Controller
 * 
 * @author 刘航
 * @date 2024-11-20
 */
@RestController
@RequestMapping("/supplier/suppliers")
public class SupplierController extends BaseController
{
    @Autowired
    private ISupplierService supplierService;

    /**
     * 查询供应商列表列表
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:list')")
    @GetMapping("/list")
    public TableDataInfo list(Supplier supplier)
    {
        startPage();
        List<Supplier> list = supplierService.selectSupplierList(supplier);
        return getDataTable(list);
    }

    /**
     * 导出供应商列表列表
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:export')")
    @Log(title = "供应商列表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Supplier supplier)
    {
        List<Supplier> list = supplierService.selectSupplierList(supplier);
        ExcelUtil<Supplier> util = new ExcelUtil<Supplier>(Supplier.class);
        util.exportExcel(response, list, "供应商列表数据");
    }

    /**
     * 获取供应商列表详细信息
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:query')")
    @GetMapping(value = "/{supplierId}")
    public AjaxResult getInfo(@PathVariable("supplierId") Long supplierId)
    {
        return success(supplierService.selectSupplierBySupplierId(supplierId));
    }

    /**
     * 通过药品ID获取他的所有供应商信息
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:query')")
    @GetMapping(  "/getSupplierByMedicineId")
    public AjaxResult getSupplierByMedicineId(@RequestParam Long itemId)
    {

        if (itemId == null) {
            System.out.println("itemId is null");
            return error("itemId is null");
        }

        return success(supplierService.selectSupplierByMedicineId(itemId));
    }

    /**
     * 通过工具ID获取他的所有供应商信息
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:query')")
    @GetMapping(  "/getSupplierByToolId")
    public AjaxResult getSupplierByToolId(@RequestParam Long itemId)
    {

        if (itemId == null) {
            System.out.println("itemId is null");
            return error("itemId is null");
        }

        return success(supplierService.selectSupplierByMedicineId(itemId));
    }

    /**
     * 新增供应商列表
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:add')")
    @Log(title = "供应商列表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Supplier supplier)
    {
        System.out.println(supplier);
        return toAjax(supplierService.insertSupplier(supplier));
    }

    /**
     * 修改供应商列表
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:edit')")
    @Log(title = "供应商列表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Supplier supplier)
    {
        return toAjax(supplierService.updateSupplier(supplier));
    }

    /**
     * 删除供应商列表
     */
    @PreAuthorize("@ss.hasPermi('supplier:suppliers:remove')")
    @Log(title = "供应商列表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{supplierIds}")
    public AjaxResult remove(@PathVariable Long[] supplierIds)
    {
        return toAjax(supplierService.deleteSupplierBySupplierIds(supplierIds));
    }
}
