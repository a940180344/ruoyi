<template>
  <div class="block">
    <el-timeline>
      <el-timeline-item v-for="(item,index) of timeline" :key="index" :timestamp="item.timestamp" placement="top">
        <el-card>
          <h4>{{ item.title }}</h4>
          <p>{{ item.content }}</p>
        </el-card>
      </el-timeline-item>
    </el-timeline>
  </div>
</template>

<script>
export default {
  data() {
    return {
      timeline: [
        {
          timestamp: '2019/4/20',
          title: '拒绝人：',
          content: '拒绝理由 2019/4/20 20:46'
        },
        {
          timestamp: '2019/4/21',
          title: '拒绝人：',
          content: '拒绝理由 2019/4/20 20:46'
        },
        {
          timestamp: '2019/4/22',
          title: '拒绝人：',
          content: '拒绝理由 2019/4/20 20:46'
        },
        {
          timestamp: '2019/4/23',
          title: '已成功申请：',
          content: '接收理由 2019/4/20 20:46'
        }
      ]
    }
  }
}
</script>
