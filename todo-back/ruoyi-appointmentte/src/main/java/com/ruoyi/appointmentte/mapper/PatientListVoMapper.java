package com.ruoyi.appointmentte.mapper;

import com.ruoyi.appointmentte.domain.PatientListVo;

import java.util.List;

/**
 * 患者信息Mapper接口
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public interface PatientListVoMapper
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
     * 删除患者信息
     * 
     * @param patientId 患者信息主键
     * @return 结果
     */
    public int deletePatientListByPatientId(Long patientId);

    /**
     * 通过名字查询是否存在
     *
     * @param patientListVo 患者信息主键
     * @return 结果
     */
    public Integer selectTtPatientsByName(PatientListVo patientListVo);




    /**
     * 批量删除患者信息
     * 
     * @param patientIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePatientListByPatientIds(Long[] patientIds);
}
