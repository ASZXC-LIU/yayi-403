package com.ruoyi.record.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.record.mapper.MedicalRecordsMapper;
import com.ruoyi.record.domain.MedicalRecords;
import com.ruoyi.record.service.IMedicalRecordsService;

/**
 * 就诊记录Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-30
 */
@Service
public class MedicalRecordsServiceImpl implements IMedicalRecordsService 
{
    @Autowired
    private MedicalRecordsMapper medicalRecordsMapper;

    /**
     * 查询就诊记录
     * 
     * @param medicalRecordsId 就诊记录主键
     * @return 就诊记录
     */
    @Override
    public MedicalRecords selectMedicalRecordsByMedicalRecordsId(Long medicalRecordsId)
    {
        return medicalRecordsMapper.selectMedicalRecordsByMedicalRecordsId(medicalRecordsId);
    }

    /**
     * 查询就诊记录列表
     * 
     * @param medicalRecords 就诊记录
     * @return 就诊记录
     */
    @Override
    public List<MedicalRecords> selectMedicalRecordsList(MedicalRecords medicalRecords)
    {
        return medicalRecordsMapper.selectMedicalRecordsList(medicalRecords);
    }



    /**
     * 查询就诊记录列表
     *
     * @param patientId 就诊记录
     * @return 就诊记录
     */
    @Override
    public List<MedicalRecords> getRecordsByPatientId(Long patientId)
    {
        return medicalRecordsMapper.getRecordsByPatientId(patientId);
    }




    /**
     * 新增就诊记录
     * 
     * @param medicalRecords 就诊记录
     * @return 结果
     */
    @Override
    public int insertMedicalRecords(MedicalRecords medicalRecords)
    {
        return medicalRecordsMapper.insertMedicalRecords(medicalRecords);
    }

    /**
     * 修改就诊记录
     * 
     * @param medicalRecords 就诊记录
     * @return 结果
     */
    @Override
    public int updateMedicalRecords(MedicalRecords medicalRecords)
    {
        return medicalRecordsMapper.updateMedicalRecords(medicalRecords);
    }

    /**
     * 批量删除就诊记录
     * 
     * @param medicalRecordsIds 需要删除的就诊记录主键
     * @return 结果
     */
    @Override
    public int deleteMedicalRecordsByMedicalRecordsIds(Long[] medicalRecordsIds)
    {
        return medicalRecordsMapper.deleteMedicalRecordsByMedicalRecordsIds(medicalRecordsIds);
    }

    /**
     * 删除就诊记录信息
     * 
     * @param medicalRecordsId 就诊记录主键
     * @return 结果
     */
    @Override
    public int deleteMedicalRecordsByMedicalRecordsId(Long medicalRecordsId)
    {
        return medicalRecordsMapper.deleteMedicalRecordsByMedicalRecordsId(medicalRecordsId);
    }
}
