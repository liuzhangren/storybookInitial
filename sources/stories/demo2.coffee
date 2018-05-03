import { storiesOf } from '@storybook/react'
import demo2 from '../Components/demo2'

import cfxify from 'cfx.dom'

CFX = cfxify {
  demo2
}

export default =>

  storiesOf 'Demo', module

  .add 'demo2'

  , =>

    {
      c_demo2
    } = CFX

    c_demo2 {}
