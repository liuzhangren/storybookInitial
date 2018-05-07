import React, { Component } from 'react'
import cfxify from 'cfx.dom'

CFX = cfxify {
	'div'
	'button'
}

class demo3 extends Component

	constructor: (props) ->
		super props
		@

		@state = 
			backgroundColor: 'red'
		@
	
	onClick: =>
		@setState {
			backgroundColor: 'blue'
		}
	render: ->

		{
			c_div
			c_button
		} = CFX
		[
			c_div
				style:
					width: '100px'
					height: '100px'
					backgroundColor: @state.backgroundColor
			, 'Hello World!!!'
			
			c_button
				onClick: @onClick
			, '按钮'
		]
		
export default demo3