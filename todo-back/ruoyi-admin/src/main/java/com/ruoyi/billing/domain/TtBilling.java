package com.ruoyi.billing.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 账单管理对象 tt_billing
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
public class TtBilling extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 账单id */
    @Excel(name = "账单id")
    private Long billingId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String patientName;

    /** 就诊医生 */
    @Excel(name = "就诊医生")
    private String doctorName;

    /** 账单日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "账单日期", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date billingDate;

    /** 金额 */
    @Excel(name = "金额")
    private BigDecimal totalAmount;

    /** 支付状态 */
    @Excel(name = "支付状态")
    private String paymentStatus;

    /** 支付方式 */
    @Excel(name = "支付方式")
    private String paymentMethod;

    /** 见证人 */
    @Excel(name = "见证人")
    private String receiver;

    /** 备注 */
    @Excel(name = "备注")
    private String notes;

    public void setBillingId(Long billingId) 
    {
        this.billingId = billingId;
    }

    public Long getBillingId() 
    {
        return billingId;
    }
    public void setPatientName(String patientName) 
    {
        this.patientName = patientName;
    }

    public String getPatientName() 
    {
        return patientName;
    }
    public void setDoctorName(String doctorName) 
    {
        this.doctorName = doctorName;
    }

    public String getDoctorName() 
    {
        return doctorName;
    }
    public void setBillingDate(Date billingDate) 
    {
        this.billingDate = billingDate;
    }

    public Date getBillingDate() 
    {
        return billingDate;
    }
    public void setTotalAmount(BigDecimal totalAmount) 
    {
        this.totalAmount = totalAmount;
    }

    public BigDecimal getTotalAmount() 
    {
        return totalAmount;
    }
    public void setPaymentStatus(String paymentStatus) 
    {
        this.paymentStatus = paymentStatus;
    }

    public String getPaymentStatus() 
    {
        return paymentStatus;
    }
    public void setPaymentMethod(String paymentMethod) 
    {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentMethod() 
    {
        return paymentMethod;
    }
    public void setReceiver(String receiver) 
    {
        this.receiver = receiver;
    }

    public String getReceiver() 
    {
        return receiver;
    }
    public void setNotes(String notes) 
    {
        this.notes = notes;
    }

    public String getNotes() 
    {
        return notes;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("billingId", getBillingId())
            .append("patientName", getPatientName())
            .append("doctorName", getDoctorName())
            .append("billingDate", getBillingDate())
            .append("totalAmount", getTotalAmount())
            .append("paymentStatus", getPaymentStatus())
            .append("paymentMethod", getPaymentMethod())
            .append("receiver", getReceiver())
            .append("notes", getNotes())
            .toString();
    }
}
