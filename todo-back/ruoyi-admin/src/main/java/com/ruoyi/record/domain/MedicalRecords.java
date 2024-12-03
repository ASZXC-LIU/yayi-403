package com.ruoyi.record.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 就诊记录对象 tt_medical_records
 * 
 * @author 刘航
 * @date 2024-11-30
 */
public class MedicalRecords extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 就诊记录ID */
    @Excel(name = "就诊记录ID")
    private Long medicalRecordsId;

    /** 患者ID */
    @Excel(name = "患者ID")
    private Long patientId;

    /** 患者姓名 */
    @Excel(name = "患者姓名")
    private String patientName;

    /** 医生ID */
    @Excel(name = "医生ID")
    private Long doctorId;

    /** 医生姓名 */
    @Excel(name = "医生姓名")
    private String doctorName;

    /** 主诉 */
    @Excel(name = "主诉")
    private String maincase;

    /** 治疗方式 */
    @Excel(name = "治疗方式")
    private String treatmentType;

    /** 治疗结果 */
    @Excel(name = "治疗结果")
    private String clinicalResults;

    /** 就诊状态 */
    @Excel(name = "就诊状态")
    private String medicalRecordsStatue;

    /** 记录创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "记录创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdTime;

    /** 记录更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "记录更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updatedTime;

    /** 预约id */
    private Long appointmentId;

    /** 账单id */
    private Long billId;

    /** 保留字段 */
    private String test;

    /** 保留字段 */
    private String test2;

    /** 保留字段 */
    private String test3;

    /** 保留字段 */
    private String test4;

    public void setMedicalRecordsId(Long medicalRecordsId) 
    {
        this.medicalRecordsId = medicalRecordsId;
    }

    public Long getMedicalRecordsId() 
    {
        return medicalRecordsId;
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
    public void setMedicalRecordsStatue(String medicalRecordsStatue) 
    {
        this.medicalRecordsStatue = medicalRecordsStatue;
    }

    public String getMedicalRecordsStatue() 
    {
        return medicalRecordsStatue;
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
    public void setTest(String test) 
    {
        this.test = test;
    }

    public String getTest() 
    {
        return test;
    }
    public void setTest2(String test2) 
    {
        this.test2 = test2;
    }

    public String getTest2() 
    {
        return test2;
    }
    public void setTest3(String test3) 
    {
        this.test3 = test3;
    }

    public String getTest3() 
    {
        return test3;
    }
    public void setTest4(String test4) 
    {
        this.test4 = test4;
    }

    public String getTest4() 
    {
        return test4;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("medicalRecordsId", getMedicalRecordsId())
            .append("patientId", getPatientId())
            .append("patientName", getPatientName())
            .append("doctorId", getDoctorId())
            .append("doctorName", getDoctorName())
            .append("maincase", getMaincase())
            .append("treatmentType", getTreatmentType())
            .append("clinicalResults", getClinicalResults())
            .append("medicalRecordsStatue", getMedicalRecordsStatue())
            .append("createdTime", getCreatedTime())
            .append("updatedTime", getUpdatedTime())
            .append("appointmentId", getAppointmentId())
            .append("billId", getBillId())
            .append("test", getTest())
            .append("test2", getTest2())
            .append("test3", getTest3())
            .append("test4", getTest4())
            .toString();
    }
}
