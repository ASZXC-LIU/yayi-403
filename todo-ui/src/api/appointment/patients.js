import request from '@/utils/request'

// 查询患者信息列表
export function listPatients(query) {
  return request({
    url: '/system/patients/list',
    method: 'get',
    params: query
  })
}

// 查询患者信息详细
export function getPatients(patientId) {
  return request({
    url: '/system/patients/' + patientId,
    method: 'get'
  })
}

// 新增患者信息
export function addPatients(data) {
  return request({
    url: '/system/patients',
    method: 'post',
    data: data
  })
}

// 修改患者信息
export function updatePatients(data) {
  return request({
    url: '/system/patients',
    method: 'put',
    data: data
  })
}

// 删除患者信息
export function delPatients(patientId) {
  return request({
    url: '/system/patients/' + patientId,
    method: 'delete'
  })
}
