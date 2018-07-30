import React from 'react';

let giftStyle = {
  margin: '2%',
  padding: '6px',
  textAlign: 'center',
  borderRadius: '2px',
  border: '1px solid #efefef',
  cursor: 'pointer'
}

export default class GiftButton extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }


  render() {
    return (
      <div onClick={this.props.onClick} style={giftStyle}>
        <i className="fas fa-gift"></i> Gift
      </div>
    );
  }
}