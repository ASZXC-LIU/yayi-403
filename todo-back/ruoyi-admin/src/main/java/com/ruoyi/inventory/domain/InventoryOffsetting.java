package com.ruoyi.inventory.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 对冲记录工单对象 tt_inventory_offsetting
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public class InventoryOffsetting extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 对冲工单id */
    @Excel(name = "对冲工单id")
    private Long offsettingId;

    /** 物品名字 */
    @Excel(name = "物品名字")
    private String itemName;

    /** 负责人 */
    @Excel(name = "负责人")
    private String responsible;

    /** 对冲原因 */
    @Excel(name = "对冲原因")
    private String reason;

    /** 对冲数量 */
    @Excel(name = "对冲数量")
    private Long quantity;

    /** 剂量单位 */
    @Excel(name = "剂量单位")
    private String unit;

    /** 开销原因 */
    @Excel(name = "开销原因")
    private String expensesReason;

    /** 开销 */
    @Excel(name = "开销")
    private Long spending;

    /** 对冲时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "对冲时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date offsettingTime;

    public void setOffsettingId(Long offsettingId) 
    {
        this.offsettingId = offsettingId;
    }

    public Long getOffsettingId() 
    {
        return offsettingId;
    }
    public void setItemName(String itemName) 
    {
        this.itemName = itemName;
    }

    public String getItemName() 
    {
        return itemName;
    }
    public void setResponsible(String responsible) 
    {
        this.responsible = responsible;
    }

    public String getResponsible() 
    {
        return responsible;
    }
    public void setReason(String reason) 
    {
        this.reason = reason;
    }

    public String getReason() 
    {
        return reason;
    }
    public void setQuantity(Long quantity) 
    {
        this.quantity = quantity;
    }

    public Long getQuantity() 
    {
        return quantity;
    }
    public void setUnit(String unit) 
    {
        this.unit = unit;
    }

    public String getUnit() 
    {
        return unit;
    }
    public void setExpensesReason(String expensesReason) 
    {
        this.expensesReason = expensesReason;
    }

    public String getExpensesReason() 
    {
        return expensesReason;
    }
    public void setSpending(Long spending) 
    {
        this.spending = spending;
    }

    public Long getSpending() 
    {
        return spending;
    }
    public void setOffsettingTime(Date offsettingTime) 
    {
        this.offsettingTime = offsettingTime;
    }

    public Date getOffsettingTime() 
    {
        return offsettingTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("offsettingId", getOffsettingId())
            .append("itemName", getItemName())
            .append("responsible", getResponsible())
            .append("reason", getReason())
            .append("quantity", getQuantity())
            .append("unit", getUnit())
            .append("expensesReason", getExpensesReason())
            .append("spending", getSpending())
            .append("offsettingTime", getOffsettingTime())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
