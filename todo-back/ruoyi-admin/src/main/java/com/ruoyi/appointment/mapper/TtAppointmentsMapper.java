package com.ruoyi.appointment.mapper;

import java.util.List;
import com.ruoyi.appointment.domain.TtAppointments;

/**
 * 预约功能Mapper接口
 * 
 * @author ruoyi
 * @date 2024-10-14
 */
public interface TtAppointmentsMapper 
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
     * 删除预约功能
     * 
     * @param appointmentId 预约功能主键
     * @return 结果
     */
    public int deleteTtAppointmentsByAppointmentId(Long appointmentId);

    /**
     * 批量删除预约功能
     * 
     * @param appointmentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTtAppointmentsByAppointmentIds(Long[] appointmentIds);
}
