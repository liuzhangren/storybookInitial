import cfxify from 'cfx.react.dom'
import {
  compose
  withState
} from 'recompose'

CFX = cfxify {
  'div'
  'button'
}

{
  c_div
  c_button
} = CFX

enhance = withState 'counter', 'setCounter', 0

counter = enhance ({
  counter
  setCounter
}) =>
  c_div {}
  ,
    "Counter: #{counter}"
  ,
    c_button
      onClick: =>
        setCounter counter+1
    , 'increase'

    c_button
      onClick: =>
        setCounter counter-1
    , 'decrement'

export default counter