## coffee配合React的基本封装方法
import React, { Component } from 'react'
import prefixDom from 'cfx.dom'
import {
  Modal
  Button
} from 'antd'

CFX = prefixDom {
  'div'
  Modal
  Button
}

class PopModal extends Component

  constructor: (props) ->
    super props
    @state =
      visible: false
    @

  showModal: () =>
    @setState
      visible: true

  handleOk: (e) =>
    @setState
      visible: false
      

  handleCancel: (e) =>
    console.log 'Clicked cancel button'
    @setState
      visible: false

  render: ->

    {
      c_div
      c_Modal
      c_Button
    } = CFX

    c_div {}
    ,
      c_Button
        shape: @props.shape
        icon: @props.icon
        type: @props.type
        onClick: @showModal
        style: @props.style
      , @props.BtnTitle

      c_Modal
        title: @props.ModalTitle
        okText: '确定'
        cancelText: '取消'
        visible: @state.visible
        onOk: @handleOk
        onCancel: @handleCancel
      ,
        @props.ModalContent

export default PopModal