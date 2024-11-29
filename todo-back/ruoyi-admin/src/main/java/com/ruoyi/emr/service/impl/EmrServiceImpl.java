package com.ruoyi.emr.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.emr.mapper.EmrMapper;
import com.ruoyi.emr.domain.Emr;
import com.ruoyi.emr.service.IEmrService;

/**
 * 病历列表Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-24
 */
@Service
public class EmrServiceImpl implements IEmrService 
{
    @Autowired
    private EmrMapper emrMapper;

    /**
     * 查询病历列表
     * 
     * @param emrId 病历列表主键
     * @return 病历列表
     */
    @Override
    public Emr selectEmrByEmrId(Long emrId)
    {
        return emrMapper.selectEmrByEmrId(emrId);
    }

    /**
     * 查询病历列表列表
     * 
     * @param emr 病历列表
     * @return 病历列表
     */
    @Override
    public List<Emr> selectEmrList(Emr emr)
    {
        return emrMapper.selectEmrList(emr);
    }

    /**
     * 新增病历列表
     * 
     * @param emr 病历列表
     * @return 结果
     */
    @Override
    public int insertEmr(Emr emr)
    {
        return emrMapper.insertEmr(emr);
    }

    /**
     * 修改病历列表
     * 
     * @param emr 病历列表
     * @return 结果
     */
    @Override
    public int updateEmr(Emr emr)
    {
        return emrMapper.updateEmr(emr);
    }

    /**
     * 批量删除病历列表
     * 
     * @param emrIds 需要删除的病历列表主键
     * @return 结果
     */
    @Override
    public int deleteEmrByEmrIds(Long[] emrIds)
    {
        return emrMapper.deleteEmrByEmrIds(emrIds);
    }

    /**
     * 删除病历列表信息
     * 
     * @param emrId 病历列表主键
     * @return 结果
     */
    @Override
    public int deleteEmrByEmrId(Long emrId)
    {
        return emrMapper.deleteEmrByEmrId(emrId);
    }
}
