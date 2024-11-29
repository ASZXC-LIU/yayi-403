package com.ruoyi.billing.controller;

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
import com.ruoyi.billing.domain.TtBilling;
import com.ruoyi.billing.service.ITtBillingService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 账单管理Controller
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
@RestController
@RequestMapping("/billing/billing")
public class TtBillingController extends BaseController
{
    @Autowired
    private ITtBillingService ttBillingService;

    /**
     * 查询账单管理列表
     */
    @PreAuthorize("@ss.hasPermi('billing:billing:list')")
    @GetMapping("/list")
    public TableDataInfo list(TtBilling ttBilling)
    {
        startPage();
        List<TtBilling> list = ttBillingService.selectTtBillingList(ttBilling);
        System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        System.out.println(list);
        return getDataTable(list);
    }

    /**
     * 导出账单管理列表
     */
    @PreAuthorize("@ss.hasPermi('billing:billing:export')")
    @Log(title = "账单管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TtBilling ttBilling)
    {
        List<TtBilling> list = ttBillingService.selectTtBillingList(ttBilling);
        ExcelUtil<TtBilling> util = new ExcelUtil<TtBilling>(TtBilling.class);
        util.exportExcel(response, list, "账单管理数据");
    }

    /**
     * 获取账单管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('billing:billing:query')")
    @GetMapping(value = "/{billingId}")
    public AjaxResult getInfo(@PathVariable("billingId") Long billingId)
    {
        return success(ttBillingService.selectTtBillingByBillingId(billingId));
    }

    /**
     * 新增账单管理
     */
    @PreAuthorize("@ss.hasPermi('billing:billing:add')")
    @Log(title = "账单管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TtBilling ttBilling)
    {
        System.out.println(ttBilling);
        return toAjax(ttBillingService.insertTtBilling(ttBilling));
    }

    /**
     * 修改账单管理
     */
    @PreAuthorize("@ss.hasPermi('billing:billing:edit')")
    @Log(title = "账单管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TtBilling ttBilling)
    {
        return toAjax(ttBillingService.updateTtBilling(ttBilling));
    }

    /**
     * 删除账单管理
     */
    @PreAuthorize("@ss.hasPermi('billing:billing:remove')")
    @Log(title = "账单管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{billingIds}")
    public AjaxResult remove(@PathVariable Long[] billingIds)
    {
        return toAjax(ttBillingService.deleteTtBillingByBillingIds(billingIds));
    }
}
