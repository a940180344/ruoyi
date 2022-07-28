import request from '@/utils/request'

// 项目提交
export function lsubmitProject(data) {
  return request({
    url: '/stdio/naxin',
    method: 'post',
    data: data
  })
}
