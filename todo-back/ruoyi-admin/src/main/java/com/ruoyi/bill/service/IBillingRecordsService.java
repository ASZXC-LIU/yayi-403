package com.ruoyi.bill.service;

import java.util.List;
import com.ruoyi.bill.domain.BillingRecords;

/**
 * 收费Service接口
 * 
 * @author ruoyi
 * @date 2024-11-01
 */
public interface IBillingRecordsService 
{
    /**
     * 查询收费
     * 
     * @param billingId 收费主键
     * @return 收费
     */
    public BillingRecords selectBillingRecordsByBillingId(Long billingId);

    /**
     * 查询收费列表
     * 
     * @param billingRecords 收费
     * @return 收费集合
     */
    public List<BillingRecords> selectBillingRecordsList(BillingRecords billingRecords);

    /**
     * 新增收费
     * 
     * @param billingRecords 收费
     * @return 结果
     */
    public int insertBillingRecords(BillingRecords billingRecords);

    /**
     * 修改收费
     * 
     * @param billingRecords 收费
     * @return 结果
     */
    public int updateBillingRecords(BillingRecords billingRecords);

    /**
     * 批量删除收费
     * 
     * @param billingIds 需要删除的收费主键集合
     * @return 结果
     */
    public int deleteBillingRecordsByBillingIds(Long[] billingIds);

    /**
     * 删除收费信息
     * 
     * @param billingId 收费主键
     * @return 结果
     */
    public int deleteBillingRecordsByBillingId(Long billingId);
}
