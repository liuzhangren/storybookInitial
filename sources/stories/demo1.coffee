import { storiesOf } from '@storybook/react'
import demo1 from '../Components/demo1'

import cfxify from 'cfx.dom'

CFX = cfxify {
  demo1 
}

export default =>

  storiesOf 'Demo', module

  .add 'demo1'

  , =>

    {
      c_demo1
    } = CFX

    c_demo1 {}
