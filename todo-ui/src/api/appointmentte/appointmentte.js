import request from '@/utils/request'

// 查询预约测试列表
export function listAppointmentte(query) {
  return request({
    url: '/appointmentte/appointmentte/list',
    method: 'get',
    params: query
  })
}

// 查询预约测试详细
export function getAppointmentte(appointmentId) {
  return request({
    url: '/appointmentte/appointmentte/' + appointmentId,
    method: 'get'
  })
}

// 新增预约测试
export function addAppointmentte(data) {
  return request({
    url: '/appointmentte/appointmentte',
    method: 'post',
    data: data
  })
}

// 修改预约测试
export function updateAppointmentte(data) {
  return request({
    url: '/appointmentte/appointmentte',
    method: 'put',
    data: data
  })
}

// 删除预约测试
export function delAppointmentte(appointmentId) {
  return request({
    url: '/appointmentte/appointmentte/' + appointmentId,
    method: 'delete'
  })
}
