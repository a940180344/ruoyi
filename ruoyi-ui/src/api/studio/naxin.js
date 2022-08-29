import request from '@/utils/request'

// 查询项目纳新列表
export function listNaxin(query) {
  return request({
    url: '/studio/naxin/list',
    method: 'get',
    params: query
  })
}

// 查询项目纳新详细
export function getNaxin(naxinId) {
  return request({
    url: '/studio/naxin/' + naxinId,
    method: 'get'
  })
}

// 新增项目纳新
export function addNaxin(data) {
  return request({
    url: '/studio/naxin',
    method: 'post',
    data: data
  })
}

// 修改项目纳新
export function updateNaxin(data) {
  return request({
    url: '/studio/naxin',
    method: 'put',
    data: data
  })
}

// 删除项目纳新
export function delNaxin(naxinId) {
  return request({
    url: '/studio/naxin/' + naxinId,
    method: 'delete'
  })
}
