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

// 新增药品入库工单
export function addInbounds(data) {
  return request({
    url: '/inbound/inbounds',
    method: 'post',
    data: data
  })
}

// 新增工具入库工单
export function addTool(data) {
  return request({
    url: '/inbound/inbounds/addTool',
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
