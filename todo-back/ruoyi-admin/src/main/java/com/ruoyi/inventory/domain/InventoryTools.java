package com.ruoyi.inventory.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 工具库存对象 tt_inventory_tools
 * 
 * @author 刘航
 * @date 2024-11-13
 */
public class InventoryTools extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 工具ID */
    private Long toolsId;

    /** 工具名称 */
    @Excel(name = "工具名称")
    private String toolsName;

    /** 工具描述 */
    @Excel(name = "工具描述")
    private String toolsDescription;

    /** 供应商 */
    @Excel(name = "供应商")
    private String supplier;

    /** 供应商产地 */
    private String origin;

    /** 进价 */
    @Excel(name = "进价")
    private Long purchasePrice;

    /** 售价 */
    @Excel(name = "售价")
    private Long sellingPrice;

    /** 库存数量 */
    @Excel(name = "库存数量")
    private Long quantity;

    /** 工具的单位 */
    @Excel(name = "工具的单位")
    private String unit;

    /** 生产日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date manufactureDate;

    /** 保质期 */
    @Excel(name = "保质期")
    private Long shelfLife;

    /** 过期日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "过期日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date expirationDate;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedAt;

    public void setToolsId(Long toolsId) 
    {
        this.toolsId = toolsId;
    }

    public Long getToolsId() 
    {
        return toolsId;
    }
    public void setToolsName(String toolsName) 
    {
        this.toolsName = toolsName;
    }

    public String getToolsName() 
    {
        return toolsName;
    }
    public void setToolsDescription(String toolsDescription) 
    {
        this.toolsDescription = toolsDescription;
    }

    public String getToolsDescription() 
    {
        return toolsDescription;
    }
    public void setSupplier(String supplier) 
    {
        this.supplier = supplier;
    }

    public String getSupplier() 
    {
        return supplier;
    }
    public void setOrigin(String origin) 
    {
        this.origin = origin;
    }

    public String getOrigin() 
    {
        return origin;
    }
    public void setPurchasePrice(Long purchasePrice) 
    {
        this.purchasePrice = purchasePrice;
    }

    public Long getPurchasePrice() 
    {
        return purchasePrice;
    }
    public void setSellingPrice(Long sellingPrice) 
    {
        this.sellingPrice = sellingPrice;
    }

    public Long getSellingPrice() 
    {
        return sellingPrice;
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
    public void setManufactureDate(Date manufactureDate) 
    {
        this.manufactureDate = manufactureDate;
    }

    public Date getManufactureDate() 
    {
        return manufactureDate;
    }
    public void setShelfLife(Long shelfLife) 
    {
        this.shelfLife = shelfLife;
    }

    public Long getShelfLife() 
    {
        return shelfLife;
    }
    public void setExpirationDate(Date expirationDate) 
    {
        this.expirationDate = expirationDate;
    }

    public Date getExpirationDate() 
    {
        return expirationDate;
    }
    public void setCreatedAt(Date createdAt) 
    {
        this.createdAt = createdAt;
    }

    public Date getCreatedAt() 
    {
        return createdAt;
    }
    public void setUpdatedAt(Date updatedAt) 
    {
        this.updatedAt = updatedAt;
    }

    public Date getUpdatedAt() 
    {
        return updatedAt;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("toolsId", getToolsId())
            .append("toolsName", getToolsName())
            .append("toolsDescription", getToolsDescription())
            .append("supplier", getSupplier())
            .append("origin", getOrigin())
            .append("purchasePrice", getPurchasePrice())
            .append("sellingPrice", getSellingPrice())
            .append("quantity", getQuantity())
            .append("unit", getUnit())
            .append("manufactureDate", getManufactureDate())
            .append("shelfLife", getShelfLife())
            .append("expirationDate", getExpirationDate())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .toString();
    }
}
