package com.ruoyi.medicinesupplier.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * medicine_supplier对象 tt_inventory_medicine_supplier
 * 
 * @author ruoyi
 * @date 2024-11-25
 */
public class MedicineSupplierVO extends BaseEntity
{
    private static final long serialVersionUID = 1L;



    /** 联系表ID */
    @Excel(name = "联系表ID")
    private Long medicineSupplierId;

    /** 药品ID */
    @Excel(name = "药品ID")
    private Long itemId;

    /** 药品名称 */
    @Excel(name = "药品名称")
    private String medicineName;


    /** 工具备注 */
    @Excel(name = "工具备注")
    private String toolDescription;
    /** 工具名称 */
    @Excel(name = "工具名称")
    private String toolsName;

    /** 供应商ID */
    @Excel(name = "供应商ID")
    private Long supplierId;

    /** 提供货物数量 */
    @Excel(name = "提供货物数量")
    private Long itemNum;

    /** 0为药品，1为工具 */
    @Excel(name = "0为药品，1为工具")
    private String itemType;

    /** 供应商名称 */
    @Excel(name = "供应商名称")
    private String supplierName;

    /** 供应商备注 */
    @Excel(name = "供应商备注")
    private String supplierRemark;
    /** 药品备注 */
    @Excel(name = "药品备注")
    private String medicineDescription;


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
    public Long getMedicineSupplierId() {
        return medicineSupplierId;
    }

    public void setMedicineSupplierId(Long medicineSupplierId) {
        this.medicineSupplierId = medicineSupplierId;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public Long getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Long supplierId) {
        this.supplierId = supplierId;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getSupplierRemark() {
        return supplierRemark;
    }

    public void setSupplierRemark(String supplierRemark) {
        this.supplierRemark = supplierRemark;
    }

    public String getSupplierPhone() {
        return supplierPhone;
    }

    public void setSupplierPhone(String supplierPhone) {
        this.supplierPhone = supplierPhone;
    }

    public String getSupplierPhone2() {
        return supplierPhone2;
    }

    public void setSupplierPhone2(String supplierPhone2) {
        this.supplierPhone2 = supplierPhone2;
    }

    public String getSupplierAddress() {
        return supplierAddress;
    }

    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }

    public String getSupplierPost() {
        return supplierPost;
    }

    public void setSupplierPost(String supplierPost) {
        this.supplierPost = supplierPost;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getCreditworthiness() {
        return creditworthiness;
    }

    public void setCreditworthiness(String creditworthiness) {
        this.creditworthiness = creditworthiness;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }
    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("medicineSupplierId", getMedicineSupplierId())
                .append("itemId", getItemId())
                .append("medicineName", getMedicineName())
                .append("itemNum", getItemNum())
                .append("itemType", getItemType())
                .append("supplierId", getSupplierId())
                .append("supplierName", getSupplierName())
                .append("supplierRemark", getSupplierRemark())
                .append("medicineDescription", getMedicineDescription())
                .append("supplierPhone", getSupplierPhone())
                .append("supplierPhone2", getSupplierPhone2())
                .append("supplierAddress", getSupplierAddress())
                .append("supplierPost", getSupplierPost())
                .append("mail", getMail())
                .append("contact", getContact())
                .append("creditworthiness", getCreditworthiness())
                .append("creatTime", getCreatTime())
                .append("updateTime", getUpdateTime())
                .append("toolsName", getToolsName())
                .append("toolDescription", getToolDescription())
                .toString();
    }


    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }

    public String getMedicineDescription() {
        return medicineDescription;
    }

    public void setMedicineDescription(String medicineDescription) {
        this.medicineDescription = medicineDescription;
    }

    public Long getItemNum() {
        return itemNum;
    }

    public void setItemNum(Long itemNum) {
        this.itemNum = itemNum;
    }

    public String getToolDescription() {
        return toolDescription;
    }

    public void setToolDescription(String toolDescription) {
        this.toolDescription = toolDescription;
    }

    public String getToolsName() {
        return toolsName;
    }

    public void setToolsName(String toolsName) {
        this.toolsName = toolsName;
    }
}
