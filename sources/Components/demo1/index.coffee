import prifixDom from 'cfx.react.dom'  ##引入cfx库

CFX = prifixDom {  ## 声明哪些dom 或者组件需要使用
  'div'
}

export default -> ## 默认暴露出去，箭头后面的都是组件 可以引用该文件

  {
    c_div
  } = CFX  ## 将dom CFX化 即可使用

  c_div
    style:
      width: '100px'
      height: '100px'
      backgroundColor: 'red'
  , 'Hello World!!!'

  ## 相当于 <div style='...'> Hello World!!! </div>