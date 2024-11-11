package com.ruoyi.patientlist.service;

import java.util.List;
import com.ruoyi.patientlist.domain.PatientList;

/**
 * 患者信息Service接口
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public interface IPatientListService 
{
    /**
     * 查询患者信息
     * 
     * @param patientId 患者信息主键
     * @return 患者信息
     */
    public PatientList selectPatientListByPatientId(Long patientId);

    /**
     * 查询患者信息列表
     * 
     * @param patientList 患者信息
     * @return 患者信息集合
     */
    public List<PatientList> selectPatientListList(PatientList patientList);

    /**
     * 新增患者信息
     * 
     * @param patientList 患者信息
     * @return 结果
     */
    public int insertPatientList(PatientList patientList);

    /**
     * 修改患者信息
     * 
     * @param patientList 患者信息
     * @return 结果
     */
    public int updatePatientList(PatientList patientList);

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
}
