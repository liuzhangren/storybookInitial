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

enhance = withState 'color', 'setColor', false

div = enhance ({
  color
  setColor
}) =>
  [
    c_div
      style:
        width: '100px'
        height: '100px'
        color:
          if color
          then 'red'
          else 'green'
    , 'hello world'
    
    c_button
      onClick: =>
        setColor !color
        console.log color
    , 'Toggle'
  ]


export default div
  