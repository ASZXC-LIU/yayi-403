package com.ruoyi.patientlist.mapper;

import java.util.List;
import com.ruoyi.patientlist.domain.PatientList;

/**
 * 患者信息Mapper接口
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public interface PatientListMapper 
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
     * 删除患者信息
     * 
     * @param patientId 患者信息主键
     * @return 结果
     */
    public int deletePatientListByPatientId(Long patientId);

    /**
     * 批量删除患者信息
     * 
     * @param patientIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePatientListByPatientIds(Long[] patientIds);
}
