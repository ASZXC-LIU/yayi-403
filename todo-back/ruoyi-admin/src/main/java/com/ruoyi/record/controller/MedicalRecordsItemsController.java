package com.ruoyi.record.controller;

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
import com.ruoyi.record.domain.MedicalRecordsItems;
import com.ruoyi.record.service.IMedicalRecordsItemsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 就诊物品使用记录Controller
 * 
 * @author 刘航
 * @date 2024-12-01
 */
@RestController
@RequestMapping("/item/items")
public class MedicalRecordsItemsController extends BaseController
{
    @Autowired
    private IMedicalRecordsItemsService medicalRecordsItemsService;

    /**
     * 查询就诊物品使用记录列表
     */
    @PreAuthorize("@ss.hasPermi('item:items:list')")
    @GetMapping("/list")
    public TableDataInfo list(MedicalRecordsItems medicalRecordsItems)
    {
        startPage();
        List<MedicalRecordsItems> list = medicalRecordsItemsService.selectMedicalRecordsItemsList(medicalRecordsItems);
        return getDataTable(list);
    }

    /**
     * 导出就诊物品使用记录列表
     */
    @PreAuthorize("@ss.hasPermi('item:items:export')")
    @Log(title = "就诊物品使用记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MedicalRecordsItems medicalRecordsItems)
    {
        List<MedicalRecordsItems> list = medicalRecordsItemsService.selectMedicalRecordsItemsList(medicalRecordsItems);
        ExcelUtil<MedicalRecordsItems> util = new ExcelUtil<MedicalRecordsItems>(MedicalRecordsItems.class);
        util.exportExcel(response, list, "就诊物品使用记录数据");
    }

    /**
     * 获取就诊物品使用记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('item:items:query')")
    @GetMapping(value = "/{recordItemId}")
    public AjaxResult getInfo(@PathVariable("recordItemId") Long recordItemId)
    {
        return success(medicalRecordsItemsService.selectMedicalRecordsItemsByRecordItemId(recordItemId));
    }

    /**
     * 新增就诊物品使用记录
     */
    @PreAuthorize("@ss.hasPermi('item:items:add')")
    @Log(title = "就诊物品使用记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MedicalRecordsItems medicalRecordsItems)
    {
        return toAjax(medicalRecordsItemsService.insertMedicalRecordsItems(medicalRecordsItems));
    }

    /**
     * 修改就诊物品使用记录
     */
    @PreAuthorize("@ss.hasPermi('item:items:edit')")
    @Log(title = "就诊物品使用记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MedicalRecordsItems medicalRecordsItems)
    {
        return toAjax(medicalRecordsItemsService.updateMedicalRecordsItems(medicalRecordsItems));
    }

    /**
     * 删除就诊物品使用记录
     */
    @PreAuthorize("@ss.hasPermi('item:items:remove')")
    @Log(title = "就诊物品使用记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{recordItemIds}")
    public AjaxResult remove(@PathVariable Long[] recordItemIds)
    {
        return toAjax(medicalRecordsItemsService.deleteMedicalRecordsItemsByRecordItemIds(recordItemIds));
    }
}
