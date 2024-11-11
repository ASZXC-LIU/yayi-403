import request from '@/utils/request'

// 查询收费列表
export function listBills(query) {
  return request({
    url: '/bill/bills/list',
    method: 'get',
    params: query
  })
}

// 查询收费详细
export function getBills(billingId) {
  return request({
    url: '/bill/bills/' + billingId,
    method: 'get'
  })
}



// 修改收费
export function updateBills(data) {
  return request({
    url: '/bill/bills',
    method: 'put',
    data: data
  })
}

// 删除收费
export function delBills(billingId) {
  return request({
    url: '/bill/bills/' + billingId,
    method: 'delete'
  })
}
