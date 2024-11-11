import request from '@/utils/request'

// 查询患者信息列表
export function listPatientlists(query) {
  return request({
    url: '/patientlist/patientlists/list',
    method: 'get',
    params: query
  })
}

// 查询患者信息详细
export function getPatientlists(patientId) {
  return request({
    url: '/patientlist/patientlists/' + patientId,
    method: 'get'
  })
}

// 新增患者信息
export function addPatientlists(data) {
  return request({
    url: '/patientlist/patientlists',
    method: 'post',
    data: data
  })
}

// 修改患者信息
export function updatePatientlists(data) {
  return request({
    url: '/patientlist/patientlists',
    method: 'put',
    data: data
  })
}

// 删除患者信息
export function delPatientlists(patientId) {
  return request({
    url: '/patientlist/patientlists/' + patientId,
    method: 'delete'
  })
}
