package com.ruoyi.record.service;

import java.util.List;
import com.ruoyi.record.domain.MedicalRecords;

/**
 * 就诊记录Service接口
 * 
 * @author 刘航
 * @date 2024-11-30
 */
public interface IMedicalRecordsService 
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
     * 批量删除就诊记录
     * 
     * @param medicalRecordsIds 需要删除的就诊记录主键集合
     * @return 结果
     */
    public int deleteMedicalRecordsByMedicalRecordsIds(Long[] medicalRecordsIds);

    /**
     * 删除就诊记录信息
     * 
     * @param medicalRecordsId 就诊记录主键
     * @return 结果
     */
    public int deleteMedicalRecordsByMedicalRecordsId(Long medicalRecordsId);
}
