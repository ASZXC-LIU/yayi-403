package com.ruoyi.supplier.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 供应商列表对象 tt_supplier
 * 
 * @author 刘航
 * @date 2024-11-20
 */
public class Supplier extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 供应商ID */
    @Excel(name = "供应商ID")
    private Long supplierId;

    /** 供应商名称 */
    @Excel(name = "供应商名称")
    private String supplierName;

    /** 供应商备注 */
    @Excel(name = "供应商备注")
    private String supplierRemark;

    /** 供应货物ID */
    @Excel(name = "供应货物ID")
    private Long itemId;

    /** 供应货物名称 */
    @Excel(name = "供应货物名称")
    private String itemName;

    /** 货物备注 */
    @Excel(name = "货物备注")
    private String itemRemark;

    /** 供应商电话 */
    @Excel(name = "供应商电话")
    private String supplierPhone;

    /** 备用电话 */
    @Excel(name = "备用电话")
    private String supplierPhone2;

    /** 供应商地址 */
    @Excel(name = "供应商地址")
    private String supplierAddress;

    /** 邮政编码 */
    @Excel(name = "邮政编码")
    private String supplierPost;

    /** 邮箱地址 */
    @Excel(name = "邮箱地址")
    private String mail;

    /** 联系人 */
    @Excel(name = "联系人")
    private String contact;

    /** 信用度 */
    @Excel(name = "信用度")
    private String creditworthiness;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date creatTime;

    public void setSupplierId(Long supplierId) 
    {
        this.supplierId = supplierId;
    }

    public Long getSupplierId() 
    {
        return supplierId;
    }
    public void setSupplierName(String supplierName) 
    {
        this.supplierName = supplierName;
    }

    public String getSupplierName() 
    {
        return supplierName;
    }
    public void setSupplierRemark(String supplierRemark) 
    {
        this.supplierRemark = supplierRemark;
    }

    public String getSupplierRemark() 
    {
        return supplierRemark;
    }
    public void setItemId(Long itemId) 
    {
        this.itemId = itemId;
    }

    public Long getItemId() 
    {
        return itemId;
    }
    public void setItemName(String itemName) 
    {
        this.itemName = itemName;
    }

    public String getItemName() 
    {
        return itemName;
    }
    public void setItemRemark(String itemRemark) 
    {
        this.itemRemark = itemRemark;
    }

    public String getItemRemark() 
    {
        return itemRemark;
    }
    public void setSupplierPhone(String supplierPhone) 
    {
        this.supplierPhone = supplierPhone;
    }

    public String getSupplierPhone() 
    {
        return supplierPhone;
    }
    public void setSupplierPhone2(String supplierPhone2) 
    {
        this.supplierPhone2 = supplierPhone2;
    }

    public String getSupplierPhone2() 
    {
        return supplierPhone2;
    }
    public void setSupplierAddress(String supplierAddress) 
    {
        this.supplierAddress = supplierAddress;
    }

    public String getSupplierAddress() 
    {
        return supplierAddress;
    }
    public void setSupplierPost(String supplierPost) 
    {
        this.supplierPost = supplierPost;
    }

    public String getSupplierPost() 
    {
        return supplierPost;
    }
    public void setMail(String mail) 
    {
        this.mail = mail;
    }

    public String getMail() 
    {
        return mail;
    }
    public void setContact(String contact)
    {
        this.contact = contact;
    }

    public String getContact() 
    {
        return contact;
    }
    public void setCreditworthiness(String creditworthiness)
    {
        this.creditworthiness = creditworthiness;
    }

    public String getCreditworthiness() 
    {
        return creditworthiness;
    }
    public void setCreatTime(Date creatTime) 
    {
        this.creatTime = creatTime;
    }

    public Date getCreatTime() 
    {
        return creatTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("supplierId", getSupplierId())
            .append("supplierName", getSupplierName())
            .append("supplierRemark", getSupplierRemark())
            .append("itemId", getItemId())
            .append("itemName", getItemName())
            .append("itemRemark", getItemRemark())
            .append("supplierPhone", getSupplierPhone())
            .append("supplierPhone2", getSupplierPhone2())
            .append("supplierAddress", getSupplierAddress())
            .append("supplierPost", getSupplierPost())
            .append("mail", getMail())
            .append("contact", getContact())
            .append("creditworthiness", getCreditworthiness())
            .append("creatTime", getCreatTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
