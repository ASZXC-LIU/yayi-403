package com.ruoyi.appointment.mapper;

import com.ruoyi.appointment.domain.TtPatientsVo;

import java.util.List;

/**
 * 患者信息Mapper接口
 * 
 * @author ruoyi
 * @date 2024-10-16
 */
public interface TtPatientsVoMapper
{
    /**
     * 查询患者信息
     * 
     * @param patientId 患者信息主键
     * @return 患者信息
     */
    public TtPatientsVo selectTtPatientsByPatientId(Long patientId);

    /**
     * 查询患者信息列表
     * 
     * @param ttPatients 患者信息
     * @return 患者信息集合
     */
    public List<TtPatientsVo> selectTtPatientsList(TtPatientsVo ttPatients);

    /**
     * 新增患者信息
     * 
     * @param ttPatients 患者信息
     * @return 结果
     */
    public int insertTtPatients(TtPatientsVo ttPatients);

    /**
     * 修改患者信息
     * 
     * @param ttPatients 患者信息
     * @return 结果
     */
    public int updateTtPatients(TtPatientsVo ttPatients);

    /**
     * 删除患者信息
     * 
     * @param patientId 患者信息主键
     * @return 结果
     */
    public int deleteTtPatientsByPatientId(Long patientId);

    /**
     * 批量删除患者信息
     * 
     * @param patientIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTtPatientsByPatientIds(Long[] patientIds);
}
