import React from 'react';
import ItemPrices from './ItemPrices.jsx';
import ItemSavings from './ItemSavings.jsx';

let rightStyle = {
  alignSelf: 'flex-end'
}

export default class ItemRight extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={rightStyle}>
        <ItemPrices origPrice={this.props.origPrice} discPrice={this.props.discPrice}/>
        <ItemSavings origPrice={this.props.origPrice} discPrice={this.props.discPrice}/>
      </div>
    );
  }
}