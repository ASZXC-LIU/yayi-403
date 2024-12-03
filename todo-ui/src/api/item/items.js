import request from '@/utils/request'

// 查询就诊物品使用记录列表
export function listItems(query) {
  return request({
    url: '/item/items/list',
    method: 'get',
    params: query
  })
}

// 查询就诊物品使用记录详细
export function getItems(recordItemId) {
  return request({
    url: '/item/items/' + recordItemId,
    method: 'get'
  })
}

// 新增就诊物品使用记录
export function addItems(data) {
  return request({
    url: '/item/items',
    method: 'post',
    data: data
  })
}

// 修改就诊物品使用记录
export function updateItems(data) {
  return request({
    url: '/item/items',
    method: 'put',
    data: data
  })
}

// 删除就诊物品使用记录
export function delItems(recordItemId) {
  return request({
    url: '/item/items/' + recordItemId,
    method: 'delete'
  })
}
