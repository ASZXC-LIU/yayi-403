package com.ruoyi.appointmentte.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 患者信息对象 tt_patients
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public class PatientListVo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 患者唯一ID */
    private Long patientId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String patientName;

    /** 患者病历号 */
    @Excel(name = "患者病历号")
    private Long medicalRecordNumber;

    /** 患者生日 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "患者生日", width = 30, dateFormat = "yyyy-MM-dd")
    private Date patientBirthday;

    /** 患者性别 */
    @Excel(name = "患者性别")
    private String patientGender;

    /** 患者联系电话 */
    @Excel(name = "患者联系电话")
    private String patientPhone;

    /** 患者地址 */
    @Excel(name = "患者地址")
    private String patientAddress;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedAt;

    /** 备注 */
    @Excel(name = "备注")
    private String patientRemarks;

    /** 过敏原 */
    @Excel(name = "备注")
    private String patientAllergens;

    public void setPatientId(Long patientId) 
    {
        this.patientId = patientId;
    }

    public Long getPatientId() 
    {
        return patientId;
    }
    public void setPatientName(String patientName)
    {
        this.patientName = patientName;
    }

    public String getPatientName()
    {
        return patientName;
    }
    public void setMedicalRecordNumber(Long medicalRecordNumber) 
    {
        this.medicalRecordNumber = medicalRecordNumber;
    }

    public Long getMedicalRecordNumber() 
    {
        return medicalRecordNumber;
    }
    public void setPatientBirthday(Date patientBirthday)
    {
        this.patientBirthday = patientBirthday;
    }

    public Date getPatientBirthday()
    {
        return patientBirthday;
    }
    public void setPatientGender(String patientGender)
    {
        this.patientGender = patientGender;
    }

    public String getPatientGender()
    {
        return patientGender;
    }
    public void setPatientPhone(String patientPhone)
    {
        this.patientPhone = patientPhone;
    }

    public String getPatientPhone()
    {
        return patientPhone;
    }
    public void setPatientAddress(String patientAddress)
    {
        this.patientAddress = patientAddress;
    }

    public String getPatientAddress()
    {
        return patientAddress;
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
    public void setPatientRemarks(String patientRemarks)
    {
        this.patientRemarks = patientRemarks;
    }

    public String getPatientRemarks()
    {
        return patientRemarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("patientId", getPatientId())
            .append("patientName", getPatientName())
            .append("medicalRecordNumber", getMedicalRecordNumber())
            .append("patientBirthday", getPatientBirthday())
            .append("patientPhone", getPatientGender())
            .append("patientPhone", getPatientPhone())
            .append("patientAddress", getPatientAddress())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .append("patientRemarks", getPatientRemarks())
                .append("patientAllergens", getPatientAllergens())
            .toString();
    }

    public String getPatientAllergens() {
        return patientAllergens;
    }

    public void setPatientAllergens(String patientAllergens) {
        this.patientAllergens = patientAllergens;
    }
}
