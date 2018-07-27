import React from 'react';

let pricesStyle = {
  display: 'flex'
}

export default class ItemPrices extends React.Component {
  constructor() {
    super();
  }

  render() {
    return (
      <div style={pricesStyle}>
      <span>$99999</span> <span>$99999</span>
      </div>
    )
  }
}