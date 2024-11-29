package com.ruoyi.appointmentte.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.appointmentte.domain.PatientListVo;
import com.ruoyi.appointmentte.service.IPatientListVoService;
import com.ruoyi.framework.web.domain.server.Sys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 患者信息Controller
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
@RestController
@RequestMapping("/patientlist/patientlists/vo")
public class PatientListVoController extends BaseController
{
    @Autowired
    private IPatientListVoService patientListService;

    /**
     * 查询患者信息列表
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:list')")
    @GetMapping("/list")
    public TableDataInfo list(PatientListVo patientListVo)
    {
        startPage();
        List<PatientListVo> list = patientListService.selectPatientListList(patientListVo);
        return getDataTable(list);
    }

    /**
     * 导出患者信息列表
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:export')")
    @Log(title = "患者信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PatientListVo patientListVo)
    {
        List<PatientListVo> list = patientListService.selectPatientListList(patientListVo);
        ExcelUtil<PatientListVo> util = new ExcelUtil<PatientListVo>(PatientListVo.class);
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
     * 获取患者信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:query')")
    @GetMapping(value = "ifExistTest")
    public AjaxResult selectTtPatientsByName(@RequestBody PatientListVo patientListVo)
    {
        String patientName = patientListVo.getName();
        int num = patientListService.selectTtPatientsByName(patientListVo);
        if(num == 0){
            return error("患者姓名不能为空");

        }else{
            System.out.println(patientName);
            return error("患者存在");
        }


    }



    /**
     * 新增患者信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:add')")
    @Log(title = "患者信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PatientListVo patientListVo)
    {

        String patientName = patientListVo.getName();
        int num = patientListService.selectTtPatientsByName(patientListVo);
        if(num == 0){
            return error("患者姓名不能为空");

        }else{
            System.out.println(patientName);
        }

        return toAjax(patientListService.insertPatientList(patientListVo));
    }

    /**
     * 修改患者信息
     */
    @PreAuthorize("@ss.hasPermi('patientlist:patientlists:edit')")
    @Log(title = "患者信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PatientListVo patientListVo)
    {
        return toAjax(patientListService.updatePatientList(patientListVo));
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
