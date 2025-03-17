<template>
  <div>
    <div class="position-fixed w-100 d-flex justify-content-end p-3">
      <Button @click="toPdf">保存为Pdf</Button>
    </div>
    <div class="bg"></div>
    <div class="d-flex justify-content-center">
      <div ref="container">
        <div class="page">
          <Row class="h-100">
            <Col span="8" class="left">
              <div class="d-flex justify-content-center pt-5">
                <img class="avatar" src="../assets/avatar.png" />
              </div>
              <div class="px-5 mt-5">
                <img class="icon" src="../assets/icons/age.png" /><span class="mx-2">{{age}}岁</span>
              </div>
              <div class="px-5 mt-2">
                <img class="icon" src="../assets/icons/working-years.png" /><span class="mx-2">{{year}}年工作经验</span>
              </div>
              <div class="px-5 mt-2">
                <img class="icon" src="../assets/icons/tel.png" /><span class="mx-2">16619771137</span>
              </div>
              <div class="px-5 mt-2">
                <img class="icon" src="../assets/icons/email.png" /><span class="mx-2">455590533@qq.com</span>
              </div>
              <div class="px-5 mt-5">
                <img class="icon-large" src="../assets/icons/skill.png" /><span class="mx-2 text-large">技能特长</span>
              </div>
              <div class="px-5 mt-2">
                <div>PHP</div>
                <Rate :count="8" :value="6" disabled icon="ios-leaf"></Rate>
              </div>
              <div class="px-5 mt-2">
                <div>MySQL</div>
                <Rate :count="8" :value="5" disabled icon="ios-leaf"></Rate>
              </div>
              <div class="px-5 mt-2">
                <div>Redis</div>
                <Rate :count="8" :value="5" disabled icon="ios-leaf"></Rate>
              </div>
              <div class="px-5 mt-2">
                <div>Vue</div>
                <Rate :count="8" :value="5" disabled icon="ios-leaf"></Rate>
              </div>
              <div class="px-5 mt-2">
                <div>Golang</div>
                <Rate :count="8" :value="4" disabled icon="ios-leaf"></Rate>
              </div>
              <div class="px-5 mt-5">
                <img class="icon-large" src="../assets/icons/language.png" /><span class="mx-2 text-large">语言能力</span>
              </div>
              <div class="px-5 mt-3">
                <span>大学英语四级</span>
              </div>
              <div class="px-5 mt-2">
                <span>阅读英文文档</span>
              </div>
              <div class="px-5 mt-5">
                <img class="icon-large" src="../assets/icons/prefer.png" /><span class="mx-2 text-large">职业倾向</span>
              </div>
              <div class="px-5 mt-3">
                <span>中型企业</span>
              </div>
              <div class="px-5 mt-2">
                <span>能转Golang</span>
              </div>
              <div class="px-5 mt-2">
                <span>上班时间正常(偶尔加班)</span>
              </div>
              <div class="px-5 mt-2">
                <span>异地可线上面试</span>
              </div>
            </Col>
            <Col span="16" class="p-5 right">
              <div>
                <h3>吴诚骏</h3>
              </div>
              <div>
                <span>掌握软件开发流程规范，具备良好的代码设计和开发能力。逻辑结构清晰，命名规范，代码冗余率低。</span>
              </div>
              <div>
                <span>主要使用PHP、Redis、Vue、熟悉MySQL数据应用开发，缓存技术，前后端分离，单页面应用。</span>
              </div>
              <div>
                <span>兴趣广泛，具备开源精神，自主开发能够提升效率的小工具，如electron、chrome浏览器插件等。</span>
              </div>
              <div class="mt-4 d-flex justify-content-start align-content-center">
                <div class="icon-large">
                  <img class="icon-large" src="../assets/icons/intention.png" />
                </div>
                <div class="text-large mx-2 w-100">求职意向</div>
              </div>
              <Row class="mt-2">
                <Col span="6" class="d-flex justify-content-center">
                  <Icon type="ios-code-working" :size="18"></Icon>
                  <span class="mx-1">PHP开发</span>
                </Col>
                <Col span="6" class="d-flex justify-content-center">
                  <Icon type="ios-pin-outline" :size="18"></Icon>
                  <span class="mx-1">南京/广州</span>
                </Col>
                <Col span="6" class="d-flex justify-content-center">
                  <Icon type="ios-cash-outline" :size="18"></Icon>
                  <span class="mx-1">20-30k</span>
                </Col>
                <Col span="6" class="d-flex justify-content-center">
                  <Icon type="ios-clock-outline" :size="18"></Icon>
                  <span class="mx-1">月内到岗</span>
                </Col>
              </Row>
              <div class="mt-4 d-flex justify-content-start align-content-center">
                <div class="icon-large">
                  <img class="icon-large" src="../assets/icons/education.png" />
                </div>
                <div class="text-large mx-2 w-100">教育背景</div>
              </div>
              <Row class="mt-2">
                <Col span="8" class="d-flex justify-content-start">
                  <span>2012.9 - 2016.6</span>
                </Col>
                <Col span="8" class="d-flex justify-content-center">
                  <span>通信工程(全日制本科)</span>
                </Col>
                <Col span="8" class="d-flex justify-content-end">
                  <span>安徽大学江淮学院</span>
                </Col>
              </Row>
              <div class="mt-4 d-flex justify-content-start align-content-center">
                <div class="icon-large">
                  <img class="icon-large" src="../assets/icons/work.png" />
                </div>
                <div class="text-large mx-2 w-100">工作经历</div>
              </div>
              <div class="mt-3">
                <Timeline>
                  <TimelineItem>
                    <div><span>2016.7</span></div>
                    <div>
                      <span>瑞雷森科技（北京）有限公司</span>
                    </div>
                    <div>
                      <span class="label">S</span>
                      <span class="mx-1">刚毕业，接触工作，在主程的指导下完成工作。</span>
                    </div>
                    <div>
                      <span class="label">T</span>
                      <span class="mx-1">对央视网/北京各大高校的项目进行开发及维护。</span>
                    </div>
                    <div>
                      <span class="label">A</span>
                      <span class="mx-1">完成了学生到工作者的身份转变，努力学习，快速进步。</span>
                    </div>
                    <div>
                      <span class="label">R</span>
                      <span class="mx-1">在从初级开发，直到成为项目的主要开发者，出色完成了工作，并且以PM/开发的身份自主和客户对接，完成了更多项目，得到了客户的一致肯定。</span>
                    </div>
                    <div>
                      <Tag type="border" color="#284662">公众号开发</Tag>
                      <Tag type="border" color="#284662">Yii</Tag>
                      <Tag type="border" color="#284662">Mysql</Tag>
                      <Tag type="border" color="#284662">叫号系统</Tag>
                      <Tag type="border" color="#284662">小程序</Tag>
                    </div>
                  </TimelineItem>
                  <TimelineItem>
                    <div><span>2018.7</span></div>
                    <div>
                      <span>北京陌陌科技有限公司</span>
                    </div>
                    <div>
                      <span class="label">S</span>
                      <span class="mx-1">从小公司换到了上市公司。接触了更多前沿的技术。</span>
                    </div>
                    <div>
                      <span class="label">T</span>
                      <span class="mx-1">开发后台Feed相关审核判罚，自动化测试等业务。</span>
                    </div>
                    <div>
                      <span class="label">A</span>
                      <span class="mx-1">前后端独立开发，主持日常需求会议。</span>
                    </div>
                    <div>
                      <span class="label">R</span>
                      <span class="mx-1">独立负责Feed相关业务，并且自主和异地的同事进行需求对接，产出了很多独立思考出来的功能。</span>
                    </div>
                    <div>
                      <Tag type="border" color="#284662">Feed</Tag>
                      <Tag type="border" color="#284662">审核</Tag>
                      <Tag type="border" color="#284662">阶梯判罚</Tag>
                      <Tag type="border" color="#284662">MongoDB</Tag>
                      <Tag type="border" color="#284662">HBase日志迁移</Tag>
                      <Tag type="border" color="#284662">全栈</Tag>
                    </div>
                  </TimelineItem>
                  <TimelineItem>
                    <div><span>2019.8</span></div>
                    <div>
                      <span>南京三百云信息科技有限公司</span>
                    </div>
                    <div>
                      <span class="label">S</span>
                      <span class="mx-1">换到二线城市</span>
                    </div>
                    <div>
                      <span class="label">T</span>
                      <span class="mx-1">处理二手车估值下单/审核业务。</span>
                    </div>
                    <div>
                      <span class="label">A</span>
                      <span class="mx-1">对部分老旧代码进行了改造，从0到1构建了composer包，开发了一系列基类。并且把一线的新技术，普及到新公司，探讨可取的地方。</span>
                    </div>
                    <div>
                      <span class="label">R</span>
                      <span class="mx-1">推动了公司监控报警/容器化/灰度发布/服务发现注册的基础设施升级。重构了逻辑复杂的业务代码，开发了一系列提升效率的工具。</span>
                    </div>
                    <div>
                      <Tag type="border" color="#284662">Laravel/CI</Tag>
                      <Tag type="border" color="#284662">工单系统</Tag>
                      <Tag type="border" color="#284662">自动化定价</Tag>
                      <Tag type="border" color="#284662">composer开发</Tag>
                      <Tag type="border" color="#284662">Electron/Chrome-Plugin</Tag>
                      <Tag type="border" color="#284662">Docker/Grafana/Openresty</Tag>
                    </div>
                  </TimelineItem>
                  <TimelineItem>
                    <div><span>至今</span></div>
                  </TimelineItem>
                </Timeline>
              </div>
            </Col>
          </Row>
        </div>
        <div class="page">
          <div class="right px-5 pt-5">
            <div class="d-flex justify-content-start align-content-center">
              <div class="icon-large">
                <img class="icon-large" src="../assets/icons/projects.png" />
              </div>
              <div class="text-large mx-2 w-100">项目经历</div>
            </div>
            <div class="mt-4">
              <Row>
                <Col span="12" class="p-2">
                  <div class="text-center">央视微平台</div>
                  <div>
                    <Tag type="border" color="#284662">主要功能</Tag>
                  </div>
                  <div>
                    <span>为央视公众号提供签到、边看边聊、抽奖、积分兑换/排行榜等互动服务。</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">相关技术</Tag>
                  </div>
                  <div>
                    <span>微信公众号开发、Yii、Redis、MySQL</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">项目展示</Tag>
                  </div>
                  <div>
                    <span>打开微信公众号《中国舆论场》</span>
                  </div>
                </Col>
                <Col span="12" class="p-2">
                  <div class="text-center">北航为我点赞</div>
                  <div>
                    <Tag type="border" color="#284662">主要功能</Tag>
                  </div>
                  <div>
                    <span>为北航医院，办事处等地点提供取号/叫号服务，线上取号/线下取号打印凭条，由办事老师/学校医生叫号，排队办理业务，办理之后评价。</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">相关技术</Tag>
                  </div>
                  <div>
                    <span>Yii、Redis、MySQL、Workman</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">项目展示</Tag>
                  </div>
                  <div>
                    <span>打开微信小程序《北京航空航天大学》- 点击《大厅》菜单栏</span>
                  </div>
                </Col>
                <Col span="12" class="p-2">
                  <div class="text-center">北航小程序</div>
                  <div>
                    <Tag type="border" color="#284662">主要功能</Tag>
                  </div>
                  <div>
                    <span>集成萌校(微信企业号应用)、为我点赞叫号系统、咨询一体的小程序入口。</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">相关技术</Tag>
                  </div>
                  <div>
                    <span>Yii、Redis、MySQL、微信小程序</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">项目展示</Tag>
                  </div>
                  <div>
                    <span>打开微信小程序《北京航空航天大学》</span>
                  </div>
                </Col>
                <Col span="12" class="p-2">
                  <div class="text-center">Moria运营后台</div>
                  <div>
                    <Tag type="border" color="#284662">主要功能</Tag>
                  </div>
                  <div>
                    <span>陌陌运营后台，主要做Vue页面开发、Feed审核相关业务.</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">相关技术</Tag>
                  </div>
                  <div>
                    <span>自研框架、Redis、MongoDB、Vue、ElasticSearch、Grafana</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">项目展示</Tag>
                  </div>
                  <div>
                    <span>内网访问，无法展示</span>
                  </div>
                </Col>
                <Col span="12" class="p-2">
                  <div class="text-center">车300快定价</div>
                  <div>
                    <Tag type="border" color="#284662">主要功能</Tag>
                  </div>
                  <div>
                    <span>开发APP/后台接口，App根据车架号、上牌日期、车身照片等下单。下单后调用OCR识别出车辆的信息，进行自动化定价。转人工的订单经过审核、定价、复合的流转，最终生成定价报告。</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">相关技术</Tag>
                  </div>
                  <div>
                    <span>Laravel、CI、Redis、MySQL、Composer包开发</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">项目展示</Tag>
                  </div>
                  <div>
                    <span>浏览器打开《kdj.che300.com》，应用商店搜索《车300快定价》</span>
                  </div>
                </Col>
                <Col span="12" class="p-2">
                  <div class="text-center">toolbox开发工具</div>
                  <div>
                    <Tag type="border" color="#284662">主要功能</Tag>
                  </div>
                  <div>
                    <span>通过统一身份账号，子系统(Jira/Gitlab/docker开发环境)的OpenApi、AccessToken，快速执行创建Jira任务，Commit信息按规范格式化、Commit关联Jira任务、一键执行composer包版本更新，自动合并等功能。</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">相关技术</Tag>
                  </div>
                  <div>
                    <span>Electron、Vue、Iview、Shell</span>
                  </div>
                  <div>
                    <Tag type="border" color="#284662">项目展示</Tag>
                  </div>
                  <div>
                    <span>内部应用，无法展示</span>
                  </div>
                </Col>
              </Row>
            </div>
            <div class="mt-5 d-flex justify-content-start align-content-center">
              <div class="icon-large">
                <img class="icon-large" src="../assets/icons/open-source.png" />
              </div>
              <div class="text-large mx-2 w-100">开源项目/社交账号</div>
            </div>
            <div class="mt-2">
              <div class="mt-2">
                <img class="icon" src="../assets/icons/jQuery.png" />
                <span class="mx-2"><a href="https://www.jq22.com/jquery-info13534" target="_blank">jQuery插件库(早期)</a></span>
              </div>
              <div class="mt-2">
                <img class="icon" src="../assets/icons/github.png" />
                <span class="mx-2"><a href="https://github.com/ChengJun-Wu" target="_blank">Github</a></span>
              </div>
            </div>
          </div>
          <Row class="mt-5 left footer d-flex justify-content-center p-4">
            <Col span="8">
            </Col>
            <Col span="8" class="d-flex justify-content-center">
              <span class="pt-4">©{{nowYear}} wuchengjun</span>
            </Col>
            <Col span="8" class="d-flex justify-content-end">
              <img class="qrcode" :src="qrcode">
            </Col>
          </Row>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import QRCode from 'qrcode'
import moment from 'moment'
export default {
  name: 'Home',
  data () {
    return {
      qrcode: '',
      age: 0,
      year: 0,
      nowYear: 0
    }
  },
  mounted () {
    QRCode.toDataURL('http://wuchengjun.cn', (err, url) => {
      if (err) console.error(err)
      this.qrcode = url
    })
    const bd = [1994, 7, 28]
    const birthday = moment(bd)
    const graduate = moment(bd).add(22, 'y')
    const now = moment()
    this.age = now.diff(birthday, 'years')
    this.year = now.diff(graduate, 'years')
    this.nowYear = now.format('YYYY')
  },
  methods: {
    toPdf () {
      document.body.innerHTML = this.$refs.container.innerHTML
      window.print()
      window.location.reload()
    }
  }
}
</script>

<style scoped>
.bg{
  background: darkgrey;
  position: fixed;
  width: 100%;
  height: 100%;
  z-index: -1;
}
.page{
  width: 840px;
  height: 1188px;
  background: white;
  box-shadow: 0 0 25px 5px grey;
}
.left{
  background: #284662;
  height: 100%;
}
.avatar{
  width: 140px;
  height: 218px;
  box-shadow: 0 0 2px 3px #E5E5E5;
}
.icon{
  width: 14px;
  height: 14px;
}
.icon-large{
  width: 24px;
  height: 24px;
}
.left *{
  color: white;
  font-size: 14px;
}
.left .text-large{
  color: white;
  font-size: 18px;
  font-weight: bold;
  vertical-align:bottom;
}
.right span{
  font-size: 14px;
  color: grey;
}
.right .text-large{
  color: #284662;
  font-size: 18px;
  font-weight: bold;
  vertical-align:bottom;
  border-bottom: 1px solid #284662;
}
.label{
  background: #284662;
  border-radius: 14px;
  color: white !important;
}
.footer{
  background: #284662;
  width: 100%;
  height: 120px;
}
.qrcode{
  width: 60px;
  height: 60px;
}
</style>
