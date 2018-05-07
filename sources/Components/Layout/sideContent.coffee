import cfxify from 'cfx.dom'
import React, { Component } from 'react'
import {
	Layout
	Menu
	Breadcrumb
	Icon
} from 'antd'

{
	Header
	Content
	Footer
	Sider
} = Layout
MenuItem = Menu.Item
SubMenu = Menu.SubMenu

CFX = cfxify {
	Layout
	Sider
	Menu
	MenuItem
	Icon
	'span'
}

class layout extends Component 
	constructor: (props) ->
		super props
		@
		@state = 
			collapsed: false
	onCollapse: (collapsed) =>
		console.log collapsed
		@setState {
			collapsed
		}
	render: ->
		{
			c_Layout
			c_Sider
			c_Menu
			c_MenuItem
			c_Icon
			c_span
		}	 = CFX

		c_Layout
			style:
				minHeight: '100vh'
		,
			c_Sider
				collapsible: true
				collapsed: @state.collapsed
				onCollapse: @onCollapse
			,
				c_Menu
					theme: 'dark'
					defaultSelectedKeys: ['1']
					mode: 'inline'
				,
					c_MenuItem
						kye:'1'
					,
						c_Icon
							type: 'pie-chart'
						c_span {}
						, 'Option 1'

export default layout
