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

// 查看是否存在
export function ifExit(data) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/ifExit',
    method: 'post',
    data: data
  })
}


// 查看是否存在
export function getAllQuantity(data) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/getAllQuantity',
    method: 'post',
    data: data
  })
}



// 查看是否存在
export function outboundMS(data) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/outboundMS',
    method: 'put',
    data: data
  })
}

// 查看是否存在
export function offSettingMS(data) {
  return request({
    url: '/medicinesupplier/medicinesuppliers/offSettingMS',
    method: 'put',
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
