package com.ruoyi.doctorlist.mapper;

import java.util.List;
import com.ruoyi.doctorlist.domain.DoctorList;

/**
 * 医生信息Mapper接口
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public interface DoctorListMapper 
{
    /**
     * 查询医生信息
     * 
     * @param doctorId 医生信息主键
     * @return 医生信息
     */
    public DoctorList selectDoctorListByDoctorId(Long doctorId);

    /**
     * 查询医生信息列表
     * 
     * @param doctorList 医生信息
     * @return 医生信息集合
     */
    public List<DoctorList> selectDoctorListList(DoctorList doctorList);

    /**
     * 新增医生信息
     * 
     * @param doctorList 医生信息
     * @return 结果
     */
    public int insertDoctorList(DoctorList doctorList);

    /**
     * 修改医生信息
     * 
     * @param doctorList 医生信息
     * @return 结果
     */
    public int updateDoctorList(DoctorList doctorList);

    /**
     * 删除医生信息
     * 
     * @param doctorId 医生信息主键
     * @return 结果
     */
    public int deleteDoctorListByDoctorId(Long doctorId);

    /**
     * 批量删除医生信息
     * 
     * @param doctorIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDoctorListByDoctorIds(Long[] doctorIds);
}
