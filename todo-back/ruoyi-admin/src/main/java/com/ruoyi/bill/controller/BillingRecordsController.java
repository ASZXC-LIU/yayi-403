package com.ruoyi.bill.controller;

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
import com.ruoyi.bill.domain.BillingRecords;
import com.ruoyi.bill.service.IBillingRecordsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 收费Controller
 * 
 * @author ruoyi
 * @date 2024-11-01
 */
@RestController
@RequestMapping("/bill/bills")
public class BillingRecordsController extends BaseController
{
    @Autowired
    private IBillingRecordsService billingRecordsService;

    /**
     * 查询收费列表
     */
    @PreAuthorize("@ss.hasPermi('bill:bills:list')")
    @GetMapping("/list")
    public TableDataInfo list(BillingRecords billingRecords)
    {
        startPage();
        List<BillingRecords> list = billingRecordsService.selectBillingRecordsList(billingRecords);
        return getDataTable(list);
    }

    /**
     * 导出收费列表
     */
    @PreAuthorize("@ss.hasPermi('bill:bills:export')")
    @Log(title = "收费", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BillingRecords billingRecords)
    {
        List<BillingRecords> list = billingRecordsService.selectBillingRecordsList(billingRecords);
        ExcelUtil<BillingRecords> util = new ExcelUtil<BillingRecords>(BillingRecords.class);
        util.exportExcel(response, list, "收费数据");
    }

    /**
     * 获取收费详细信息
     */
    @PreAuthorize("@ss.hasPermi('bill:bills:query')")
    @GetMapping(value = "/{billingId}")
    public AjaxResult getInfo(@PathVariable("billingId") Long billingId)
    {
        return success(billingRecordsService.selectBillingRecordsByBillingId(billingId));
    }

    /**
     * 新增收费
     */
    @PreAuthorize("@ss.hasPermi('bill:bills:add')")
    @Log(title = "收费", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BillingRecords billingRecords)
    {
        return toAjax(billingRecordsService.insertBillingRecords(billingRecords));
    }

    /**
     * 修改收费
     */
    @PreAuthorize("@ss.hasPermi('bill:bills:edit')")
    @Log(title = "收费", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BillingRecords billingRecords)
    {
        return toAjax(billingRecordsService.updateBillingRecords(billingRecords));
    }

    /**
     * 删除收费
     */
    @PreAuthorize("@ss.hasPermi('bill:bills:remove')")
    @Log(title = "收费", businessType = BusinessType.DELETE)
	@DeleteMapping("/{billingIds}")
    public AjaxResult remove(@PathVariable Long[] billingIds)
    {
        return toAjax(billingRecordsService.deleteBillingRecordsByBillingIds(billingIds));
    }
}
