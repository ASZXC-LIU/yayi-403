package com.ruoyi.appointmentte.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.appointmentte.domain.PatientListVo;
import com.ruoyi.appointmentte.service.IPatientListVoService;
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
import com.ruoyi.appointmentte.domain.TtAppointmentsTest;
import com.ruoyi.appointmentte.service.ITtAppointmentsTestService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 预约测试Controller
 * 
 * @author ruoyi
 * @date 2024-11-28
 */
@RestController
@RequestMapping("/appointmentte/appointmentte")
public class TtAppointmentsTestController extends BaseController
{
    @Autowired
    private ITtAppointmentsTestService ttAppointmentsTestService;
    @Autowired
    private IPatientListVoService patientListService;


    /**
     * 查询预约测试列表
     */
    @PreAuthorize("@ss.hasPermi('appointmentte:appointmentte:list')")
    @GetMapping("/list")
    public TableDataInfo list(TtAppointmentsTest ttAppointmentsTest)
    {
        startPage();
        List<TtAppointmentsTest> list = ttAppointmentsTestService.selectTtAppointmentsTestList(ttAppointmentsTest);
        return getDataTable(list);
    }

    /**
     * 导出预约测试列表
     */
    @PreAuthorize("@ss.hasPermi('appointmentte:appointmentte:export')")
    @Log(title = "预约测试", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TtAppointmentsTest ttAppointmentsTest)
    {
        List<TtAppointmentsTest> list = ttAppointmentsTestService.selectTtAppointmentsTestList(ttAppointmentsTest);
        ExcelUtil<TtAppointmentsTest> util = new ExcelUtil<TtAppointmentsTest>(TtAppointmentsTest.class);
        util.exportExcel(response, list, "预约测试数据");
    }

    /**
     * 获取预约测试详细信息
     */
    @PreAuthorize("@ss.hasPermi('appointmentte:appointmentte:query')")
    @GetMapping(value = "/{appointmentId}")
    public AjaxResult getInfo(@PathVariable("appointmentId") Long appointmentId)
    {
        return success(ttAppointmentsTestService.selectTtAppointmentsTestByAppointmentId(appointmentId));
    }

    /**
     * 新增预约测试
     */
    @PreAuthorize("@ss.hasPermi('appointmentte:appointmentte:add')")
    @Log(title = "预约测试", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TtAppointmentsTest ttAppointmentsTest)
    {
        //预约之前通过名字和手机号判断患者是否存在
        PatientListVo patientListVo=ttAppointmentsTestService.ifExitBeforAppointment(ttAppointmentsTest);
        System.out.println("2222222222222222222222"+patientListVo);
        if(patientListVo==null){
            return AjaxResult.error("患者不存在，请先添加患者信息");
        }else {
            return toAjax(ttAppointmentsTestService.insertTtAppointmentsTest(ttAppointmentsTest));
        }




    }

    /**
     * 修改预约测试
     */
    @PreAuthorize("@ss.hasPermi('appointmentte:appointmentte:edit')")
    @Log(title = "预约测试", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TtAppointmentsTest ttAppointmentsTest)
    {
        return toAjax(ttAppointmentsTestService.updateTtAppointmentsTest(ttAppointmentsTest));
    }

    /**
     * 删除预约测试
     */
    @PreAuthorize("@ss.hasPermi('appointmentte:appointmentte:remove')")
    @Log(title = "预约测试", businessType = BusinessType.DELETE)
	@DeleteMapping("/{appointmentIds}")
    public AjaxResult remove(@PathVariable Long[] appointmentIds)
    {
        return toAjax(ttAppointmentsTestService.deleteTtAppointmentsTestByAppointmentIds(appointmentIds));
    }
}
