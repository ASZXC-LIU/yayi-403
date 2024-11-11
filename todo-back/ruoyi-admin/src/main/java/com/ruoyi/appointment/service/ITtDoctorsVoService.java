package com.ruoyi.appointment.service;

import com.ruoyi.appointment.domain.TtDoctorsVo;

import java.util.List;

/**
 * 医生信息Service接口
 * 
 * @author ruoyi
 * @date 2024-10-15
 */
public interface ITtDoctorsVoService
{
    /**
     * 查询医生信息
     * 
     * @param doctorId 医生信息主键
     * @return 医生信息
     */
    public TtDoctorsVo selectTtDoctorsByDoctorId(Long doctorId);

    /**
     * 查询医生信息列表
     * 
     * @param ttDoctors 医生信息
     * @return 医生信息集合
     */
    public List<TtDoctorsVo> selectTtDoctorsList(TtDoctorsVo ttDoctors);

    /**
     * 新增医生信息
     * 
     * @param ttDoctors 医生信息
     * @return 结果
     */
    public int insertTtDoctors(TtDoctorsVo ttDoctors);

    /**
     * 修改医生信息
     * 
     * @param ttDoctors 医生信息
     * @return 结果
     */
    public int updateTtDoctors(TtDoctorsVo ttDoctors);

    /**
     * 批量删除医生信息
     * 
     * @param doctorIds 需要删除的医生信息主键集合
     * @return 结果
     */
    public int deleteTtDoctorsByDoctorIds(Long[] doctorIds);

    /**
     * 删除医生信息信息
     * 
     * @param doctorId 医生信息主键
     * @return 结果
     */
    public int deleteTtDoctorsByDoctorId(Long doctorId);
}
