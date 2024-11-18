package com.ruoyi.appointment.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 预约功能对象 tt_appointments
 * 
 * @author ruoyi
 * @date 2024-10-14
 */
public class TtAppointments extends BaseEntity
{


    public TtDoctorsVo getTtDoctor() {
        return ttDoctor;
    }

    public String patientName;
    public String doctorName;

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public void setTtDoctor(TtDoctorsVo ttDoctor) {
        this.ttDoctor = ttDoctor;
    }

    public TtPatientsVo getTtPatient() {
        return ttPatient;
    }

    public void setTtPatient(TtPatientsVo ttPatient) {
        this.ttPatient = ttPatient;
    }

    private TtDoctorsVo ttDoctor;
    private TtPatientsVo ttPatient;



    private static final long serialVersionUID = 1L;

    /** 预约ID */
    private Long appointmentId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private Long patientId;

    /** 医生姓名 */
    @Excel(name = "医生姓名")
    private Long doctorId;

    /** 预约日期 */
    private Date appointmentDate;

    /** 会诊时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "会诊时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date appointmentTime;

    /** 预约时长 */
    @Excel(name = "预约时长")
    private Long appointmentDuration;

    /** 预约项目 */
    @Excel(name = "预约项目")
    private String appointmentProject;

    /** 预约状态 */
    @Excel(name = "预约状态")
    private String appointmentStatus;

    /** 预约创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "预约创建时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date createdAt;

    /** 预约更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "预约更新时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
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
    public void setAppointmentDate(Date appointmentDate)
    {
        this.appointmentDate = appointmentDate;
    }

    public Date getAppointmentDate()
    {
        return appointmentDate;
    }
    public void setAppointmentTime(Date appointmentTime)
    {
        this.appointmentTime = appointmentTime;
    }

    public Date getAppointmentTime()
    {
        return appointmentTime;
    }
    public void setAppointmentDuration(Long appointmentDuration)
    {
        this.appointmentDuration = appointmentDuration;
    }

    public Long getAppointmentDuration()
    {
        return appointmentDuration;
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
        return "TtAppointments{" +
                "patientName='" + patientName + '\'' +
                ", doctorName='" + doctorName + '\'' +
                ", ttDoctor=" + ttDoctor +
                ", ttPatient=" + ttPatient +
                ", appointmentId=" + appointmentId +
                ", patientId=" + patientId +
                ", doctorId=" + doctorId +
                ", appointmentDate=" + appointmentDate +
                ", appointmentTime=" + appointmentTime +
                ", appointmentDuration=" + appointmentDuration +
                ", appointmentProject='" + appointmentProject + '\'' +
                ", appointmentStatus='" + appointmentStatus + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
