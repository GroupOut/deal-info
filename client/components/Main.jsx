import React from 'react';

import Spotlight from './spotlight_components/Spotlight.jsx';
import Offerlist from './offerlist_components/Offerlist.jsx';
import Reserve from './reserve_components/Reserve.jsx';
import ShareLinks from './share_components/ShareLinks.jsx';

const mainStyle = {
  borderStyle : 'solid',
  borderWidth : '1px',
  width : '400px'
};

export default class Main extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dealStatus : {},
      dealOffers : [],
      selectedOffer : 0
    };
  }

  componentDidMount() {
    //db query & cb
    this.dbQueryCb();
  }

  dbQueryCb(){ //PLACEHOLDER
    this.setState({
      dealStatus : {
        id : 1,
        name : "River Sightseeing or Sunset Tour for One or Two People from Charles Riverboat Company",
        expiration : "2018-10-27T13:46:29.000Z",
        views : 4350,
        rating : 3.01,
        reviewCount : 81489
      },
      dealOffers: [{
        id : 1,
        offerName : 'One x River Sightseeing or Sunset Tour',
        totalAvail : 123,
        claimed : 107,
        originalPrice : 46,
        discountedPrice : 22,
        dealStatusId : 1
      },{
        id : 2,
        offerName : 'Two x River Sightseeing or Sunset Tour',
        totalAvail : 140,
        claimed : 22,
        originalPrice : 92,
        discountedPrice : 65,
        dealStatusId : 1
      }]
    });
  }

  newOfferSelection(offerId){
    this.setState({
      selectedOffer: offerId
    });
  }

  handleReserveClick(type){
    if(Date.parse(new Date()) < Date.parse(this.state.dealStatus.expiration)){
      alert(`deal seems valid for offerId:${this.state.selectedOffer} assume put request is programmed to db here and user purchased for ${type}`)
    }
  }

  render() {
    if (this.state.dealStatus.id !== void(0)){
      return (
        <div style={mainStyle}>
          <Spotlight deal={this.state.dealStatus} offers={this.state.dealOffers}/>
          <Offerlist offers={this.state.dealOffers} selectionCb={this.newOfferSelection.bind(this)}/>
          <Reserve reservationCb={this.handleReserveClick.bind(this)}/>
          <ShareLinks/>
        </div>
      );
    } else {
      return (
        <div style={mainStyle}>
          Loading... Please wait...
        </div>
      );
    }
  }
}