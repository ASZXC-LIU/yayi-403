import request from '@/utils/request'

// 查询出库工单列表
export function listOutbounds(query) {
  return request({
    url: '/outbound/outbounds/list',
    method: 'get',
    params: query
  })
}

// 查询出库工单详细
export function getOutbounds(outboundId) {
  return request({
    url: '/outbound/outbounds/' + outboundId,
    method: 'get'
  })
}

// 新增出库工单
export function addOutbounds(data) {
  return request({
    url: '/outbound/outbounds',
    method: 'post',
    data: data
  })
}
// 新增出库工单
export function addOutTool(data) {
  return request({
    url: '/outbound/outbounds/addOutTool',
    method: 'post',
    data: data
  })
}
// 修改出库工单
export function updateOutbounds(data) {
  return request({
    url: '/outbound/outbounds',
    method: 'put',
    data: data
  })
}

// 删除出库工单
export function delOutbounds(outboundId) {
  return request({
    url: '/outbound/outbounds/' + outboundId,
    method: 'delete'
  })
}
