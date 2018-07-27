import React from 'react';
import OfferItem from './OfferItem.jsx'

export default class Offerlist extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }



  render() {
    var offerList = this.props.offers.map((curr, idx, arr) => {
      return (<OfferItem key={idx}/>)
    });
    return (
      <div>
      {offerList}
      </div>
    );
  }
}