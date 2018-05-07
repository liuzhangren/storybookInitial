import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import BtnModal from '../Components/demo4/btnModal'

CFX = cfxify {
  'div'
  BtnModal
}

export default =>

  storiesOf 'Demo', module

  .add 'demo4'

  , =>

    {
      c_div
      c_BtnModal
    } = CFX

    c_BtnModal
      type: 'primary'
      BtnTitle: '按钮'
      ModalTitle: '这是一个标题'
      ModalContent:
        c_div {}
        , 'HelloWorld!!!'    


