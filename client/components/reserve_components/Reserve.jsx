import React from 'react';
import BuyButton from './BuyButton.jsx';
import GiftButton from './GiftButton.jsx';

let reserveStyle = {
  'borderBottom': '1px solid #efefef'
}

export default class Reserve extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }


  render() {
    return (
      <div style={reserveStyle}>
        <BuyButton onClick={this.props.reservationCb.bind(null, 'self')}/>
        <GiftButton onClick={this.props.reservationCb.bind(null, 'gift')}/>
      </div>
    );
  }
}