package com.ruoyi.appointment.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.appointment.domain.TtPatientsVo;
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
import com.ruoyi.appointment.service.ITtPatientsVoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 患者信息Controller
 * 
 * @author ruoyi
 * @date 2024-10-16
 */
@RestController
@RequestMapping("/patient/patients")
public class TtPatientsVoController extends BaseController
{
    @Autowired
    private ITtPatientsVoService ttPatientsService;

    /**
     * 查询患者信息列表
     */
    @PreAuthorize("@ss.hasPermi('patient:patients:list')")
    @GetMapping("/list")
    public TableDataInfo list(TtPatientsVo ttPatients)
    {
        startPage();
        List<TtPatientsVo> list = ttPatientsService.selectTtPatientsList(ttPatients);
        return getDataTable(list);
    }

    /**
     * 导出患者信息列表
     */
    @PreAuthorize("@ss.hasPermi('patient:patients:export')")
    @Log(title = "患者信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TtPatientsVo ttPatients)
    {
        List<TtPatientsVo> list = ttPatientsService.selectTtPatientsList(ttPatients);
        ExcelUtil<TtPatientsVo> util = new ExcelUtil<TtPatientsVo>(TtPatientsVo.class);
        util.exportExcel(response, list, "患者信息数据");
    }

    /**
     * 获取患者信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('patient:patients:query')")
    @GetMapping(value = "/{patientId}")
    public AjaxResult getInfo(@PathVariable("patientId") Long patientId)
    {
        return success(ttPatientsService.selectTtPatientsByPatientId(patientId));
    }

    /**
     * 新增患者信息
     */
    @PreAuthorize("@ss.hasPermi('patient:patients:add')")
    @Log(title = "患者信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TtPatientsVo ttPatients)
    {
        return toAjax(ttPatientsService.insertTtPatients(ttPatients));
    }

    /**
     * 修改患者信息
     */
    @PreAuthorize("@ss.hasPermi('patient:patients:edit')")
    @Log(title = "患者信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TtPatientsVo ttPatients)
    {
        return toAjax(ttPatientsService.updateTtPatients(ttPatients));
    }

    /**
     * 删除患者信息
     */
    @PreAuthorize("@ss.hasPermi('patient:patients:remove')")
    @Log(title = "患者信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{patientIds}")
    public AjaxResult remove(@PathVariable Long[] patientIds)
    {
        return toAjax(ttPatientsService.deleteTtPatientsByPatientIds(patientIds));
    }
}
