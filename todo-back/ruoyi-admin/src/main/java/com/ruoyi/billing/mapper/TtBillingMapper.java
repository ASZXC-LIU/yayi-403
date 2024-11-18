package com.ruoyi.billing.mapper;

import java.util.List;
import com.ruoyi.billing.domain.TtBilling;

/**
 * 账单管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
public interface TtBillingMapper 
{
    /**
     * 查询账单管理
     * 
     * @param billingId 账单管理主键
     * @return 账单管理
     */
    public TtBilling selectTtBillingByBillingId(Long billingId);

    /**
     * 查询账单管理列表
     * 
     * @param ttBilling 账单管理
     * @return 账单管理集合
     */
    public List<TtBilling> selectTtBillingList(TtBilling ttBilling);

    /**
     * 新增账单管理
     * 
     * @param ttBilling 账单管理
     * @return 结果
     */
    public int insertTtBilling(TtBilling ttBilling);

    /**
     * 修改账单管理
     * 
     * @param ttBilling 账单管理
     * @return 结果
     */
    public int updateTtBilling(TtBilling ttBilling);

    /**
     * 删除账单管理
     * 
     * @param billingId 账单管理主键
     * @return 结果
     */
    public int deleteTtBillingByBillingId(Long billingId);

    /**
     * 批量删除账单管理
     * 
     * @param billingIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTtBillingByBillingIds(Long[] billingIds);
}
