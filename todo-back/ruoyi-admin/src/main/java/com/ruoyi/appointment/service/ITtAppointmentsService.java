package com.ruoyi.appointment.service;

import java.util.List;
import com.ruoyi.appointment.domain.TtAppointments;

/**
 * 预约功能Service接口
 * 
 * @author ruoyi
 * @date 2024-10-14
 */
public interface ITtAppointmentsService 
{
    /**
     * 查询预约功能
     * 
     * @param appointmentId 预约功能主键
     * @return 预约功能
     */
    public TtAppointments selectTtAppointmentsByAppointmentId(Long appointmentId);

    /**
     * 查询预约功能列表
     * 
     * @param ttAppointments 预约功能
     * @return 预约功能集合
     */
    public List<TtAppointments> selectTtAppointmentsList(TtAppointments ttAppointments);

    /**
     * 新增预约功能
     * 
     * @param ttAppointments 预约功能
     * @return 结果
     */
    public int insertTtAppointments(TtAppointments ttAppointments);

    /**
     * 修改预约功能
     * 
     * @param ttAppointments 预约功能
     * @return 结果
     */
    public int updateTtAppointments(TtAppointments ttAppointments);

    /**
     * 批量删除预约功能
     * 
     * @param appointmentIds 需要删除的预约功能主键集合
     * @return 结果
     */
    public int deleteTtAppointmentsByAppointmentIds(Long[] appointmentIds);

    /**
     * 删除预约功能信息
     * 
     * @param appointmentId 预约功能主键
     * @return 结果
     */
    public int deleteTtAppointmentsByAppointmentId(Long appointmentId);
}
