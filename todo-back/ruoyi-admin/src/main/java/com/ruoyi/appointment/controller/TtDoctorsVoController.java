package com.ruoyi.appointment.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.appointment.domain.TtDoctorsVo;
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
import com.ruoyi.appointment.service.ITtDoctorsVoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医生信息Controller
 * 
 * @author ruoyi
 * @date 2024-10-15
 */
@RestController
@RequestMapping("/doctor/doctors")
public class TtDoctorsVoController extends BaseController
{
    @Autowired
    private ITtDoctorsVoService ttDoctorsService;

    /**
     * 查询医生信息列表
     */
    @PreAuthorize("@ss.hasPermi('doctor:doctors:list')")
    @GetMapping("/list")
    public TableDataInfo list(TtDoctorsVo ttDoctors)
    {
        startPage();
        List<TtDoctorsVo> list = ttDoctorsService.selectTtDoctorsList(ttDoctors);
        return getDataTable(list);
    }

    /**
     * 导出医生信息列表
     */
    @PreAuthorize("@ss.hasPermi('doctor:doctors:export')")
    @Log(title = "医生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TtDoctorsVo ttDoctors)
    {
        List<TtDoctorsVo> list = ttDoctorsService.selectTtDoctorsList(ttDoctors);
        ExcelUtil<TtDoctorsVo> util = new ExcelUtil<TtDoctorsVo>(TtDoctorsVo.class);
        util.exportExcel(response, list, "医生信息数据");
    }

    /**
     * 获取医生信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('doctor:doctors:query')")
    @GetMapping(value = "/{doctorId}")
    public AjaxResult getInfo(@PathVariable("doctorId") Long doctorId)
    {
        return success(ttDoctorsService.selectTtDoctorsByDoctorId(doctorId));
    }

    /**
     * 新增医生信息
     */
    @PreAuthorize("@ss.hasPermi('doctor:doctors:add')")
    @Log(title = "医生信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TtDoctorsVo ttDoctors)
    {
        return toAjax(ttDoctorsService.insertTtDoctors(ttDoctors));
    }

    /**
     * 修改医生信息
     */
    @PreAuthorize("@ss.hasPermi('doctor:doctors:edit')")
    @Log(title = "医生信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TtDoctorsVo ttDoctors)
    {
        return toAjax(ttDoctorsService.updateTtDoctors(ttDoctors));
    }

    /**
     * 删除医生信息
     */
    @PreAuthorize("@ss.hasPermi('doctor:doctors:remove')")
    @Log(title = "医生信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{doctorIds}")
    public AjaxResult remove(@PathVariable Long[] doctorIds)
    {
        return toAjax(ttDoctorsService.deleteTtDoctorsByDoctorIds(doctorIds));
    }
}
