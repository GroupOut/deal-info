import React from 'react';
import BuyButton from './BuyButton.jsx';
import GiftButton from './GiftButton.jsx';

export default class Reserve extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }


  render() {
    return (
      <div>
        <BuyButton/>
        <GiftButton/>
      </div>
    );
  }
}