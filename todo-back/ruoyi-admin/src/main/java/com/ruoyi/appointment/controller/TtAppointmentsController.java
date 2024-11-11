package com.ruoyi.appointment.controller;

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
import com.ruoyi.appointment.domain.TtAppointments;
import com.ruoyi.appointment.service.ITtAppointmentsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 预约功能Controller
 * 
 * @author ruoyi
 * @date 2024-10-14
 */
@RestController
@RequestMapping("/appointment/appointments")
public class TtAppointmentsController extends BaseController
{
    @Autowired
    private ITtAppointmentsService ttAppointmentsService;

    /**
     * 查询预约功能列表
     */
    @PreAuthorize("@ss.hasPermi('appointment:appointments:list')")
    @GetMapping("/list")
    public TableDataInfo list(TtAppointments ttAppointments)
    {
        System.out.println(ttAppointments);
        System.out.println("****************************************************========================================================");
        startPage();
        List<TtAppointments> list = ttAppointmentsService.selectTtAppointmentsList(ttAppointments);
        System.out.println("****************************************************");
        System.out.println(list);
        System.out.println("****************************************************");
        return getDataTable(list);
    }

    /**
     * 导出预约功能列表
     */
    @PreAuthorize("@ss.hasPermi('appointment:appointments:export')")
    @Log(title = "预约功能", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TtAppointments ttAppointments)
    {
        List<TtAppointments> list = ttAppointmentsService.selectTtAppointmentsList(ttAppointments);
        ExcelUtil<TtAppointments> util = new ExcelUtil<TtAppointments>(TtAppointments.class);
        util.exportExcel(response, list, "预约功能数据");
    }

    /**
     * 获取预约功能详细信息
     */
    @PreAuthorize("@ss.hasPermi('appointment:appointments:query')")
    @GetMapping(value = "/{appointmentId}")
    public AjaxResult getInfo(@PathVariable("appointmentId") Long appointmentId)
    {
        return success(ttAppointmentsService.selectTtAppointmentsByAppointmentId(appointmentId));
    }

    /**
     * 新增预约功能
     */
    @PreAuthorize("@ss.hasPermi('appointment:appointments:add')")
    @Log(title = "预约功能", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TtAppointments ttAppointments)
    {
        return toAjax(ttAppointmentsService.insertTtAppointments(ttAppointments));
    }

    /**
     * 修改预约功能
     */
    @PreAuthorize("@ss.hasPermi('appointment:appointments:edit')")
    @Log(title = "预约功能", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TtAppointments ttAppointments)
    {
        return toAjax(ttAppointmentsService.updateTtAppointments(ttAppointments));
    }

    /**
     * 删除预约功能
     */
    @PreAuthorize("@ss.hasPermi('appointment:appointments:remove')")
    @Log(title = "预约功能", businessType = BusinessType.DELETE)
	@DeleteMapping("/{appointmentIds}")
    public AjaxResult remove(@PathVariable Long[] appointmentIds)
    {
        return toAjax(ttAppointmentsService.deleteTtAppointmentsByAppointmentIds(appointmentIds));
    }
}
