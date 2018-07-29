import React from 'react';

let pricesStyle = {
  display: 'flex'
}

let origPriceStyle = {
  textDecoration: 'line-through'
}

let discPriceStyle = {
  color: '#53a318'
}

export default class ItemPrices extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div style={pricesStyle}>
      <span style={origPriceStyle}>${this.props.origPrice}</span> &nbsp; <span style={discPriceStyle}> ${this.props.discPrice}</span>
      </div>
    )
  }
}