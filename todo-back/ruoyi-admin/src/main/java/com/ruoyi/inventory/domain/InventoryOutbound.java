package com.ruoyi.inventory.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 出库工单对象 tt_inventory_outbound
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public class InventoryOutbound extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 入库工单id */
    @Excel(name = "入库工单id")
    private Long outboundId;

    /** 物品名字 */
    @Excel(name = "物品名字")
    private String itemName;

    /** 负责人 */
    @Excel(name = "负责人")
    private String responsible;

    /** 出库原因 */
    @Excel(name = "出库原因")
    private String reason;

    /** 出库数量 */
    @Excel(name = "出库数量")
    private Long quantity;

    /** 剂量单位 */
    @Excel(name = "剂量单位")
    private String unit;

    /** 开销原因 */
    @Excel(name = "开销原因")
    private String expensesReason;

    /** 总开销 */
    @Excel(name = "总开销")
    private Long spending;

    /** 出库时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出库时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date outboundTime;

    public void setOutboundId(Long outboundId) 
    {
        this.outboundId = outboundId;
    }

    public Long getOutboundId() 
    {
        return outboundId;
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
    public void setOutboundTime(Date outboundTime) 
    {
        this.outboundTime = outboundTime;
    }

    public Date getOutboundTime() 
    {
        return outboundTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("outboundId", getOutboundId())
            .append("itemName", getItemName())
            .append("responsible", getResponsible())
            .append("reason", getReason())
            .append("quantity", getQuantity())
            .append("unit", getUnit())
            .append("expensesReason", getExpensesReason())
            .append("spending", getSpending())
            .append("outboundTime", getOutboundTime())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
