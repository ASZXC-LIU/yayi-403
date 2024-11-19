package com.ruoyi.inventory.controller;

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
import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.service.IInventoryOffsettingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 对冲记录工单Controller
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@RestController
@RequestMapping("/offsetting/offsettings")
public class InventoryOffsettingController extends BaseController
{
    @Autowired
    private IInventoryOffsettingService inventoryOffsettingService;

    /**
     * 查询对冲记录工单列表
     */
    @PreAuthorize("@ss.hasPermi('offsetting:offsettings:list')")
    @GetMapping("/list")
    public TableDataInfo list(InventoryOffsetting inventoryOffsetting)
    {
        startPage();
        List<InventoryOffsetting> list = inventoryOffsettingService.selectInventoryOffsettingList(inventoryOffsetting);
        return getDataTable(list);
    }

    /**
     * 导出对冲记录工单列表
     */
    @PreAuthorize("@ss.hasPermi('offsetting:offsettings:export')")
    @Log(title = "对冲记录工单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InventoryOffsetting inventoryOffsetting)
    {
        List<InventoryOffsetting> list = inventoryOffsettingService.selectInventoryOffsettingList(inventoryOffsetting);
        ExcelUtil<InventoryOffsetting> util = new ExcelUtil<InventoryOffsetting>(InventoryOffsetting.class);
        util.exportExcel(response, list, "对冲记录工单数据");
    }

    /**
     * 获取对冲记录工单详细信息
     */
    @PreAuthorize("@ss.hasPermi('offsetting:offsettings:query')")
    @GetMapping(value = "/{offsettingId}")
    public AjaxResult getInfo(@PathVariable("offsettingId") Long offsettingId)
    {
        return success(inventoryOffsettingService.selectInventoryOffsettingByOffsettingId(offsettingId));
    }

    /**
     * 新增对冲记录工单
     */
    @PreAuthorize("@ss.hasPermi('offsetting:offsettings:add')")
    @Log(title = "对冲记录工单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InventoryOffsetting inventoryOffsetting)
    {
        return toAjax(inventoryOffsettingService.insertInventoryOffsetting(inventoryOffsetting));
    }

    /**
     * 修改对冲记录工单
     */
    @PreAuthorize("@ss.hasPermi('offsetting:offsettings:edit')")
    @Log(title = "对冲记录工单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InventoryOffsetting inventoryOffsetting)
    {
        return toAjax(inventoryOffsettingService.updateInventoryOffsetting(inventoryOffsetting));
    }

    /**
     * 删除对冲记录工单
     */
    @PreAuthorize("@ss.hasPermi('offsetting:offsettings:remove')")
    @Log(title = "对冲记录工单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{offsettingIds}")
    public AjaxResult remove(@PathVariable Long[] offsettingIds)
    {
        return toAjax(inventoryOffsettingService.deleteInventoryOffsettingByOffsettingIds(offsettingIds));
    }
}
