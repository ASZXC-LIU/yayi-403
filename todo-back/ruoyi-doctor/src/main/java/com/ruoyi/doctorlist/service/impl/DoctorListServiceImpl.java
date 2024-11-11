package com.ruoyi.doctorlist.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.doctorlist.mapper.DoctorListMapper;
import com.ruoyi.doctorlist.domain.DoctorList;
import com.ruoyi.doctorlist.service.IDoctorListService;

/**
 * 医生信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
@Service
public class DoctorListServiceImpl implements IDoctorListService 
{
    @Autowired
    private DoctorListMapper doctorListMapper;

    /**
     * 查询医生信息
     * 
     * @param doctorId 医生信息主键
     * @return 医生信息
     */
    @Override
    public DoctorList selectDoctorListByDoctorId(Long doctorId)
    {
        return doctorListMapper.selectDoctorListByDoctorId(doctorId);
    }

    /**
     * 查询医生信息列表
     * 
     * @param doctorList 医生信息
     * @return 医生信息
     */
    @Override
    public List<DoctorList> selectDoctorListList(DoctorList doctorList)
    {
        return doctorListMapper.selectDoctorListList(doctorList);
    }

    /**
     * 新增医生信息
     * 
     * @param doctorList 医生信息
     * @return 结果
     */
    @Override
    public int insertDoctorList(DoctorList doctorList)
    {
        return doctorListMapper.insertDoctorList(doctorList);
    }

    /**
     * 修改医生信息
     * 
     * @param doctorList 医生信息
     * @return 结果
     */
    @Override
    public int updateDoctorList(DoctorList doctorList)
    {
        return doctorListMapper.updateDoctorList(doctorList);
    }

    /**
     * 批量删除医生信息
     * 
     * @param doctorIds 需要删除的医生信息主键
     * @return 结果
     */
    @Override
    public int deleteDoctorListByDoctorIds(Long[] doctorIds)
    {
        return doctorListMapper.deleteDoctorListByDoctorIds(doctorIds);
    }

    /**
     * 删除医生信息信息
     * 
     * @param doctorId 医生信息主键
     * @return 结果
     */
    @Override
    public int deleteDoctorListByDoctorId(Long doctorId)
    {
        return doctorListMapper.deleteDoctorListByDoctorId(doctorId);
    }
}
