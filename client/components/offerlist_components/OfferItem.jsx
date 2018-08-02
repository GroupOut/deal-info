import React from 'react';
import ItemLeft from './ItemLeft.jsx';
import ItemRight from './item_right/ItemRight.jsx';
import ItemMid from './item_mid/ItemMid.jsx';


let offerStyle = {
  'display': 'flex',
  'justifyContent':'space-between',
  'borderBottom': '1px solid #efefef',
  cursor:'pointer',
  padding: '5px'
}

export default class OfferItem extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    let soldOut;
    if(this.props.offer.totalAvail - this.props.offer.claimed <= 0) {
      soldOut = true;
    } else {
      soldOut = false;
    }
    return (
      <div style={offerStyle} onClick={this.props.onClick}>
        <ItemLeft selected={this.props.selected} offerId={this.props.offer.id} soldOut={soldOut}/>
        <ItemMid name={this.props.offer.offerName} claimed={this.props.offer.claimed} soldOut={soldOut}/>
        <ItemRight origPrice={this.props.offer.originalPrice} discPrice={this.props.offer.discountedPrice}/>
      </div>
    );
  }
}