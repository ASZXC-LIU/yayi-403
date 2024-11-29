package com.ruoyi.emr.service;

import java.util.List;
import com.ruoyi.emr.domain.Emr;

/**
 * 病历列表Service接口
 * 
 * @author 刘航
 * @date 2024-11-24
 */
public interface IEmrService 
{
    /**
     * 查询病历列表
     * 
     * @param emrId 病历列表主键
     * @return 病历列表
     */
    public Emr selectEmrByEmrId(Long emrId);

    /**
     * 查询病历列表列表
     * 
     * @param emr 病历列表
     * @return 病历列表集合
     */
    public List<Emr> selectEmrList(Emr emr);

    /**
     * 新增病历列表
     * 
     * @param emr 病历列表
     * @return 结果
     */
    public int insertEmr(Emr emr);

    /**
     * 修改病历列表
     * 
     * @param emr 病历列表
     * @return 结果
     */
    public int updateEmr(Emr emr);

    /**
     * 批量删除病历列表
     * 
     * @param emrIds 需要删除的病历列表主键集合
     * @return 结果
     */
    public int deleteEmrByEmrIds(Long[] emrIds);

    /**
     * 删除病历列表信息
     * 
     * @param emrId 病历列表主键
     * @return 结果
     */
    public int deleteEmrByEmrId(Long emrId);
}
