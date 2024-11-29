package com.ruoyi.emr.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 病历列表对象 tt_emr
 * 
 * @author 刘航
 * @date 2024-11-24
 */
public class Emr extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 电子病历id */
    @Excel(name = "电子病历id")
    private Long emrId;

    /** 患者ID */
    private Long patientId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String patientName;

    /** 医生ID */
    private Long doctorId;

    /** 医生姓名 */
    @Excel(name = "医生姓名")
    private String doctorName;

    /** 主诉 */
    @Excel(name = "主诉")
    private String maincase;

    /** 现在病史 */
    @Excel(name = "现在病史")
    private String currentMedicalHistory;

    /** 治疗方式 */
    @Excel(name = "治疗方式")
    private String treatmentType;

    /** 治疗结果 */
    @Excel(name = "治疗结果")
    private String clinicalResults;

    /** 病历创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "病历创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdTime;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedTime;

    /** 诊断状态 */
    @Excel(name = "诊断状态")
    private String emrStatue;

    /** 预约id */
    private Long appointmentId;

    /** 账单id */
    private Long billId;

    public void setEmrId(Long emrId) 
    {
        this.emrId = emrId;
    }

    public Long getEmrId() 
    {
        return emrId;
    }
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
    public void setDoctorId(Long doctorId) 
    {
        this.doctorId = doctorId;
    }

    public Long getDoctorId() 
    {
        return doctorId;
    }
    public void setDoctorName(String doctorName) 
    {
        this.doctorName = doctorName;
    }

    public String getDoctorName() 
    {
        return doctorName;
    }
    public void setMaincase(String maincase) 
    {
        this.maincase = maincase;
    }

    public String getMaincase() 
    {
        return maincase;
    }
    public void setCurrentMedicalHistory(String currentMedicalHistory) 
    {
        this.currentMedicalHistory = currentMedicalHistory;
    }

    public String getCurrentMedicalHistory() 
    {
        return currentMedicalHistory;
    }
    public void setTreatmentType(String treatmentType) 
    {
        this.treatmentType = treatmentType;
    }

    public String getTreatmentType() 
    {
        return treatmentType;
    }
    public void setClinicalResults(String clinicalResults) 
    {
        this.clinicalResults = clinicalResults;
    }

    public String getClinicalResults() 
    {
        return clinicalResults;
    }
    public void setCreatedTime(Date createdTime) 
    {
        this.createdTime = createdTime;
    }

    public Date getCreatedTime() 
    {
        return createdTime;
    }
    public void setUpdatedTime(Date updatedTime) 
    {
        this.updatedTime = updatedTime;
    }

    public Date getUpdatedTime() 
    {
        return updatedTime;
    }
    public void setEmrStatue(String emrStatue) 
    {
        this.emrStatue = emrStatue;
    }

    public String getEmrStatue() 
    {
        return emrStatue;
    }
    public void setAppointmentId(Long appointmentId) 
    {
        this.appointmentId = appointmentId;
    }

    public Long getAppointmentId() 
    {
        return appointmentId;
    }
    public void setBillId(Long billId) 
    {
        this.billId = billId;
    }

    public Long getBillId() 
    {
        return billId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("emrId", getEmrId())
            .append("patientId", getPatientId())
            .append("patientName", getPatientName())
            .append("doctorId", getDoctorId())
            .append("doctorName", getDoctorName())
            .append("maincase", getMaincase())
            .append("currentMedicalHistory", getCurrentMedicalHistory())
            .append("treatmentType", getTreatmentType())
            .append("clinicalResults", getClinicalResults())
            .append("createdTime", getCreatedTime())
            .append("updatedTime", getUpdatedTime())
            .append("emrStatue", getEmrStatue())
            .append("appointmentId", getAppointmentId())
            .append("billId", getBillId())
            .toString();
    }
}
