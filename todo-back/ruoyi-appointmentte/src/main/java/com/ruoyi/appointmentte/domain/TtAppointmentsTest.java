package com.ruoyi.appointmentte.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 预约测试对象 tt_appointments_test
 * 
 * @author ruoyi
 * @date 2024-11-28
 */
public class TtAppointmentsTest extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 预约唯一ID */
    @Excel(name = "预约唯一ID")
    private Long appointmentId;

    /** 患者ID */
    @Excel(name = "患者ID")
    private Long patientId;

    /** 医生ID */
    @Excel(name = "医生ID")
    private Long doctorId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String patientName;

    /** 医生姓名 */
    @Excel(name = "医生姓名")
    private String doctorName;

    /** 患者联系方式 */
    @Excel(name = "患者联系方式")
    private String patientPhone;

    /** 预约开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "预约开始时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date appointmentStartTime;

    /** 预约时长 */
    @Excel(name = "预约时长")
    private Long partTime;

    /** 预约结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "预约开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date appointmentEndTime;

    /** 预约的项目 */
    @Excel(name = "预约的项目")
    private String appointmentProject;

    /** 预约状态 */
    @Excel(name = "预约状态")
    private String appointmentStatus;

    /** 预约创建时间 */
    private Date createdAt;

    /** 预约更新时间 */
    private Date updatedAt;

    public void setAppointmentId(Long appointmentId) 
    {
        this.appointmentId = appointmentId;
    }

    public Long getAppointmentId() 
    {
        return appointmentId;
    }
    public void setPatientId(Long patientId) 
    {
        this.patientId = patientId;
    }

    public Long getPatientId() 
    {
        return patientId;
    }
    public void setDoctorId(Long doctorId) 
    {
        this.doctorId = doctorId;
    }

    public Long getDoctorId() 
    {
        return doctorId;
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
    public void setPatientPhone(String patientPhone) 
    {
        this.patientPhone = patientPhone;
    }

    public String getPatientPhone() 
    {
        return patientPhone;
    }
    public void setAppointmentStartTime(Date appointmentStartTime) 
    {
        this.appointmentStartTime = appointmentStartTime;
    }

    public Date getAppointmentStartTime() 
    {
        return appointmentStartTime;
    }
    public void setPartTime(Long partTime)
    {
        this.partTime = partTime;
    }

    public Long getPartTime()
    {
        return partTime;
    }
    public void setAppointmentProject(String appointmentProject) 
    {
        this.appointmentProject = appointmentProject;
    }

    public String getAppointmentProject() 
    {
        return appointmentProject;
    }
    public void setAppointmentStatus(String appointmentStatus) 
    {
        this.appointmentStatus = appointmentStatus;
    }

    public String getAppointmentStatus() 
    {
        return appointmentStatus;
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
            .append("appointmentId", getAppointmentId())
            .append("patientId", getPatientId())
            .append("doctorId", getDoctorId())
            .append("patientName", getPatientName())
            .append("doctorName", getDoctorName())
            .append("patientPhone", getPatientPhone())
            .append("appointmentStartTime", getAppointmentStartTime())
            .append("appointmentDuration", getPartTime())
                .append("appointmentEndTime", getAppointmentEndTime())
            .append("appointmentProject", getAppointmentProject())
            .append("appointmentStatus", getAppointmentStatus())
            .append("createdAt", getCreatedAt())
            .append("updatedAt", getUpdatedAt())
            .append("remark", getRemark())
            .toString();
    }

    public Date getAppointmentEndTime() {
        return appointmentEndTime;
    }

    public void setAppointmentEndTime(Date appointmentEndTime) {
        this.appointmentEndTime = appointmentEndTime;
    }
}
