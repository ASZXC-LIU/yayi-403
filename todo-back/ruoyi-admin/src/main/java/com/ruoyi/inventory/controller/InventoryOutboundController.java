package com.ruoyi.inventory.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.inventory.domain.InventoryTools;
import com.ruoyi.inventory.service.IInventoryMedicineService;
import com.ruoyi.inventory.service.IInventoryToolsService;
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
import com.ruoyi.inventory.domain.InventoryOutbound;
import com.ruoyi.inventory.service.IInventoryOutboundService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 出库工单Controller
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@RestController
@RequestMapping("/outbound/outbounds")
public class InventoryOutboundController extends BaseController
{
    @Autowired
    private IInventoryOutboundService inventoryOutboundService;
    @Autowired
    private IInventoryMedicineService inventoryMedicineService;
    @Autowired
    private IInventoryToolsService inventoryToolsService;

    /**
     * 查询出库工单列表
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:list')")
    @GetMapping("/list")
    public TableDataInfo list(InventoryOutbound inventoryOutbound)
    {
        startPage();
        List<InventoryOutbound> list = inventoryOutboundService.selectInventoryOutboundList(inventoryOutbound);

        return getDataTable(list);
    }

    /**
     * 导出出库工单列表
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:export')")
    @Log(title = "出库工单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InventoryOutbound inventoryOutbound)
    {
        List<InventoryOutbound> list = inventoryOutboundService.selectInventoryOutboundList(inventoryOutbound);
        ExcelUtil<InventoryOutbound> util = new ExcelUtil<InventoryOutbound>(InventoryOutbound.class);
        util.exportExcel(response, list, "出库工单数据");
    }

    /**
     * 获取出库工单详细信息
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:query')")
    @GetMapping(value = "/{outboundId}")
    public AjaxResult getInfo(@PathVariable("outboundId") Long outboundId)
    {
        return success(inventoryOutboundService.selectInventoryOutboundByOutboundId(outboundId));
    }

    /**
     * 新增出库工单
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:add')")
    @Log(title = "出库工单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InventoryOutbound inventoryOutbound)
    {
        if(inventoryOutbound.getItemId() != null){
            InventoryMedicine inventoryMedicine = inventoryMedicineService.selectInventoryMedicineByMedicineId(inventoryOutbound.getItemId());
            //读取药品的计量单位传递给入库表
            String unit = inventoryMedicine.getUnit();
            inventoryOutbound.setUnit(unit);
            return toAjax(inventoryOutboundService.insertInventoryOutbound(inventoryOutbound));
        }else {
            return AjaxResult.error("ID不存在");
        }


    }

    /**
     * 新增出库工单
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:add')")
    @Log(title = "出库工单", businessType = BusinessType.INSERT)
    @PostMapping("/addOutTool")
    public AjaxResult addOutTool(@RequestBody InventoryOutbound inventoryOutbound)
    {
        InventoryTools inventoryTools = inventoryToolsService.selectInventoryToolsByToolsId(inventoryOutbound.getItemId());
        //读取药品的计量单位传递给入库表
        String unit = inventoryTools.getUnit();
        inventoryOutbound.setUnit(unit);
        System.out.println(inventoryOutbound);
        return toAjax( inventoryOutboundService.insertInventoryOutbound(inventoryOutbound));





    }

    /**
     * 修改出库工单
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:edit')")
    @Log(title = "出库工单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InventoryOutbound inventoryOutbound)
    {
        return toAjax(inventoryOutboundService.updateInventoryOutbound(inventoryOutbound));
    }

    /**
     * 删除出库工单
     */
    @PreAuthorize("@ss.hasPermi('outbound:outbounds:remove')")
    @Log(title = "出库工单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{outboundIds}")
    public AjaxResult remove(@PathVariable Long[] outboundIds)
    {
        return toAjax(inventoryOutboundService.deleteInventoryOutboundByOutboundIds(outboundIds));
    }
}
