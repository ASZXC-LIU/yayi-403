package com.ruoyi.billing.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.billing.mapper.TtBillingMapper;
import com.ruoyi.billing.domain.TtBilling;
import com.ruoyi.billing.service.ITtBillingService;

/**
 * 账单管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
@Service
public class TtBillingServiceImpl implements ITtBillingService 
{
    @Autowired
    private TtBillingMapper ttBillingMapper;

    /**
     * 查询账单管理
     * 
     * @param billingId 账单管理主键
     * @return 账单管理
     */
    @Override
    public TtBilling selectTtBillingByBillingId(Long billingId)
    {
        return ttBillingMapper.selectTtBillingByBillingId(billingId);
    }

    /**
     * 查询账单管理列表
     * 
     * @param ttBilling 账单管理
     * @return 账单管理
     */
    @Override
    public List<TtBilling> selectTtBillingList(TtBilling ttBilling)
    {
        return ttBillingMapper.selectTtBillingList(ttBilling);
    }

    /**
     * 新增账单管理
     * 
     * @param ttBilling 账单管理
     * @return 结果
     */
    @Override
    public int insertTtBilling(TtBilling ttBilling)
    {
        return ttBillingMapper.insertTtBilling(ttBilling);
    }

    /**
     * 修改账单管理
     * 
     * @param ttBilling 账单管理
     * @return 结果
     */
    @Override
    public int updateTtBilling(TtBilling ttBilling)
    {
        return ttBillingMapper.updateTtBilling(ttBilling);
    }

    /**
     * 批量删除账单管理
     * 
     * @param billingIds 需要删除的账单管理主键
     * @return 结果
     */
    @Override
    public int deleteTtBillingByBillingIds(Long[] billingIds)
    {
        return ttBillingMapper.deleteTtBillingByBillingIds(billingIds);
    }

    /**
     * 删除账单管理信息
     * 
     * @param billingId 账单管理主键
     * @return 结果
     */
    @Override
    public int deleteTtBillingByBillingId(Long billingId)
    {
        return ttBillingMapper.deleteTtBillingByBillingId(billingId);
    }
}
