package com.ruoyi.doctorlist.controller;

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
import com.ruoyi.doctorlist.domain.DoctorList;
import com.ruoyi.doctorlist.service.IDoctorListService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医生信息Controller
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
@RestController
@RequestMapping("/doctorlist/doctorlists")
public class DoctorListController extends BaseController
{
    @Autowired
    private IDoctorListService doctorListService;

    /**
     * 查询医生信息列表
     */
    @PreAuthorize("@ss.hasPermi('doctorlist:doctorlists:list')")
    @GetMapping("/list")
    public TableDataInfo list(DoctorList doctorList)
    {
        startPage();
        List<DoctorList> list = doctorListService.selectDoctorListList(doctorList);
        return getDataTable(list);
    }

    /**
     * 导出医生信息列表
     */
    @PreAuthorize("@ss.hasPermi('doctorlist:doctorlists:export')")
    @Log(title = "医生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DoctorList doctorList)
    {
        List<DoctorList> list = doctorListService.selectDoctorListList(doctorList);
        ExcelUtil<DoctorList> util = new ExcelUtil<DoctorList>(DoctorList.class);
        util.exportExcel(response, list, "医生信息数据");
    }

    /**
     * 获取医生信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('doctorlist:doctorlists:query')")
    @GetMapping(value = "/{doctorId}")
    public AjaxResult getInfo(@PathVariable("doctorId") Long doctorId)
    {
        return success(doctorListService.selectDoctorListByDoctorId(doctorId));
    }

    /**
     * 新增医生信息
     */
    @PreAuthorize("@ss.hasPermi('doctorlist:doctorlists:add')")
    @Log(title = "医生信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DoctorList doctorList)
    {
        return toAjax(doctorListService.insertDoctorList(doctorList));
    }

    /**
     * 修改医生信息
     */
    @PreAuthorize("@ss.hasPermi('doctorlist:doctorlists:edit')")
    @Log(title = "医生信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DoctorList doctorList)
    {
        return toAjax(doctorListService.updateDoctorList(doctorList));
    }

    /**
     * 删除医生信息
     */
    @PreAuthorize("@ss.hasPermi('doctorlist:doctorlists:remove')")
    @Log(title = "医生信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{doctorIds}")
    public AjaxResult remove(@PathVariable Long[] doctorIds)
    {
        return toAjax(doctorListService.deleteDoctorListByDoctorIds(doctorIds));
    }
}
