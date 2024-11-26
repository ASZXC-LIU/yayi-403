package com.ruoyi.medicinesupplier.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * medicine_supplier对象 tt_inventory_medicine_supplier
 * 
 * @author ruoyi
 * @date 2024-11-25
 */
public class InventoryMedicineSupplier extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 联系表ID */
    @Excel(name = "联系表ID")
    private Long medicineSupplierId;

    /** 药品ID */
    @Excel(name = "药品ID")
    private Long itemId;

    /** 供应商ID */
    @Excel(name = "供应商ID")
    private Long supplierId;

    /** 0为药品，1为工具 */
    @Excel(name = "0为药品，1为工具")
    private String itemType;

    /** 库存数量 */
    @Excel(name = "库存数量")
    private Long itemNum;

    public void setMedicineSupplierId(Long medicineSupplierId) 
    {
        this.medicineSupplierId = medicineSupplierId;
    }

    public Long getMedicineSupplierId() 
    {
        return medicineSupplierId;
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
    public void setItemNum(Long itemNum) 
    {
        this.itemNum = itemNum;
    }

    public Long getItemNum() 
    {
        return itemNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("medicineSupplierId", getMedicineSupplierId())
            .append("itemId", getItemId())
            .append("supplierId", getSupplierId())
            .append("itemType", getItemType())
            .append("itemNum", getItemNum())
            .toString();
    }
}
