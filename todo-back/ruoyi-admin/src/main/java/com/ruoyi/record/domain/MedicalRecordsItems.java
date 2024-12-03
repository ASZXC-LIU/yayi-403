package com.ruoyi.record.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 就诊物品使用记录对象 tt_medical_records_items
 * 
 * @author 刘航
 * @date 2024-12-01
 */
public class MedicalRecordsItems extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 物品使用记录ID */
    @Excel(name = "物品使用记录ID")
    private Long recordItemId;

    /** 就诊记录ID */
    @Excel(name = "就诊记录ID")
    private Long medicalRecordsId;

    /** 物品ID */
    @Excel(name = "物品ID")
    private Long itemId;

    /** 供应商ID */
    @Excel(name = "供应商ID")
    private Long supplierId;

    /** 物品类型，0为药品，1为工具 */
    @Excel(name = "物品类型，0为药品，1为工具")
    private String itemType;

    /** 使用数量 */
    @Excel(name = "使用数量")
    private Long quantity;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedAt;

    public void setRecordItemId(Long recordItemId) 
    {
        this.recordItemId = recordItemId;
    }

    public Long getRecordItemId() 
    {
        return recordItemId;
    }
    public void setMedicalRecordsId(Long medicalRecordsId) 
    {
        this.medicalRecordsId = medicalRecordsId;
    }

    public Long getMedicalRecordsId() 
    {
        return medicalRecordsId;
    }
    public void setItemId(Long itemId) 
    {
        this.itemId = itemId;
    }

    public Long getItemId() 
    {
        return itemId;
    }
    public void setSupplierId(Long supplierId) 
    {
        this.supplierId = supplierId;
    }

    public Long getSupplierId() 
    {
        return supplierId;
    }
    public void setItemType(String itemType) 
    {
        this.itemType = itemType;
    }

    public String getItemType() 
    {
        return itemType;
    }
    public void setQuantity(Long quantity) 
    {
        this.quantity = quantity;
    }

    public Long getQuantity() 
    {
        return quantity;
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
            .append("recordItemId", getRecordItemId())
            .append("medicalRecordsId", getMedicalRecordsId())
            .append("itemId", getItemId())
            .append("supplierId", getSupplierId())
            .append("itemType", getItemType())
            .append("quantity", getQuantity())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .toString();
    }
}
