package com.ruoyi.record.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.web.domain.server.Sys;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.record.domain.MedicalRecords;
import com.ruoyi.record.service.IMedicalRecordsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 就诊记录Controller
 * 
 * @author 刘航
 * @date 2024-11-30
 */
@RestController
@RequestMapping("/record/records")
public class MedicalRecordsController extends BaseController
{
    @Autowired
    private IMedicalRecordsService medicalRecordsService;

    /**
     * 查询就诊记录列表
     */
    @PreAuthorize("@ss.hasPermi('record:records:list')")
    @GetMapping("/list")
    public TableDataInfo list(MedicalRecords medicalRecords)
    {
        startPage();
        List<MedicalRecords> list = medicalRecordsService.selectMedicalRecordsList(medicalRecords);
        return getDataTable(list);
    }

    /**
     * 查询个人就诊记录列表
     */
    @PreAuthorize("@ss.hasPermi('record:records:list')")
    @GetMapping("/getRecordsByPatientId")
    public TableDataInfo getRecordsByPatientId(@RequestParam Long patientId)
    {
        startPage();
        System.out.println("patientId1111111111111111111111:"+patientId);
        List<MedicalRecords> list = medicalRecordsService.getRecordsByPatientId(patientId);
        System.out.println("22222222222222222222222222:"+list);
        return getDataTable(list);
    }

    /**
     * 导出就诊记录列表
     */
    @PreAuthorize("@ss.hasPermi('record:records:export')")
    @Log(title = "就诊记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MedicalRecords medicalRecords)
    {
        List<MedicalRecords> list = medicalRecordsService.selectMedicalRecordsList(medicalRecords);
        ExcelUtil<MedicalRecords> util = new ExcelUtil<MedicalRecords>(MedicalRecords.class);
        util.exportExcel(response, list, "就诊记录数据");
    }

    /**
     * 获取就诊记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('record:records:query')")
    @GetMapping(value = "/{medicalRecordsId}")
    public AjaxResult getInfo(@PathVariable("medicalRecordsId") Long medicalRecordsId)
    {
        return success(medicalRecordsService.selectMedicalRecordsByMedicalRecordsId(medicalRecordsId));
    }

    /**
     * 新增就诊记录
     */
    @PreAuthorize("@ss.hasPermi('record:records:add')")
    @Log(title = "就诊记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MedicalRecords medicalRecords)
    {
        return toAjax(medicalRecordsService.insertMedicalRecords(medicalRecords));
    }

    /**
     * 修改就诊记录
     */
    @PreAuthorize("@ss.hasPermi('record:records:edit')")
    @Log(title = "就诊记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MedicalRecords medicalRecords)
    {
        return toAjax(medicalRecordsService.updateMedicalRecords(medicalRecords));
    }

    /**
     * 删除就诊记录
     */
    @PreAuthorize("@ss.hasPermi('record:records:remove')")
    @Log(title = "就诊记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{medicalRecordsIds}")
    public AjaxResult remove(@PathVariable Long[] medicalRecordsIds)
    {
        return toAjax(medicalRecordsService.deleteMedicalRecordsByMedicalRecordsIds(medicalRecordsIds));
    }
}
