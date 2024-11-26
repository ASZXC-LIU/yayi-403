import request from '@/utils/request'

// 查询病历列表列表
export function listEmrs(query) {
  return request({
    url: '/emr/emrs/list',
    method: 'get',
    params: query
  })
}

// 查询病历列表详细
export function getEmrs(emrId) {
  return request({
    url: '/emr/emrs/' + emrId,
    method: 'get'
  })
}

// 新增病历列表
export function addEmrs(data) {
  return request({
    url: '/emr/emrs',
    method: 'post',
    data: data
  })
}

// 修改病历列表
export function updateEmrs(data) {
  return request({
    url: '/emr/emrs',
    method: 'put',
    data: data
  })
}

// 删除病历列表
export function delEmrs(emrId) {
  return request({
    url: '/emr/emrs/' + emrId,
    method: 'delete'
  })
}
