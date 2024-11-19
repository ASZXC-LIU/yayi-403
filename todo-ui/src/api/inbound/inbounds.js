import request from '@/utils/request'

// 查询入库工单列表
export function listInbounds(query) {
  return request({
    url: '/inbound/inbounds/list',
    method: 'get',
    params: query
  })
}

// 查询入库工单详细
export function getInbounds(inboundId) {
  return request({
    url: '/inbound/inbounds/' + inboundId,
    method: 'get'
  })
}

// 新增入库工单
export function addInbounds(data) {
  return request({
    url: '/inbound/inbounds',
    method: 'post',
    data: data
  })
}

// 修改入库工单
export function updateInbounds(data) {
  return request({
    url: '/inbound/inbounds',
    method: 'put',
    data: data
  })
}

// 删除入库工单
export function delInbounds(inboundId) {
  return request({
    url: '/inbound/inbounds/' + inboundId,
    method: 'delete'
  })
}
