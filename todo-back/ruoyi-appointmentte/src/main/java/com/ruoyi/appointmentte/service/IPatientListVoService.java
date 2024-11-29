package com.ruoyi.appointmentte.service;

import com.ruoyi.appointmentte.domain.PatientListVo;

import java.util.List;

/**
 * 患者信息Service接口
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public interface IPatientListVoService
{
    /**
     * 查询患者信息
     * 
     * @param patientId 患者信息主键
     * @return 患者信息
     */
    public PatientListVo selectPatientListByPatientId(Long patientId);

    /**
     * 查询患者信息列表
     * 
     * @param patientListVo 患者信息
     * @return 患者信息集合
     */
    public List<PatientListVo> selectPatientListList(PatientListVo patientListVo);

    /**
     * 新增患者信息
     * 
     * @param patientListVo 患者信息
     * @return 结果
     */
    public int insertPatientList(PatientListVo patientListVo);

    /**
     * 修改患者信息
     * 
     * @param patientListVo 患者信息
     * @return 结果
     */
    public int updatePatientList(PatientListVo patientListVo);

    /**
     * 批量删除患者信息
     * 
     * @param patientIds 需要删除的患者信息主键集合
     * @return 结果
     */
    public int deletePatientListByPatientIds(Long[] patientIds);

    /**
     * 删除患者信息信息
     * 
     * @param patientId 患者信息主键
     * @return 结果
     */
    public int deletePatientListByPatientId(Long patientId);


    // 根据患者姓名查询患者
    public PatientListVo selectTtPatientsByName(String patientName);
}
