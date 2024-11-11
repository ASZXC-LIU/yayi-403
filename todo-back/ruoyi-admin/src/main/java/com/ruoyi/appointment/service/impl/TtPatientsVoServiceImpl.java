package com.ruoyi.appointment.service.impl;

import java.util.List;

import com.ruoyi.appointment.domain.TtPatientsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.appointment.mapper.TtPatientsVoMapper;
import com.ruoyi.appointment.service.ITtPatientsVoService;

/**
 * 患者信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-10-16
 */
@Service
public class TtPatientsVoServiceImpl implements ITtPatientsVoService
{
    @Autowired
    private TtPatientsVoMapper ttPatientsMapper;

    /**
     * 查询患者信息
     * 
     * @param patientId 患者信息主键
     * @return 患者信息
     */
    @Override
    public TtPatientsVo selectTtPatientsByPatientId(Long patientId)
    {
        return ttPatientsMapper.selectTtPatientsByPatientId(patientId);
    }

    /**
     * 查询患者信息列表
     * 
     * @param ttPatients 患者信息
     * @return 患者信息
     */
    @Override
    public List<TtPatientsVo> selectTtPatientsList(TtPatientsVo ttPatients)
    {
        return ttPatientsMapper.selectTtPatientsList(ttPatients);
    }

    /**
     * 新增患者信息
     * 
     * @param ttPatients 患者信息
     * @return 结果
     */
    @Override
    public int insertTtPatients(TtPatientsVo ttPatients)
    {
        return ttPatientsMapper.insertTtPatients(ttPatients);
    }

    /**
     * 修改患者信息
     * 
     * @param ttPatients 患者信息
     * @return 结果
     */
    @Override
    public int updateTtPatients(TtPatientsVo ttPatients)
    {
        return ttPatientsMapper.updateTtPatients(ttPatients);
    }

    /**
     * 批量删除患者信息
     * 
     * @param patientIds 需要删除的患者信息主键
     * @return 结果
     */
    @Override
    public int deleteTtPatientsByPatientIds(Long[] patientIds)
    {
        return ttPatientsMapper.deleteTtPatientsByPatientIds(patientIds);
    }

    /**
     * 删除患者信息信息
     * 
     * @param patientId 患者信息主键
     * @return 结果
     */
    @Override
    public int deleteTtPatientsByPatientId(Long patientId)
    {
        return ttPatientsMapper.deleteTtPatientsByPatientId(patientId);
    }
}
