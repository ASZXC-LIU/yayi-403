import request from '@/utils/request'

// 查询供应商列表列表
export function listSuppliers(query) {
  return request({
    url: '/supplier/suppliers/list',
    method: 'get',
    params: query
  })
}

// 通过货物id查询他的所有供应商以及供应商给的货物详细信息
export function getSupplierByMedicineId(query) {
  return request({
    url: '/supplier/suppliers/getSupplierByMedicineId' ,
    method: 'get',
    params: query
  })
}


// 通过货物id查询他的所有供应商以及供应商给的货物详细信息
export function getSupplierByTool(query) {
  return request({
    url: '/supplier/suppliers/getSupplierByTool' ,
    method: 'get',
    params: query
  })
}

// 查询供应商列表详细
export function getSuppliers(supplierId) {
  return request({
    url: '/supplier/suppliers/' + supplierId,
    method: 'get'
  })
}

// 新增供应商列表
export function addSuppliers(data) {
  return request({
    url: '/supplier/suppliers',
    method: 'post',
    data: data
  })
}

// 修改供应商列表
export function updateSuppliers(data) {
  return request({
    url: '/supplier/suppliers',
    method: 'put',
    data: data
  })
}

// 删除供应商列表
export function delSuppliers(supplierId) {
  return request({
    url: '/supplier/suppliers/' + supplierId,
    method: 'delete'
  })
}
