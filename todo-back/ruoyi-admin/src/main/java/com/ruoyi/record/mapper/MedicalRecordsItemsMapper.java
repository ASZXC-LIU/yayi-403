package com.ruoyi.record.mapper;

import java.util.List;
import com.ruoyi.record.domain.MedicalRecordsItems;

/**
 * 就诊物品使用记录Mapper接口
 * 
 * @author 刘航
 * @date 2024-12-01
 */
public interface MedicalRecordsItemsMapper 
{
    /**
     * 查询就诊物品使用记录
     * 
     * @param recordItemId 就诊物品使用记录主键
     * @return 就诊物品使用记录
     */
    public MedicalRecordsItems selectMedicalRecordsItemsByRecordItemId(Long recordItemId);

    /**
     * 查询就诊物品使用记录列表
     * 
     * @param medicalRecordsItems 就诊物品使用记录
     * @return 就诊物品使用记录集合
     */
    public List<MedicalRecordsItems> selectMedicalRecordsItemsList(MedicalRecordsItems medicalRecordsItems);

    /**
     * 新增就诊物品使用记录
     * 
     * @param medicalRecordsItems 就诊物品使用记录
     * @return 结果
     */
    public int insertMedicalRecordsItems(MedicalRecordsItems medicalRecordsItems);

    /**
     * 修改就诊物品使用记录
     * 
     * @param medicalRecordsItems 就诊物品使用记录
     * @return 结果
     */
    public int updateMedicalRecordsItems(MedicalRecordsItems medicalRecordsItems);

    /**
     * 删除就诊物品使用记录
     * 
     * @param recordItemId 就诊物品使用记录主键
     * @return 结果
     */
    public int deleteMedicalRecordsItemsByRecordItemId(Long recordItemId);

    /**
     * 批量删除就诊物品使用记录
     * 
     * @param recordItemIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMedicalRecordsItemsByRecordItemIds(Long[] recordItemIds);
}
