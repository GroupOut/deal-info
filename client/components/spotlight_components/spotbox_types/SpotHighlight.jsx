import React from 'react';

let highlightStyle = {
  width: '31%',
  borderStyle: 'solid',
  borderWidth: '1px',
};

export default class SpotHighlight extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props);
    let leastRem = 100;
    let mostPercentSaved = 0;
    let largestSavingsValue = 0;

    for (let i = 0; i < this.props.offers.length; i++) {
      if (leastRem > (((this.props.offers[i].totalAvail - this.props.offers[i].claimed) / this.props.offers[i].totalAvail) * 100)) {
        leastRem = Math.round(((this.props.offers[i].totalAvail - this.props.offers[i].claimed) / this.props.offers[i].totalAvail) * 100);
      }

      if (mostPercentSaved < ((1 - (this.props.offers[i].discountedPrice / this.props.offers[i].originalPrice)) * 100) &&
       (this.props.offers[i].totalAvail !== this.props.offers[i].claimed)) {
        mostPercentSaved = Math.round((1 - (this.props.offers[i].discountedPrice / this.props.offers[i].originalPrice)) * 100);
      }

      if (largestSavingsValue < ((Math.round((this.props.offers[i].originalPrice - this.props.offers[i].discountedPrice) * 100)) / 100) &&
       (this.props.offers[i].totalAvail !== this.props.offers[i].claimed)) {
        largestSavingsValue = ((Math.round((this.props.offers[i].originalPrice - this.props.offers[i].discountedPrice) * 100)) / 100);
      }
    };

    // console.log(leastRem, mostPercentSaved, largestSavingsValue)

    if(largestSavingsValue > 100){
      this.state = {text : `$${largestSavingsValue} - Big Savings!`}
    } else if (mostPercentSaved > 80) {
      this.state = {text : `%${mostPercentSaved} - Huge Discount`}
    } else if (leastRem < 25) {
      this.state = {text : 'Hot Item!'}
    } else {
      this.state = {text : `${this.props.deal.views} views`}
    }

  }

  componentDidMount() {

  }


  render() {
    return (
      <div style={highlightStyle}>
      {this.state.text}
      </div>
    );
  }
}