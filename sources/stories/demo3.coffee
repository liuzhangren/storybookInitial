import { storiesOf } from '@storybook/react'
import demo3 from '../Components/demo3'

import cfxify from 'cfx.dom'

CFX = cfxify {
  demo3
}

export default =>

  storiesOf 'Demo', module

  .add 'demo3'

  , =>

    {
      c_demo3
    } = CFX

    c_demo3 {}
