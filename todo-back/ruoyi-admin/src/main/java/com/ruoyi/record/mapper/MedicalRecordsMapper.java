package com.ruoyi.record.mapper;

import java.util.List;
import com.ruoyi.record.domain.MedicalRecords;

/**
 * 就诊记录Mapper接口
 * 
 * @author 刘航
 * @date 2024-11-30
 */
public interface MedicalRecordsMapper 
{
    /**
     * 查询就诊记录
     * 
     * @param medicalRecordsId 就诊记录主键
     * @return 就诊记录
     */
    public MedicalRecords selectMedicalRecordsByMedicalRecordsId(Long medicalRecordsId);

    /**
     * 查询就诊记录列表
     * 
     * @param medicalRecords 就诊记录
     * @return 就诊记录集合
     */
    public List<MedicalRecords> selectMedicalRecordsList(MedicalRecords medicalRecords);

    /**
     * 查询就诊记录列表
     *
     * @param patientId 就诊记录
     * @return 就诊记录集合
     */
    public List<MedicalRecords> getRecordsByPatientId(Long patientId);



    /**
     * 新增就诊记录
     * 
     * @param medicalRecords 就诊记录
     * @return 结果
     */
    public int insertMedicalRecords(MedicalRecords medicalRecords);

    /**
     * 修改就诊记录
     * 
     * @param medicalRecords 就诊记录
     * @return 结果
     */
    public int updateMedicalRecords(MedicalRecords medicalRecords);

    /**
     * 删除就诊记录
     * 
     * @param medicalRecordsId 就诊记录主键
     * @return 结果
     */
    public int deleteMedicalRecordsByMedicalRecordsId(Long medicalRecordsId);

    /**
     * 批量删除就诊记录
     * 
     * @param medicalRecordsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMedicalRecordsByMedicalRecordsIds(Long[] medicalRecordsIds);
}
