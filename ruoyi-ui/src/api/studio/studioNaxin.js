import request from '@/utils/request'

// 查询纳新列表
export function listStudioNaxin(query) {
  return request({
    url: '/studio/studioNaxin/list',
    method: 'get',
    params: query
  })
}

// 查询纳新详细
export function getStudioNaxin(dioId) {
  return request({
    url: '/studio/studioNaxin/' + dioId,
    method: 'get'
  })
}

// 新增纳新
export function addStudioNaxin(data) {
  return request({
    url: '/studio/studioNaxin',
    method: 'post',
    data: data
  })
}

// 修改纳新
export function updateStudioNaxin(data) {
  return request({
    url: '/studio/studioNaxin',
    method: 'put',
    data: data
  })
}

// 删除纳新
export function delStudioNaxin(dioId) {
  return request({
    url: '/studio/studioNaxin/' + dioId,
    method: 'delete'
  })
}
