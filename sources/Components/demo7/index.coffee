import cfxify from 'cfx.react.dom'
import {
  compose
  withState
  withHandlers
  withProps
  lifecycle
} from 'recompose'

CFX = cfxify {
  'div'
  'h1'
  'p'
  'button'
}

{
  c_div
  c_h1
  c_p
  c_button
} = CFX

Toggle = ({
  title
  message
  toggleVisibility
  isVisible
  name
}) =>
  c_div {}
  ,
    c_h1 {}
    , "#{title}"

    if isVisible
    then  c_p {}
    , 'hello'
    else 
      c_p {}
      , '你好'

    c_p {}
    , "#{message}"
    c_p {}
    , "#{name}"

    c_button
      onClick: toggleVisibility
    , 'Click'

cycle = 
	componentDidMount: ->
		console.log 'hello !!!'
	componentWillReceiveProps: (nextProps) ->
		console.log '我是nextProps --->>>', nextProps

newToggle = lifecycle(cycle) Toggle

export default compose(
  # withState 用于设置state 接收3个参数 分别是 state的key、改变该state的方法的名字、该state的初始值
  withState 'isVisible', 'toggleVis', false
  # withHandlers 用于更改state 相当于class.....中的setState 接收多个对象，key为组件执行事件方法名，value为接收
  # 改变state的方法的名字 和 该state
  withHandlers 
    toggleVisibility: ({ toggleVis, isVisible }) => (event) =>
      toggleVis !isVisible
  # withProps 接收对象参数 为state，可根据传入state 动态设置组件内的变量值
  withProps ({ isVisible }) =>
    title:
      if isVisible
      then 'english'
      else '中文'
    message:
      if isVisible
      then 'speak english'
      else '用中文'
    name: 'lzr'
) newToggle