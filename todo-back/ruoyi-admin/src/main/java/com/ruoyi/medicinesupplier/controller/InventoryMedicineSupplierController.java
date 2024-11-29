package com.ruoyi.medicinesupplier.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.service.IInventoryMedicineService;
import com.ruoyi.medicinesupplier.domain.MedicineSupplierVO;
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
    @Autowired
    private IInventoryMedicineService inventoryMedicineService;
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
     * 查看是否存在
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:add')")
    @Log(title = "medicine_supplier", businessType = BusinessType.INSERT)
    @PostMapping("/ifExit")
    public AjaxResult  ifExit(@RequestBody InventoryMedicineSupplier inventoryMedicineSupplier)
    {

        int exists = inventoryMedicineSupplierService.ifExit(inventoryMedicineSupplier);
        if (exists > 0) {
            // 如果存在，执行更新逻辑
            System.out.println("这个货物已经与这个供应商建立联系，接下来将进行库存修改");
            return toAjax(inventoryMedicineSupplierService.updateNumber(inventoryMedicineSupplier));

        } else {
            // 如果不存在，执行新增逻辑
            System.out.println("这个货物还没有与这个供应商建立联系，接下来将建立联系");

            return toAjax(inventoryMedicineSupplierService.insertInventoryMedicineSupplier(inventoryMedicineSupplier));
        }

    }

    /**
     * 查看所有库存
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:add')")
    @Log(title = "medicine_supplier", businessType = BusinessType.INSERT)
    @PostMapping("/getAllQuantity")
    public AjaxResult  getAllQuantity(@RequestBody InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        System.out.println("inventoryMedicineSupplier11111111111111111111111111111111111111111111111:"+inventoryMedicineSupplier);
        //通过货物id获得所有供应商给他的供货的库存总量
        Long allQuantity =  inventoryMedicineService.getAllQuantity(inventoryMedicineSupplier);
        InventoryMedicine inventoryMedicine = inventoryMedicineService.selectInventoryMedicineByMedicineId(inventoryMedicineSupplier.getItemId());
        inventoryMedicine.setQuantity(allQuantity);
        System.out.println("inventoryMedicine111111111111111111111111111111111111111111111111111111111:"+inventoryMedicine);
        return AjaxResult.success("成功更新货物所有库存量");
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
     * 修改medicine_supplier
     */
    @PreAuthorize("@ss.hasPermi('medicinesupplier:medicinesuppliers:edit')")
    @Log(title = "medicine_supplier", businessType = BusinessType.UPDATE)
    @PutMapping("/outboundMS")
    public AjaxResult outboundMS(@RequestBody InventoryMedicineSupplier inventoryMedicineSupplier)
    {
        return toAjax(inventoryMedicineSupplierService.outboundMS(inventoryMedicineSupplier));
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
