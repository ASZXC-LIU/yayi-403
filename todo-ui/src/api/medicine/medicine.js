import request from '@/utils/request'

// 查询药品库存列表
export function listMedicine(query) {
  return request({
    url: '/medicine/medicine/list',
    method: 'get',
    params: query
  })
}

// 查询药品库存详细
export function getMedicine(medicineId) {
  return request({
    url: '/medicine/medicine/' + medicineId,
    method: 'get'
  })
}

// 新增药品库存
export function addMedicine(data) {
  return request({
    url: '/medicine/medicine',
    method: 'post',
    data: data
  })
}

// 修改药品库存
export function updateMedicine(data) {
  return request({
    url: '/medicine/medicine',
    method: 'put',
    data: data
  })
}

// 修改对冲后的药品库存
export function offsettingUpdateMedicine(data) {
  return request({
    url: '/medicine/medicine/offsettingUpdateMedicine',
    method: 'put',
    data: data
  })
}
// 删除药品库存
export function delMedicine(medicineId) {
  return request({
    url: '/medicine/medicine/' + medicineId,
    method: 'delete'
  })
}
