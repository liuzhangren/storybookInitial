import cfxify from 'cfx.react.dom'  
## 声明哪些dom 或者组件需要使用
CFX = cfxify { 
  'div'
}

export default -> 
## 将dom CFX化 即可使用
  {
    c_div
  } = CFX  
  
## 相当于 <div style='...'> Hello World!!! </div>
  c_div
    style:
      width: '100px'
      height: '100px'
      backgroundColor: 'red'
  , 'Hello World!!!'

  