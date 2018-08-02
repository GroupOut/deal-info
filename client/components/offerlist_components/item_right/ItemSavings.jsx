import React from 'react';

let savingsStyle = {
  textAlign: 'right',
  fontFamily: "OpenSans, “Helvetica Neue”, Helvetica, Tahoma, Arial, FreeSans, sans-serif",
  fontSize: "12px",
  fontWeight: "500"
}

export default class ItemSavings extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    return (
      <div style={savingsStyle}>
        {Math.round((1-(this.props.discPrice/this.props.origPrice))*100)}% Off!
      </div>
    )
  }
}