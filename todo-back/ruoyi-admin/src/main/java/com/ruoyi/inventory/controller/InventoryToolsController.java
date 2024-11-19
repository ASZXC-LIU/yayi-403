package com.ruoyi.inventory.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

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
import com.ruoyi.inventory.domain.InventoryTools;
import com.ruoyi.inventory.service.IInventoryToolsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工具库存Controller
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@RestController
@RequestMapping("/inventorytool/inventorytools")
public class InventoryToolsController extends BaseController
{
    @Autowired
    private IInventoryToolsService inventoryToolsService;

    /**
     * 查询工具库存列表
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:list')")
    @GetMapping("/list")
    public TableDataInfo list(InventoryTools inventoryTools)
    {
        startPage();
        List<InventoryTools> list = inventoryToolsService.selectInventoryToolsList(inventoryTools);
        return getDataTable(list);
    }

    /**
     * 导出工具库存列表
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:export')")
    @Log(title = "工具库存", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InventoryTools inventoryTools)
    {
        List<InventoryTools> list = inventoryToolsService.selectInventoryToolsList(inventoryTools);
        ExcelUtil<InventoryTools> util = new ExcelUtil<InventoryTools>(InventoryTools.class);
        util.exportExcel(response, list, "工具库存数据");
    }

    /**
     * 获取工具库存详细信息
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:query')")
    @GetMapping(value = "/{toolsId}")
    public AjaxResult getInfo(@PathVariable("toolsId") Long toolsId)
    {
        return success(inventoryToolsService.selectInventoryToolsByToolsId(toolsId));
    }

    /**
     * 新增工具库存
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:add')")
    @Log(title = "工具库存", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InventoryTools inventoryTools)
    {
        return toAjax(inventoryToolsService.insertInventoryTools(inventoryTools));
    }

    /**
     * 修改工具库存
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:edit')")
    @Log(title = "工具库存", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InventoryTools inventoryTools)
    {
        return toAjax(inventoryToolsService.updateInventoryTools(inventoryTools));
    }

    /**
     * 修改对冲后的库存
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:edit')")
    @Log(title = "药品库存", businessType = BusinessType.UPDATE)
    @PutMapping("/offsettingUpdateInventorytools")
    public AjaxResult offsettingUpdateInventorytools(@RequestBody InventoryOffsetting inventoryOffsetting)
    {
        System.out.println("inventoryMedicine111111111111111111111");
        System.out.println(inventoryOffsetting);
        System.out.println("inventoryMedicine2222222222222222222222");
        return toAjax(inventoryToolsService.offsettingUpdateInventorytools(inventoryOffsetting));
    }


    /**
     * 删除工具库存
     */
    @PreAuthorize("@ss.hasPermi('inventorytool:inventorytools:remove')")
    @Log(title = "工具库存", businessType = BusinessType.DELETE)
	@DeleteMapping("/{toolsIds}")
    public AjaxResult remove(@PathVariable Long[] toolsIds)
    {
        return toAjax(inventoryToolsService.deleteInventoryToolsByToolsIds(toolsIds));
    }
}
