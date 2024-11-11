import request from '@/utils/request'

// 查询医生信息列表
export function listDoctorlists(query) {
  return request({
    url: '/doctorlist/doctorlists/list',
    method: 'get',
    params: query
  })
}

// 查询医生信息详细
export function getDoctorlists(doctorId) {
  return request({
    url: '/doctorlist/doctorlists/' + doctorId,
    method: 'get'
  })
}

// 新增医生信息
export function addDoctorlists(data) {
  return request({
    url: '/doctorlist/doctorlists',
    method: 'post',
    data: data
  })
}

// 修改医生信息
export function updateDoctorlists(data) {
  return request({
    url: '/doctorlist/doctorlists',
    method: 'put',
    data: data
  })
}

// 删除医生信息
export function delDoctorlists(doctorId) {
  return request({
    url: '/doctorlist/doctorlists/' + doctorId,
    method: 'delete'
  })
}
