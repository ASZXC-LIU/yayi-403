package com.ruoyi.inventory.domain;


import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 药品库存对象 medicine_supplier
 *
 * @author 刘航
 * @date 2024-11-13
 */
public class MedicineSupplier extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 药品号 */
    private Long medicineId;

    /** 供应商号 */
    private Long supplierId;




    public Long getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(Long medicineId) {
        this.medicineId = medicineId;
    }

    public Long getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Long supplierId) {
        this.supplierId = supplierId;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("medicineId", getMedicineId())
                .append("supplierId", getSupplierId())
                .toString();
    }

}
