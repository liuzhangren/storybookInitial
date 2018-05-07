import { storiesOf } from '@storybook/react'
import Layout from '../Components/Layout/sideContent'

import cfxify from 'cfx.dom'

CFX = cfxify {
  Layout 
}

export default =>

  storiesOf 'Layout', module

  .add 'Layout'

  , =>

    {
      c_Layout
    } = CFX

    c_Layout {}
