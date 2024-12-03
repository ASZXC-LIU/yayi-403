package com.ruoyi.record.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.record.mapper.MedicalRecordsItemsMapper;
import com.ruoyi.record.domain.MedicalRecordsItems;
import com.ruoyi.record.service.IMedicalRecordsItemsService;

/**
 * 就诊物品使用记录Service业务层处理
 * 
 * @author 刘航
 * @date 2024-12-01
 */
@Service
public class MedicalRecordsItemsServiceImpl implements IMedicalRecordsItemsService 
{
    @Autowired
    private MedicalRecordsItemsMapper medicalRecordsItemsMapper;

    /**
     * 查询就诊物品使用记录
     * 
     * @param recordItemId 就诊物品使用记录主键
     * @return 就诊物品使用记录
     */
    @Override
    public MedicalRecordsItems selectMedicalRecordsItemsByRecordItemId(Long recordItemId)
    {
        return medicalRecordsItemsMapper.selectMedicalRecordsItemsByRecordItemId(recordItemId);
    }

    /**
     * 查询就诊物品使用记录列表
     * 
     * @param medicalRecordsItems 就诊物品使用记录
     * @return 就诊物品使用记录
     */
    @Override
    public List<MedicalRecordsItems> selectMedicalRecordsItemsList(MedicalRecordsItems medicalRecordsItems)
    {
        return medicalRecordsItemsMapper.selectMedicalRecordsItemsList(medicalRecordsItems);
    }

    /**
     * 新增就诊物品使用记录
     * 
     * @param medicalRecordsItems 就诊物品使用记录
     * @return 结果
     */
    @Override
    public int insertMedicalRecordsItems(MedicalRecordsItems medicalRecordsItems)
    {
        return medicalRecordsItemsMapper.insertMedicalRecordsItems(medicalRecordsItems);
    }

    /**
     * 修改就诊物品使用记录
     * 
     * @param medicalRecordsItems 就诊物品使用记录
     * @return 结果
     */
    @Override
    public int updateMedicalRecordsItems(MedicalRecordsItems medicalRecordsItems)
    {
        return medicalRecordsItemsMapper.updateMedicalRecordsItems(medicalRecordsItems);
    }

    /**
     * 批量删除就诊物品使用记录
     * 
     * @param recordItemIds 需要删除的就诊物品使用记录主键
     * @return 结果
     */
    @Override
    public int deleteMedicalRecordsItemsByRecordItemIds(Long[] recordItemIds)
    {
        return medicalRecordsItemsMapper.deleteMedicalRecordsItemsByRecordItemIds(recordItemIds);
    }

    /**
     * 删除就诊物品使用记录信息
     * 
     * @param recordItemId 就诊物品使用记录主键
     * @return 结果
     */
    @Override
    public int deleteMedicalRecordsItemsByRecordItemId(Long recordItemId)
    {
        return medicalRecordsItemsMapper.deleteMedicalRecordsItemsByRecordItemId(recordItemId);
    }
}
