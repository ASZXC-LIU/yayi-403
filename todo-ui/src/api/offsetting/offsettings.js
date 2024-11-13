import request from '@/utils/request'

// 查询对冲记录工单列表
export function listOffsettings(query) {
  return request({
    url: '/offsetting/offsettings/list',
    method: 'get',
    params: query
  })
}

// 查询对冲记录工单详细
export function getOffsettings(offsettingId) {
  return request({
    url: '/offsetting/offsettings/' + offsettingId,
    method: 'get'
  })
}

// 新增对冲记录工单
export function addOffsettings(data) {
  return request({
    url: '/offsetting/offsettings',
    method: 'post',
    data: data
  })
}

// 修改对冲记录工单
export function updateOffsettings(data) {
  return request({
    url: '/offsetting/offsettings',
    method: 'put',
    data: data
  })
}

// 删除对冲记录工单
export function delOffsettings(offsettingId) {
  return request({
    url: '/offsetting/offsettings/' + offsettingId,
    method: 'delete'
  })
}
