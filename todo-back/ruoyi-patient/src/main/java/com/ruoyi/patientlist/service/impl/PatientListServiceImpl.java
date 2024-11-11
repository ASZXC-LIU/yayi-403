package com.ruoyi.patientlist.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.patientlist.mapper.PatientListMapper;
import com.ruoyi.patientlist.domain.PatientList;
import com.ruoyi.patientlist.service.IPatientListService;

/**
 * 患者信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
@Service
public class PatientListServiceImpl implements IPatientListService 
{
    @Autowired
    private PatientListMapper patientListMapper;

    /**
     * 查询患者信息
     * 
     * @param patientId 患者信息主键
     * @return 患者信息
     */
    @Override
    public PatientList selectPatientListByPatientId(Long patientId)
    {
        return patientListMapper.selectPatientListByPatientId(patientId);
    }

    /**
     * 查询患者信息列表
     * 
     * @param patientList 患者信息
     * @return 患者信息
     */
    @Override
    public List<PatientList> selectPatientListList(PatientList patientList)
    {
        return patientListMapper.selectPatientListList(patientList);
    }

    /**
     * 新增患者信息
     * 
     * @param patientList 患者信息
     * @return 结果
     */
    @Override
    public int insertPatientList(PatientList patientList)
    {
        return patientListMapper.insertPatientList(patientList);
    }

    /**
     * 修改患者信息
     * 
     * @param patientList 患者信息
     * @return 结果
     */
    @Override
    public int updatePatientList(PatientList patientList)
    {
        return patientListMapper.updatePatientList(patientList);
    }

    /**
     * 批量删除患者信息
     * 
     * @param patientIds 需要删除的患者信息主键
     * @return 结果
     */
    @Override
    public int deletePatientListByPatientIds(Long[] patientIds)
    {
        return patientListMapper.deletePatientListByPatientIds(patientIds);
    }

    /**
     * 删除患者信息信息
     * 
     * @param patientId 患者信息主键
     * @return 结果
     */
    @Override
    public int deletePatientListByPatientId(Long patientId)
    {
        return patientListMapper.deletePatientListByPatientId(patientId);
    }
}
