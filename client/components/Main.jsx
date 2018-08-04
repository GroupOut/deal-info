import React from 'react';
import $ from 'jquery';
import Spotlight from './spotlight_components/Spotlight.jsx';
import Offerlist from './offerlist_components/Offerlist.jsx';
import Reserve from './reserve_components/Reserve.jsx';
import ShareLinks from './share_components/ShareLinks.jsx';
import TitleHeader from './title_component/TitleHeader.jsx';


const mainStyle = {
  width : '400px',
  position: '-webkit-sticky',
  position: 'sticky',
  top: '10px',
  padding: '30px 10px 10px 15px',
  fontFamily: "OpenSans, “Helvetica Neue”, Helvetica, Tahoma, Arial, FreeSans, sans-serif"
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

    let context = this;
    let locSplit = window.location.pathname.split('/');
    let idParam;
    for(let i = 0; i < locSplit.length; i++) {
      if(locSplit[i] === 'deals'){
        idParam = parseInt(locSplit[i+1])
      }
    }

    if(typeof idParam === 'number'){

      if(idParam > 0 && idParam < 101){
        $.ajax({
          url: process.env.HOST_URL + '/deal_status/' + idParam,
          method: 'GET',
          success: function(data) {
            // console.log(data)
            let parsedData = JSON.parse(data);
            // console.log(parsedData)
            let reactifyNames = {
              dealStatus : {
                id : parsedData.dealStatus.id,
                name : parsedData.dealStatus.name,
                expiration : parsedData.dealStatus.expiration,
                views : parsedData.dealStatus.views,
                rating : parsedData.dealStatus.rating,
                reviewCount : parsedData.dealStatus.review_count
              },
              dealOffers:[]
            }
            for (let i = 0; i < parsedData.dealOffers.length; i++) {
              let entry = {};
              entry.id = parsedData.dealOffers[i].id;
              entry.name = parsedData.dealOffers[i].name;
              entry.claimed = parsedData.dealOffers[i].claimed;
              entry.dealStatusId = parsedData.dealOffers[i].deal_status_id;
              entry.discountedPrice = parsedData.dealOffers[i].discounted_price;
              entry.originalPrice = parsedData.dealOffers[i].original_price;
              entry.offerName = parsedData.dealOffers[i].offer_name;
              entry.totalAvail = parsedData.dealOffers[i].total_avail;
              reactifyNames.dealOffers.push(entry);
            }

            context.dbQueryCb(reactifyNames);
          },
          error: function(err) {
            console.log(err);
            context.dbQueryCb(false);
          }
        });
      } else {
        console.log('Error: invalid ID: ' + idParam + '. Please use an ID between 1 and 100 in url. Ex: "localhost:8080/deals/<<ID>>"')
      }
    } else {
      console.log('Error: invalid URL: ' + window.location.href + '. Please redirect to "localhost:8080/deals/1"')
    }

    console.log(idParam)
    if(idParam !== '') {

    } else {
      console.log('window location went wrong')
    }

    // console.log(window.location.pathname.split('/')[1]);
  }

  dbQueryCb(data){

    if (data) {
      this.setState(data);
      if(document.getElementById('titleComponent') !== null){
        ReactDOM.render(React.createElement(TitleHeader, data), document.getElementById('titleComponent'));
      }
    } else {
      console.log('Error data not found check DB and try again, inserting placeholder data');
      this.setState({ //PLACEHOLDER
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


  }

  newOfferSelection(offerId) {
    this.setState({
      selectedOffer: offerId
    });
  }

  handleReserveClick(type) {
    if(this.state.selectedOffer !== 0) {
      if(Date.parse(new Date()) < Date.parse(this.state.dealStatus.expiration)) {
        alert(`deal seems valid for offerId:${this.state.selectedOffer} assume put request is programmed to db and user purchased for ${type}`)

        let idParam = window.location.pathname.split('/')[1];
        $.ajax({
          url: `http://localhost:3001/deal_status/${idParam}/offers/${this.state.selectedOffer}`,
          method: 'PUT',
          data: {purchType:type},
          success: function(data) {
            console.log('Purchase processed for ' + data)
            // let parsedData = JSON.parse(data);
            // console.log(parsedData)
          },
          error: function(err) {
            console.log(err)
          }
        })

      } else {
        alert(`Sorry, this deal has expired. Please check back later.`)
      }
    } else {
      alert(`Sorry, this deal is sold out. Please check back later.`)
    }
  }

  render() {
    if (this.state.dealStatus.id !== void(0)) {
      return (
        <div style={mainStyle}>
          <Spotlight deal={this.state.dealStatus} offers={this.state.dealOffers}/>
          <Offerlist offers={this.state.dealOffers} selectionCb={this.newOfferSelection.bind(this)}/>
          <Reserve reservationCb={this.handleReserveClick.bind(this)} expired={(Date.parse(new Date()) > Date.parse(this.state.dealStatus.expiration))}/>
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