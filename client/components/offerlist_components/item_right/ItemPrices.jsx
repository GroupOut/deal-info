import React from 'react';

let pricesStyle = {
  display: 'flex'
}

let origPriceStyle = {
  textDecoration: 'line-through',
  fontFamily: "OpenSans, “Helvetica Neue”, Helvetica, Tahoma, Arial, FreeSans, sans-serif",
  fontSize: "16px",
  fontWeight: "600"
}

let discPriceStyle = {
  color: '#53a318',
  fontFamily: "OpenSans, “Helvetica Neue”, Helvetica, Tahoma, Arial, FreeSans, sans-serif",
  fontSize: "14px",
  fontWeight: "500"
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