import React from 'react';
import ItemNameComp from './ItemNameComp.jsx';
import ItemSoldStatus from './ItemSoldStatus.jsx';

let midStyle = {
  width:'75%',
  display:'flex',
  flexDirection:'column'
}

export default class ItemMid extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={midStyle}>
        <ItemNameComp/>
        <ItemSoldStatus/>
      </div>
    );
  }
}