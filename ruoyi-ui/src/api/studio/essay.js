import request from '@/utils/request'

// 查询【请填写功能名称】列表
export function listEssay(query) {
  return request({
    url: '/studio/essay/list',
    method: 'get',
    params: query
  })
}

// 查询【请填写功能名称】详细
export function getEssay(essayId) {
  return request({
    url: '/studio/essay/' + essayId,
    method: 'get'
  })
}

// 新增【请填写功能名称】
export function addEssay(data) {
  return request({
    url: '/studio/essay',
    method: 'post',
    data: data
  })
}

// 修改【请填写功能名称】
export function updateEssay(data) {
  return request({
    url: '/studio/essay',
    method: 'put',
    data: data
  })
}

// 删除【请填写功能名称】
export function delEssay(essayId) {
  return request({
    url: '/studio/essay/' + essayId,
    method: 'delete'
  })
}
