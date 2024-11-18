import request from '@/utils/request'

// 查询账单管理列表
export function listBilling(query) {
  return request({
    url: '/billing/billing/list',
    method: 'get',
    params: query
  })
}

// 查询账单管理详细
export function getBilling(billingId) {
  return request({
    url: '/billing/billing/' + billingId,
    method: 'get'
  })
}

// 新增账单管理
export function addBilling(data) {
  return request({
    url: '/billing/billing',
    method: 'post',
    data: data
  })
}

// 修改账单管理
export function updateBilling(data) {
  return request({
    url: '/billing/billing',
    method: 'put',
    data: data
  })
}

// 删除账单管理
export function delBilling(billingId) {
  return request({
    url: '/billing/billing/' + billingId,
    method: 'delete'
  })
}
