package com.ruoyi.appointmentte.service.impl;

import com.ruoyi.appointmentte.domain.PatientListVo;
import com.ruoyi.appointmentte.mapper.PatientListVoMapper;
import com.ruoyi.appointmentte.service.IPatientListVoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 患者信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
@Service
public class PatientListVoVoServiceImpl implements IPatientListVoService
{
    @Autowired
    private PatientListVoMapper patientListVoMapper;

    /**
     * 查询患者信息
     * 
     * @param patientId 患者信息主键
     * @return 患者信息
     */
    @Override
    public PatientListVo selectPatientListByPatientId(Long patientId)
    {
        return patientListVoMapper.selectPatientListByPatientId(patientId);
    }

    /**
     * 查询患者信息列表
     * 
     * @param patientListVo 患者信息
     * @return 患者信息
     */
    @Override
    public List<PatientListVo> selectPatientListList(PatientListVo patientListVo)
    {
        return patientListVoMapper.selectPatientListList(patientListVo);
    }

    /**
     * 新增患者信息
     * 
     * @param patientListVo 患者信息
     * @return 结果
     */
    @Override
    public int insertPatientList(PatientListVo patientListVo)
    {
        return patientListVoMapper.insertPatientList(patientListVo);
    }

    /**
     * 修改患者信息
     * 
     * @param patientListVo 患者信息
     * @return 结果
     */
    @Override
    public int updatePatientList(PatientListVo patientListVo)
    {
        return patientListVoMapper.updatePatientList(patientListVo);
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
        return patientListVoMapper.deletePatientListByPatientIds(patientIds);
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
        return patientListVoMapper.deletePatientListByPatientId(patientId);
    }


}
