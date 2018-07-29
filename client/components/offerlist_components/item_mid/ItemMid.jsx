import React from 'react';
import ItemNameComp from './ItemNameComp.jsx';
import ItemSoldStatus from './ItemSoldStatus.jsx';

let midStyle = {
  width:'60%',
  display:'flex',
  flexDirection:'column'
}

export default class ItemMid extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={midStyle}>
        <ItemNameComp name={this.props.name}/>
        <ItemSoldStatus sold={this.props.claimed}/>
      </div>
    );
  }
}