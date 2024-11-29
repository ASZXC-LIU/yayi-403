package com.ruoyi.appointmentte.mapper;

import java.util.List;
import com.ruoyi.appointmentte.domain.TtAppointmentsTest;

/**
 * 预约测试Mapper接口
 * 
 * @author ruoyi
 * @date 2024-11-28
 */
public interface TtAppointmentsTestMapper 
{
    /**
     * 查询预约测试
     * 
     * @param appointmentId 预约测试主键
     * @return 预约测试
     */
    public TtAppointmentsTest selectTtAppointmentsTestByAppointmentId(Long appointmentId);

    /**
     * 查询预约测试列表
     * 
     * @param ttAppointmentsTest 预约测试
     * @return 预约测试集合
     */
    public List<TtAppointmentsTest> selectTtAppointmentsTestList(TtAppointmentsTest ttAppointmentsTest);

    /**
     * 新增预约测试
     * 
     * @param ttAppointmentsTest 预约测试
     * @return 结果
     */
    public int insertTtAppointmentsTest(TtAppointmentsTest ttAppointmentsTest);

    /**
     * 修改预约测试
     * 
     * @param ttAppointmentsTest 预约测试
     * @return 结果
     */
    public int updateTtAppointmentsTest(TtAppointmentsTest ttAppointmentsTest);

    /**
     * 删除预约测试
     * 
     * @param appointmentId 预约测试主键
     * @return 结果
     */
    public int deleteTtAppointmentsTestByAppointmentId(Long appointmentId);

    /**
     * 批量删除预约测试
     * 
     * @param appointmentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTtAppointmentsTestByAppointmentIds(Long[] appointmentIds);
}
