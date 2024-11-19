import request from '@/utils/request'

// 查询工具库存列表
export function listInventorytools(query) {
  return request({
    url: '/inventorytool/inventorytools/list',
    method: 'get',
    params: query
  })
}

// 查询工具库存详细
export function getInventorytools(toolsId) {
  return request({
    url: '/inventorytool/inventorytools/' + toolsId,
    method: 'get'
  })
}

// 新增工具库存
export function addInventorytools(data) {
  return request({
    url: '/inventorytool/inventorytools',
    method: 'post',
    data: data
  })
}

// 修改工具库存
export function updateInventorytools(data) {
  return request({
    url: '/inventorytool/inventorytools',
    method: 'put',
    data: data
  })
}

// 修改对冲后的药品库存
export function offsettingUpdateInventorytools(data) {
  return request({
    url: '/inventorytool/inventorytools/offsettingUpdateInventorytools',
    method: 'put',
    data: data
  })
}


// 删除工具库存
export function delInventorytools(toolsId) {
  return request({
    url: '/inventorytool/inventorytools/' + toolsId,
    method: 'delete'
  })
}
