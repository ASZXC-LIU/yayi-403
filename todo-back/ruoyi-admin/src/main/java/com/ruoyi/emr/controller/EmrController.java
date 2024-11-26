package com.ruoyi.emr.controller;

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
import com.ruoyi.emr.domain.Emr;
import com.ruoyi.emr.service.IEmrService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 病历列表Controller
 * 
 * @author 刘航
 * @date 2024-11-24
 */
@RestController
@RequestMapping("/emr/emrs")
public class EmrController extends BaseController
{
    @Autowired
    private IEmrService emrService;

    /**
     * 查询病历列表列表
     */
    @PreAuthorize("@ss.hasPermi('emr:emrs:list')")
    @GetMapping("/list")
    public TableDataInfo list(Emr emr)
    {
        startPage();
        List<Emr> list = emrService.selectEmrList(emr);
        return getDataTable(list);
    }

    /**
     * 导出病历列表列表
     */
    @PreAuthorize("@ss.hasPermi('emr:emrs:export')")
    @Log(title = "病历列表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Emr emr)
    {
        List<Emr> list = emrService.selectEmrList(emr);
        ExcelUtil<Emr> util = new ExcelUtil<Emr>(Emr.class);
        util.exportExcel(response, list, "病历列表数据");
    }

    /**
     * 获取病历列表详细信息
     */
    @PreAuthorize("@ss.hasPermi('emr:emrs:query')")
    @GetMapping(value = "/{emrId}")
    public AjaxResult getInfo(@PathVariable("emrId") Long emrId)
    {
        return success(emrService.selectEmrByEmrId(emrId));
    }

    /**
     * 新增病历列表
     */
    @PreAuthorize("@ss.hasPermi('emr:emrs:add')")
    @Log(title = "病历列表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Emr emr)
    {
        return toAjax(emrService.insertEmr(emr));
    }

    /**
     * 修改病历列表
     */
    @PreAuthorize("@ss.hasPermi('emr:emrs:edit')")
    @Log(title = "病历列表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Emr emr)
    {
        return toAjax(emrService.updateEmr(emr));
    }

    /**
     * 删除病历列表
     */
    @PreAuthorize("@ss.hasPermi('emr:emrs:remove')")
    @Log(title = "病历列表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{emrIds}")
    public AjaxResult remove(@PathVariable Long[] emrIds)
    {
        return toAjax(emrService.deleteEmrByEmrIds(emrIds));
    }
}
