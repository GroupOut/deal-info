import React from 'react';

let savingsStyle = {
  align:'right'
}

export default class ItemSavings extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    return (
      <div style={savingsStyle}>
        {Math.round((1-(this.props.discPrice/this.props.origPrice))*100)}%Off!
      </div>
    )
  }
}