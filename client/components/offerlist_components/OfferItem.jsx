import React from 'react';
import ItemLeft from './ItemLeft.jsx';
import ItemRight from './item_right/ItemRight.jsx';
import ItemMid from './item_mid/ItemMid.jsx';


let offerStyle = {
  'display': 'flex',
  'justifyContent':'space-between'
}

export default class OfferItem extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={offerStyle}>
        <ItemLeft/>
        <ItemMid/>
        <ItemRight/>
      </div>
    );
  }
}