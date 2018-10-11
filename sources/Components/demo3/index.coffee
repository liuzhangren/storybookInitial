import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import {
	compose
	withState
	withHandlers
	lifecycle
} from 'recompose'

CFX = cfxify {
	'div'
	'button'
}

{
	c_div
	c_button
} = CFX

demo = ({
	color
	onClick
}) =>
	[
		c_div
			key: '01'
			style:
				width: '100px'
				height: '100px'
				backgroundColor: color
				color: 'red'
		, 'Hello World!!!'
		
		c_button
			key: '02'
			onClick: onClick
		, '按钮'
	]

cycle = 
	componentDidMount: ->
		console.log 'hello !!!'
	componentWillReceiveProps: (nextProps) ->
		console.log '我是nextProps --->>>', nextProps

export default lifecycle(cycle) compose(
	withState 'color', 'setColor', 'red'
	withState 'isnot', 'setIsnot', false
	withHandlers {
		onClick: ({setColor, isnot, setIsnot}) => () =>
			setIsnot !isnot
			if isnot
				setColor 'green'
			else
				setColor 'black'
	}
) demo

# export default nest(A, B, C)
# c_A {}
# ,
# 	c_B {}
# 	,
# 		c_C {}
# 		, children



# pure