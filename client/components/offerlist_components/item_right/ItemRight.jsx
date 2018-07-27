import React from 'react';
import ItemPrices from './ItemPrices.jsx';
import ItemSavings from './ItemSavings.jsx';

let rightStyle = {
  alignSelf: 'flex-end'
}

export default class ItemRight extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={rightStyle}>
        <ItemPrices/>
        <ItemSavings/>
      </div>
    );
  }
}