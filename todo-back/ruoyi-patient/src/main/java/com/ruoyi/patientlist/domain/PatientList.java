package com.ruoyi.patientlist.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 患者信息对象 tt_patients
 * 
 * @author ruoyi
 * @date 2024-10-24
 */
public class PatientList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 患者唯一ID */
    private Long patientId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String name;

    /** 患者病历号 */
    @Excel(name = "患者病历号")
    private Long medicalRecordNumber;

    /** 患者生日 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "患者生日", width = 30, dateFormat = "yyyy-MM-dd")
    private Date birthday;

    /** 患者性别 */
    @Excel(name = "患者性别")
    private String gender;

    /** 患者联系电话 */
    @Excel(name = "患者联系电话")
    private String phone;

    /** 患者地址 */
    @Excel(name = "患者地址")
    private String address;

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
    private String remarks;

    public void setPatientId(Long patientId) 
    {
        this.patientId = patientId;
    }

    public Long getPatientId() 
    {
        return patientId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setMedicalRecordNumber(Long medicalRecordNumber) 
    {
        this.medicalRecordNumber = medicalRecordNumber;
    }

    public Long getMedicalRecordNumber() 
    {
        return medicalRecordNumber;
    }
    public void setBirthday(Date birthday) 
    {
        this.birthday = birthday;
    }

    public Date getBirthday() 
    {
        return birthday;
    }
    public void setGender(String gender) 
    {
        this.gender = gender;
    }

    public String getGender() 
    {
        return gender;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
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
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("patientId", getPatientId())
            .append("name", getName())
            .append("medicalRecordNumber", getMedicalRecordNumber())
            .append("birthday", getBirthday())
            .append("gender", getGender())
            .append("phone", getPhone())
            .append("address", getAddress())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .append("remarks", getRemarks())
            .toString();
    }
}
