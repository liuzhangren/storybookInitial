import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'

import demo1 from '../Components/demo1'
import demo2 from '../Components/demo2'
import demo3 from '../Components/demo3'
import demo4 from '../Components/demo4/btnModal'

CFX = cfxify {
  'div'
  demo1
  demo2
  demo3
  demo4
}

export default ->
  storiesOf 'Demo', module

  .add 'demo1'
  , =>
    { c_demo1 } = CFX
    c_demo1 {}
  
  .add 'demo2'
  , =>
    { c_demo2 } = CFX
    c_demo2 {}
  
  .add 'demo3'
  , =>
    { c_demo3 } = CFX
    c_demo3 {}
  
  .add 'demo4'
  , =>
    { c_demo4,c_div } = CFX
    c_demo4
      type: 'primary'
      BtnTitle: '按钮'
      ModalTitle: '这是一个标题'
      ModalContent:
        c_div {}
        , 'HelloWorld!!!'