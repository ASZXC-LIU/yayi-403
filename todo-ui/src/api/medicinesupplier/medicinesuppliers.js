import request from '@/utils/request'

// 查询medicine_supplier列表
export function listMedicinesuppliers(query) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/list',
    method: 'get',
    params: query
  })
}

// 查询medicine_supplier详细
export function getMedicinesuppliers(medicineSupplierId) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/' + medicineSupplierId,
    method: 'get'
  })
}

// 新增medicine_supplier
export function addMedicinesuppliers(data) {
  return request({
    url: '/medicinesupplier/medicinesuppliers',
    method: 'post',
    data: data
  })
}

// 修改medicine_supplier
export function updateMedicinesuppliers(data) {
  return request({
    url: '/medicinesupplier/medicinesuppliers',
    method: 'put',
    data: data
  })
}

// 删除medicine_supplier
export function delMedicinesuppliers(medicineSupplierId) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/' + medicineSupplierId,
    method: 'delete'
  })
}
