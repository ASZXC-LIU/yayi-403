import request from '@/utils/request'

// 查询预约功能列表
export function listAppointments(query) {
  return request({
    url: '/appointment/appointments/list',
    method: 'get',
    params: query
  })
}



// 查询预约功能详细
export function getAppointments(appointmentId) {
  return request({
    url: '/appointment/appointments/' + appointmentId,
    method: 'get'
  })
}

// 新增预约功能
export function addAppointments(data) {
  return request({
    url: '/appointment/appointments',
    method: 'post',
    data: data
  })
}

// 修改预约功能
export function updateAppointments(data) {
  return request({
    url: '/appointment/appointments',
    method: 'put',
    data: data
  })
}

// 删除预约功能
export function delAppointments(appointmentId) {
  return request({
    url: '/appointment/appointments/' + appointmentId,
    method: 'delete'
  })
}