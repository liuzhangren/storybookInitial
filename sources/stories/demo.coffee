import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'

import demo1 from '../Components/demo1'
import demo2 from '../Components/demo2'
import demo3 from '../Components/demo3'
import demo4 from '../Components/demo4/btnModal'
import demo5 from '../Components/demo5'
import demo6 from '../Components/demo6'
import demo7 from '../Components/demo7'
CFX = cfxify {
  'div'
  demo1
  demo2
  demo3
  demo4
  demo5
  demo6
  demo7
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

  .add 'demo5'
  , =>
    { c_demo5 } = CFX
    c_demo5 {}
  
  .add 'demo6'
  , =>
    { c_demo6 } = CFX
    c_demo6 {}
  
  .add 'demo7'
  , =>
    { c_demo7 } = CFX
    c_demo7 {}