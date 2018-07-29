import React from 'react';
import OfferItem from './OfferItem.jsx'

export default class Offerlist extends React.Component {
  constructor(props) {
    super(props);
    for (let i = 0; i < this.props.offers.length; i++) {
      if (this.props.offers[i].totalAvail !== this.props.offers[i].claimed) {
        this.state = {
          selected : this.props.offers[i].id
        };
        this.props.selectionCb(this.props.offers[i].id);
        i = this.props.offers.length;
      }
    }

  }

  componentDidMount() {

  }

  selectNewOffer(itemId, index) {
    if(this.props.offers[index].claimed !== this.props.offers[index].totalAvail && this.state.selected !== itemId){
      this.setState({selected:itemId});
      this.props.selectionCb(itemId);
    }
  }

  render() {
    var offerList = this.props.offers.map((curr, idx, arr) => {
      return (<OfferItem key={curr.id} offer={curr} selected={this.state.selected} onClick={this.selectNewOffer.bind(this, curr.id, idx)}/>)
    });
    return (
      <div>
      {offerList}
      </div>
    );
  }
}