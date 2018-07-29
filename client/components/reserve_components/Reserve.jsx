import React from 'react';
import BuyButton from './BuyButton.jsx';
import GiftButton from './GiftButton.jsx';

export default class Reserve extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }


  render() {
    return (
      <div>
        <BuyButton onClick={this.props.reservationCb.bind(null, 'self')}/>
        <GiftButton onClick={this.props.reservationCb.bind(null, 'gift')}/>
      </div>
    );
  }
}