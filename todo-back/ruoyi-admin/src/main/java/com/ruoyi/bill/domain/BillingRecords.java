package com.ruoyi.bill.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 收费对象 tt_billing_records
 * 
 * @author ruoyi
 * @date 2024-11-01
 */
public class BillingRecords extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 账单ID */
    @Excel(name = "账单ID")
    private Long billingId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private Long patientId;

    /**  */
    private Long appointmentId;

    /** 收费金额 */
    @Excel(name = "收费金额")
    private BigDecimal amount;

    /** 支付方式 */
    @Excel(name = "支付方式")
    private String paymentMethod;

    /** 支付状态 */
    @Excel(name = "支付状态")
    private String paymentStatus;

    /** 支付时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "支付时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date paymentTime;

    /** 收费记录创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "收费记录创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 收费记录更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "收费记录更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedAt;

    public void setBillingId(Long billingId) 
    {
        this.billingId = billingId;
    }

    public Long getBillingId() 
    {
        return billingId;
    }
    public void setPatientId(Long patientId) 
    {
        this.patientId = patientId;
    }

    public Long getPatientId() 
    {
        return patientId;
    }
    public void setAppointmentId(Long appointmentId) 
    {
        this.appointmentId = appointmentId;
    }

    public Long getAppointmentId() 
    {
        return appointmentId;
    }
    public void setAmount(BigDecimal amount) 
    {
        this.amount = amount;
    }

    public BigDecimal getAmount() 
    {
        return amount;
    }
    public void setPaymentMethod(String paymentMethod) 
    {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentMethod() 
    {
        return paymentMethod;
    }
    public void setPaymentStatus(String paymentStatus) 
    {
        this.paymentStatus = paymentStatus;
    }

    public String getPaymentStatus() 
    {
        return paymentStatus;
    }
    public void setPaymentTime(Date paymentTime) 
    {
        this.paymentTime = paymentTime;
    }

    public Date getPaymentTime() 
    {
        return paymentTime;
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
            .append("billingId", getBillingId())
            .append("patientId", getPatientId())
            .append("appointmentId", getAppointmentId())
            .append("amount", getAmount())
            .append("paymentMethod", getPaymentMethod())
            .append("paymentStatus", getPaymentStatus())
            .append("paymentTime", getPaymentTime())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .toString();
    }
}
