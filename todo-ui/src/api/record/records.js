import request from '@/utils/request'

// 查询就诊记录列表
export function listRecords(query) {
  return request({
    url: '/record/records/list',
    method: 'get',
    params: query
  })
}

// 查询个人就诊记录列表
export function getRecordsByPatientId(query) {
  return request({
    url: '/record/records/getRecordsByPatientId',
    method: 'get',
    params: query
  })
}

// 查询就诊记录详细
export function getRecords(medicalRecordsId) {
  return request({
    url: '/record/records/' + medicalRecordsId,
    method: 'get'
  })
}

// 新增就诊记录
export function addRecords(data) {
  return request({
    url: '/record/records',
    method: 'post',
    data: data
  })
}

// 修改就诊记录
export function updateRecords(data) {
  return request({
    url: '/record/records',
    method: 'put',
    data: data
  })
}

// 删除就诊记录
export function delRecords(medicalRecordsId) {
  return request({
    url: '/record/records/' + medicalRecordsId,
    method: 'delete'
  })
}
