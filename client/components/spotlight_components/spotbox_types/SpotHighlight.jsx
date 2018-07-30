import React from 'react';

let highlightStyle = {
  width: '31%',
  height: '100%',
  borderStyle: 'solid',
  borderWidth: '1px',
  margin:'auto'
};

export default class SpotHighlight extends React.Component {
  constructor(props) {
    super(props);
    // console.log(this.props);
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
      this.state = {text : `$${largestSavingsValue} - Big Savings!`, icon: <i className="fas fa-money-bill-wave"></i>}
    } else if (mostPercentSaved > 80) {
      this.state = {text : ` %${mostPercentSaved} - Huge Discount`, icon: <i className="fas fa-piggy-bank"></i>}
    } else if (leastRem < 25) {
      this.state = {text : 'Hot Item!', icon: <i className="fas fa-burn"></i>}
    } else {
      this.state = {text : `${this.props.deal.views} views`, icon: <i className="far fa-eye"></i>}
    }

  }

  componentDidMount() {

  }


  render() {
    let extraBr = <span/>
    if (this.state.icon) {
      extraBr = <br/>;
    }

    return (
      <div style={highlightStyle}>
      {this.state.icon}
      {extraBr}
      {this.state.text}
      </div>
    );
  }
}