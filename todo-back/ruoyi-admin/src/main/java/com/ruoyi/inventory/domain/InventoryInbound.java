package com.ruoyi.inventory.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 入库工单对象 tt_inventory_inbound
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public class InventoryInbound extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 工单ID */
    @Excel(name = "工单ID")
    private Long inboundId;

    /** 入库货物 */
    @Excel(name = "入库货物")
    private String itemName;

    /** 负责人 */
    @Excel(name = "负责人")
    private String responsible;

    /** 供应来源 */
    @Excel(name = "供应来源")
    private String supplier;

    /** 入库数量 */
    @Excel(name = "入库数量")
    private Long quantity;

    /** 剂量单位 */
    @Excel(name = "剂量单位")
    private String unit;

    /** 进价（最小单位） */
    @Excel(name = "进价", readConverterExp = "最=小单位")
    private Long purchasePrice;

    /** 运费 */
    @Excel(name = "运费")
    private Long freight;

    /** 总开销 */
    @Excel(name = "总开销")
    private Long spending;

    /** 入库时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "入库时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date inboundTime;

    public void setInboundId(Long inboundId) 
    {
        this.inboundId = inboundId;
    }

    public Long getInboundId() 
    {
        return inboundId;
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
    public void setSupplier(String supplier) 
    {
        this.supplier = supplier;
    }

    public String getSupplier() 
    {
        return supplier;
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
    public void setPurchasePrice(Long purchasePrice) 
    {
        this.purchasePrice = purchasePrice;
    }

    public Long getPurchasePrice() 
    {
        return purchasePrice;
    }
    public void setFreight(Long freight) 
    {
        this.freight = freight;
    }

    public Long getFreight() 
    {
        return freight;
    }
    public void setSpending(Long spending) 
    {
        this.spending = spending;
    }

    public Long getSpending() 
    {
        return spending;
    }
    public void setInboundTime(Date inboundTime) 
    {
        this.inboundTime = inboundTime;
    }

    public Date getInboundTime() 
    {
        return inboundTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("inboundId", getInboundId())
            .append("itemName", getItemName())
            .append("responsible", getResponsible())
            .append("supplier", getSupplier())
            .append("quantity", getQuantity())
            .append("unit", getUnit())
            .append("purchasePrice", getPurchasePrice())
            .append("freight", getFreight())
            .append("spending", getSpending())
            .append("inboundTime", getInboundTime())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
