package com.ruoyi.inventory.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.web.domain.server.Sys;
import com.ruoyi.inventory.domain.InventoryOffsetting;
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
import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.inventory.service.IInventoryMedicineService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 药品库存Controller
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@RestController
@RequestMapping("/medicine/medicine")
public class InventoryMedicineController extends BaseController
{
    @Autowired
    private IInventoryMedicineService inventoryMedicineService;

    /**
     * 查询药品库存列表
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:list')")
    @GetMapping("/list")
    public TableDataInfo list(InventoryMedicine inventoryMedicine)
    {
        startPage();
        List<InventoryMedicine> list = inventoryMedicineService.selectInventoryMedicineList(inventoryMedicine);
        return getDataTable(list);
    }

    /**
     * 导出药品库存列表
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:export')")
    @Log(title = "药品库存", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InventoryMedicine inventoryMedicine)
    {
        List<InventoryMedicine> list = inventoryMedicineService.selectInventoryMedicineList(inventoryMedicine);
        ExcelUtil<InventoryMedicine> util = new ExcelUtil<InventoryMedicine>(InventoryMedicine.class);
        util.exportExcel(response, list, "药品库存数据");
    }

    /**
     * 获取药品库存详细信息
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:query')")
    @GetMapping(value = "/{medicineId}")
    public AjaxResult getInfo(@PathVariable("medicineId") Long medicineId)
    {
        return success(inventoryMedicineService.selectInventoryMedicineByMedicineId(medicineId));
    }

    /**
     * 新增药品库存
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:add')")
    @Log(title = "药品库存", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InventoryMedicine inventoryMedicine)
    {
        return toAjax(inventoryMedicineService.insertInventoryMedicine(inventoryMedicine));
    }

    /**
     * 修改药品库存
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:edit')")
    @Log(title = "药品库存", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InventoryMedicine inventoryMedicine)
    {

        return toAjax(inventoryMedicineService.updateInventoryMedicine(inventoryMedicine));
    }

    /**
     * 修改对冲后的库存
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:edit')")
    @Log(title = "药品库存", businessType = BusinessType.UPDATE)
    @PutMapping("/offsettingUpdateMedicine")
    public AjaxResult offsettingUpdateMedicine(@RequestBody InventoryOffsetting inventoryOffsetting)
    {

        return toAjax(inventoryMedicineService.offsettingUpdateMedicine(inventoryOffsetting));
    }




    /**
     * 删除药品库存
     */
    @PreAuthorize("@ss.hasPermi('medicine:medicine:remove')")
    @Log(title = "药品库存", businessType = BusinessType.DELETE)
	@DeleteMapping("/{medicineIds}")
    public AjaxResult remove(@PathVariable Long[] medicineIds)
    {
        return toAjax(inventoryMedicineService.deleteInventoryMedicineByMedicineIds(medicineIds));
    }
}
