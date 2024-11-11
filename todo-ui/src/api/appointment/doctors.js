import request from '@/utils/request'

// 查询医生信息列表
export function listDoctors(query) {
  return request({
    url: '/doctor/doctors/list',
    method: 'get',
    params: query
  })
}

// 查询医生信息详细
export function getDoctors(doctorId) {
  return request({
    url: '/doctor/doctors/' + doctorId,
    method: 'get'
  })
}

// 新增医生信息
export function addDoctors(data) {
  return request({
    url: '/doctor/doctors',
    method: 'post',
    data: data
  })
}

// 修改医生信息
export function updateDoctors(data) {
  return request({
    url: '/doctor/doctors',
    method: 'put',
    data: data
  })
}

// 删除医生信息
export function delDoctors(doctorId) {
  return request({
    url: '/doctor/doctors/' + doctorId,
    method: 'delete'
  })
}
