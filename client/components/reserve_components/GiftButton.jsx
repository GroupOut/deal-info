import React from 'react';

let giftStyle = {
  margin: '2%',
  padding: '6px',
  textAlign: 'center',
  borderRadius: '2px',
  border: '1px solid #777',
  cursor: 'pointer',
  fontSize: "16px",
  fontWeight: "500"
}

export default class GiftButton extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {

  }

handleClick(){
  this.props.onClick()
}

  render() {
    return (
      <div onClick={this.handleClick} style={giftStyle}>
        <i className="fas fa-gift"></i> Gift
      </div>
    );
  }
}