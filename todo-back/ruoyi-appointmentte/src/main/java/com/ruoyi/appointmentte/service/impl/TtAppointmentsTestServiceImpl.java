package com.ruoyi.appointmentte.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.appointmentte.mapper.TtAppointmentsTestMapper;
import com.ruoyi.appointmentte.domain.TtAppointmentsTest;
import com.ruoyi.appointmentte.service.ITtAppointmentsTestService;
import com.ruoyi.appointmentte.domain.PatientListVo;
import com.ruoyi.appointmentte.mapper.PatientListVoMapper;

/**
 * 预约测试Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-28
 */
@Service
public class TtAppointmentsTestServiceImpl implements ITtAppointmentsTestService 
{


    @Autowired
    private TtAppointmentsTestMapper ttAppointmentsTestMapper;
//    @Autowired
//    private PatientListVoMapper ttPatientsMapper; // 注入tt_patients的Mapper

    /**
     * 查询预约测试
     * 
     * @param appointmentId 预约测试主键
     * @return 预约测试
     */
    @Override
    public TtAppointmentsTest selectTtAppointmentsTestByAppointmentId(Long appointmentId)
    {
        return ttAppointmentsTestMapper.selectTtAppointmentsTestByAppointmentId(appointmentId);
    }



    /**
     * 预约之前通过名字和手机号判断患者是否存在
     *
     * @param ttAppointmentsTest 预约测试主键
     * @return 预约测试
     */
    @Override
    public PatientListVo ifExitBeforAppointment(TtAppointmentsTest ttAppointmentsTest)
    {
        System.out.println("33333333333333333333333333333333"+ttAppointmentsTestMapper.ifExitBeforAppointment(ttAppointmentsTest));
        return ttAppointmentsTestMapper.ifExitBeforAppointment(ttAppointmentsTest);
    }


    /**
     * 查询预约测试列表
     * 
     * @param ttAppointmentsTest 预约测试
     * @return 预约测试
     */
    @Override
    public List<TtAppointmentsTest> selectTtAppointmentsTestList(TtAppointmentsTest ttAppointmentsTest)
    {
        return ttAppointmentsTestMapper.selectTtAppointmentsTestList(ttAppointmentsTest);
    }

/**
 //     * 新增预约测试
 //     *
 //     * @param ttAppointmentsTest 预约测试
 //     * @return 结果
 //     */
    @Override
    public int insertTtAppointmentsTest(TtAppointmentsTest ttAppointmentsTest)
    {


        // 如果患者姓名和联系方式都匹配，进行插入操作
        return ttAppointmentsTestMapper.insertTtAppointmentsTest(ttAppointmentsTest);
    }



//
//    /**
//     * 新增预约测试
//     *
//     * @param ttAppointmentsTest 预约测试
//     * @return 结果
//     */
//    @Override
//    public int insertTtAppointmentsTest(TtAppointmentsTest ttAppointmentsTest)
//    {
//        // 校验患者姓名和联系方式
//        // 通过患者姓名查询患者
//        PatientListVo patient = ttPatientsMapper.selectTtPatientsByName(ttAppointmentsTest.getPatientName());
//
//        if (patient == null) {
//            // 如果患者姓名不存在，抛出异常
//            throw new RuntimeException("患者信息未录入");
//        }
//
//        // 如果患者姓名存在，则检查联系方式
//        if (!patient.getPhone().equals(ttAppointmentsTest.getPatientPhone())) {
//            // 如果联系方式不匹配，抛出异常
//            throw new RuntimeException("患者联系方式不正确");
//        }
//
//        // 如果患者姓名和联系方式都匹配，进行插入操作
//        return ttAppointmentsTestMapper.insertTtAppointmentsTest(ttAppointmentsTest);
//    }

    /**
     * 修改预约测试
     * 
     * @param ttAppointmentsTest 预约测试
     * @return 结果
     */
    @Override
    public int updateTtAppointmentsTest(TtAppointmentsTest ttAppointmentsTest)
    {
        return ttAppointmentsTestMapper.updateTtAppointmentsTest(ttAppointmentsTest);
    }

    /**
     * 批量删除预约测试
     * 
     * @param appointmentIds 需要删除的预约测试主键
     * @return 结果
     */
    @Override
    public int deleteTtAppointmentsTestByAppointmentIds(Long[] appointmentIds)
    {
        return ttAppointmentsTestMapper.deleteTtAppointmentsTestByAppointmentIds(appointmentIds);
    }

    /**
     * 删除预约测试信息
     * 
     * @param appointmentId 预约测试主键
     * @return 结果
     */
    @Override
    public int deleteTtAppointmentsTestByAppointmentId(Long appointmentId)
    {
        return ttAppointmentsTestMapper.deleteTtAppointmentsTestByAppointmentId(appointmentId);
    }
}
