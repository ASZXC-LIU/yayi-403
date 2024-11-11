package com.ruoyi.bill.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.bill.mapper.BillingRecordsMapper;
import com.ruoyi.bill.domain.BillingRecords;
import com.ruoyi.bill.service.IBillingRecordsService;

/**
 * 收费Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-01
 */
@Service
public class BillingRecordsServiceImpl implements IBillingRecordsService 
{
    @Autowired
    private BillingRecordsMapper billingRecordsMapper;

    /**
     * 查询收费
     * 
     * @param billingId 收费主键
     * @return 收费
     */
    @Override
    public BillingRecords selectBillingRecordsByBillingId(Long billingId)
    {
        return billingRecordsMapper.selectBillingRecordsByBillingId(billingId);
    }

    /**
     * 查询收费列表
     * 
     * @param billingRecords 收费
     * @return 收费
     */
    @Override
    public List<BillingRecords> selectBillingRecordsList(BillingRecords billingRecords)
    {
        return billingRecordsMapper.selectBillingRecordsList(billingRecords);
    }

    /**
     * 新增收费
     * 
     * @param billingRecords 收费
     * @return 结果
     */
    @Override
    public int insertBillingRecords(BillingRecords billingRecords)
    {
        return billingRecordsMapper.insertBillingRecords(billingRecords);
    }

    /**
     * 修改收费
     * 
     * @param billingRecords 收费
     * @return 结果
     */
    @Override
    public int updateBillingRecords(BillingRecords billingRecords)
    {
        return billingRecordsMapper.updateBillingRecords(billingRecords);
    }

    /**
     * 批量删除收费
     * 
     * @param billingIds 需要删除的收费主键
     * @return 结果
     */
    @Override
    public int deleteBillingRecordsByBillingIds(Long[] billingIds)
    {
        return billingRecordsMapper.deleteBillingRecordsByBillingIds(billingIds);
    }

    /**
     * 删除收费信息
     * 
     * @param billingId 收费主键
     * @return 结果
     */
    @Override
    public int deleteBillingRecordsByBillingId(Long billingId)
    {
        return billingRecordsMapper.deleteBillingRecordsByBillingId(billingId);
    }
}
