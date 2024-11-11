package com.ruoyi.appointment.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医生信息对象 tt_doctors
 * 
 * @author ruoyi
 * @date 2024-10-14
 */
public class TtDoctorsVo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 医生唯一ID */
    private Long doctorId;

    /** 医生姓名 */
    @Excel(name = "医生姓名")
    private  String name;

    /** 科室 */
    @Excel(name = "科室")
    private String department;

    /** 医生联系电话 */
    @Excel(name = "医生联系电话")
    private String phone;

    /** 职位（如主治医师等） */
    @Excel(name = "职位", readConverterExp = "如=主治医师等")
    private String position;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedAt;

    public void setDoctorId(Long doctorId) 
    {
        this.doctorId = doctorId;
    }

    public Long getDoctorId() 
    {
        return doctorId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public  String getName()
    {
        return name;
    }
    public void setDepartment(String department) 
    {
        this.department = department;
    }

    public String getDepartment() 
    {
        return department;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setPosition(String position) 
    {
        this.position = position;
    }

    public String getPosition() 
    {
        return position;
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
            .append("doctorId", getDoctorId())
            .append("name", getName())
            .append("department", getDepartment())
            .append("phone", getPhone())
            .append("position", getPosition())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .toString();
    }
}
