import React from 'react';
import ItemLeft from './ItemLeft.jsx';
import ItemRight from './item_right/ItemRight.jsx';
import ItemMid from './item_mid/ItemMid.jsx';


let offerStyle = {
  'display': 'flex',
  'justifyContent':'space-between',
  'borderBottom': '1px solid #efefef'
}

export default class OfferItem extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props.offer)
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={offerStyle} onClick={this.props.onClick}>
        <ItemLeft selected={this.props.selected} offerId={this.props.offer.id}/>
        <ItemMid name={this.props.offer.offerName} claimed={this.props.offer.claimed}/>
        <ItemRight origPrice={this.props.offer.originalPrice} discPrice={this.props.offer.discountedPrice}/>
      </div>
    );
  }
}