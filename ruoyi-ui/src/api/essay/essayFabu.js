import request from '@/utils/request'

// 查询发布文章列表
export function listEssayFabu(query) {
  return request({
    url: '/essay/essayFabu/list',
    method: 'get',
    params: query
  })
}

// 查询发布文章详细
export function getEssayFabu(essayId) {
  return request({
    url: '/essay/essayFabu/' + essayId,
    method: 'get'
  })
}

// 新增发布文章
export function addEssayFabu(data) {
  return request({
    url: '/essay/essayFabu',
    method: 'post',
    data: data
  })
}

// 修改发布文章
export function updateEssayFabu(data) {
  return request({
    url: '/essay/essayFabu',
    method: 'put',
    data: data
  })
}

// 删除发布文章
export function delEssayFabu(essayId) {
  return request({
    url: '/essay/essayFabu/' + essayId,
    method: 'delete'
  })
}
