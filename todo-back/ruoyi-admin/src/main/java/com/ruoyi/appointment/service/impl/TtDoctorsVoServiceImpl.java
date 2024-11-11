package com.ruoyi.appointment.service.impl;

import java.util.List;

import com.ruoyi.appointment.domain.TtDoctorsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.appointment.mapper.TtDoctorsVoMapper;
import com.ruoyi.appointment.service.ITtDoctorsVoService;

/**
 * 医生信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-10-15
 */
@Service
public class TtDoctorsVoServiceImpl implements ITtDoctorsVoService
{
    @Autowired
    private TtDoctorsVoMapper ttDoctorsVoMapper;

    /**
     * 查询医生信息
     * 
     * @param doctorId 医生信息主键
     * @return 医生信息
     */
    @Override
    public TtDoctorsVo selectTtDoctorsByDoctorId(Long doctorId)
    {
        return ttDoctorsVoMapper.selectTtDoctorsByDoctorId(doctorId);
    }

    /**
     * 查询医生信息列表
     * 
     * @param ttDoctors 医生信息
     * @return 医生信息
     */
    @Override
    public List<TtDoctorsVo> selectTtDoctorsList(TtDoctorsVo ttDoctors)
    {
        return ttDoctorsVoMapper.selectTtDoctorsList(ttDoctors);
    }

    /**
     * 新增医生信息
     * 
     * @param ttDoctors 医生信息
     * @return 结果
     */
    @Override
    public int insertTtDoctors(TtDoctorsVo ttDoctors)
    {
        return ttDoctorsVoMapper.insertTtDoctors(ttDoctors);
    }

    /**
     * 修改医生信息
     * 
     * @param ttDoctors 医生信息
     * @return 结果
     */
    @Override
    public int updateTtDoctors(TtDoctorsVo ttDoctors)
    {
        return ttDoctorsVoMapper.updateTtDoctors(ttDoctors);
    }

    /**
     * 批量删除医生信息
     * 
     * @param doctorIds 需要删除的医生信息主键
     * @return 结果
     */
    @Override
    public int deleteTtDoctorsByDoctorIds(Long[] doctorIds)
    {
        return ttDoctorsVoMapper.deleteTtDoctorsByDoctorIds(doctorIds);
    }

    /**
     * 删除医生信息信息
     * 
     * @param doctorId 医生信息主键
     * @return 结果
     */
    @Override
    public int deleteTtDoctorsByDoctorId(Long doctorId)
    {
        return ttDoctorsVoMapper.deleteTtDoctorsByDoctorId(doctorId);
    }
}
