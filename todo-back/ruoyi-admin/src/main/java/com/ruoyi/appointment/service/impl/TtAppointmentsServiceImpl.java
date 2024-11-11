package com.ruoyi.appointment.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.appointment.mapper.TtAppointmentsMapper;
import com.ruoyi.appointment.domain.TtAppointments;
import com.ruoyi.appointment.service.ITtAppointmentsService;

/**
 * 预约功能Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-10-14
 */
@Service
public class TtAppointmentsServiceImpl implements ITtAppointmentsService 
{
    @Autowired
    private TtAppointmentsMapper ttAppointmentsMapper;

    /**
     * 查询预约功能
     * 
     * @param appointmentId 预约功能主键
     * @return 预约功能
     */
    @Override
    public TtAppointments selectTtAppointmentsByAppointmentId(Long appointmentId)
    {
        return ttAppointmentsMapper.selectTtAppointmentsByAppointmentId(appointmentId);
    }

    /**
     * 查询预约功能列表
     * 
     * @param ttAppointments 预约功能
     * @return 预约功能
     */
    @Override
    public List<TtAppointments> selectTtAppointmentsList(TtAppointments ttAppointments)
    {

        return ttAppointmentsMapper.selectTtAppointmentsList(ttAppointments);
    }

    /**
     * 新增预约功能
     * 
     * @param ttAppointments 预约功能
     * @return 结果
     */
    @Override
    public int insertTtAppointments(TtAppointments ttAppointments)
    {
        return ttAppointmentsMapper.insertTtAppointments(ttAppointments);
    }

    /**
     * 修改预约功能
     * 
     * @param ttAppointments 预约功能
     * @return 结果
     */
    @Override
    public int updateTtAppointments(TtAppointments ttAppointments)
    {
        return ttAppointmentsMapper.updateTtAppointments(ttAppointments);
    }

    /**
     * 批量删除预约功能
     * 
     * @param appointmentIds 需要删除的预约功能主键
     * @return 结果
     */
    @Override
    public int deleteTtAppointmentsByAppointmentIds(Long[] appointmentIds)
    {
        return ttAppointmentsMapper.deleteTtAppointmentsByAppointmentIds(appointmentIds);
    }

    /**
     * 删除预约功能信息
     * 
     * @param appointmentId 预约功能主键
     * @return 结果
     */
    @Override
    public int deleteTtAppointmentsByAppointmentId(Long appointmentId)
    {
        return ttAppointmentsMapper.deleteTtAppointmentsByAppointmentId(appointmentId);
    }
}
