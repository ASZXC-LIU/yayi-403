package com.ruoyi.patientlist.controller;

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
import com.ruoyi.patientlist.domain.PatientList;
import com.ruoyi.patientlist.service.IPatientListService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 患者信息Controller
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
@RestController
@RequestMapping("/patientlist/patientlists")
public class PatientListController extends BaseController
{
    @Autowired
    private IPatientListService patientListService;

    /**
     * 查询患者信息列表
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:list')")
    @GetMapping("/list")
    public TableDataInfo list(PatientList patientList)
    {
        startPage();
        List<PatientList> list = patientListService.selectPatientListList(patientList);
        System.out.println(list);
        return getDataTable(list);

    }

    /**
     * 导出患者信息列表
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:export')")
    @Log(title = "患者信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PatientList patientList)
    {
        List<PatientList> list = patientListService.selectPatientListList(patientList);
        ExcelUtil<PatientList> util = new ExcelUtil<PatientList>(PatientList.class);
        util.exportExcel(response, list, "患者信息数据");
    }

    /**
     * 获取患者信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:query')")
    @GetMapping(value = "/{patientId}")
    public AjaxResult getInfo(@PathVariable("patientId") Long patientId)
    {
        return success(patientListService.selectPatientListByPatientId(patientId));
    }

    /**
     * 新增患者信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:add')")
    @Log(title = "患者信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PatientList patientList)
    {
        return toAjax(patientListService.insertPatientList(patientList));
    }

    /**
     * 修改患者信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:edit')")
    @Log(title = "患者信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PatientList patientList)
    {
        return toAjax(patientListService.updatePatientList(patientList));
    }

    /**
     * 删除患者信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:remove')")
    @Log(title = "患者信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{patientIds}")
    public AjaxResult remove(@PathVariable Long[] patientIds)
    {
        return toAjax(patientListService.deletePatientListByPatientIds(patientIds));
    }
}
