import React from 'react';

let reviewsStyle = {
  width: '31%',
  height: '100%',
  borderStyle: 'solid #efefef',
  borderWidth: '1px',
  margin:'0 1% 0 0',
  textAlign: 'center',
  padding: '10px',
  fontSize: "14px",
  fontWeight: "400"

};

let goldStyle = {color:'#f1eb47'}

export default class SpotReviews extends React.Component {
  constructor(props) {
    super(props);
    let starRatingIcons = [];
    for (let i = 1; i < 6; i++) {
      if(i <= this.props.deal.rating){
        starRatingIcons.push(<i className="fas fa-star" style={goldStyle} key={'star'+i}></i>);
      } else if (i - .5 <= this.props.deal.rating) {
        starRatingIcons.push(<i className="fas fa-star-half-alt" style={goldStyle} key={'star'+i}></i>);
      } else if (i > this.props.deal.rating) {
        starRatingIcons.push(<i className="far fa-star" key={'star'+i}></i>);
      } else {
        console.log('something went horribly wrong...')
      }
    }
    this.state = {
      icons: starRatingIcons
    }
  }

  componentDidMount() {

  }


  render() {

    return (
      <div style={reviewsStyle}>
        <div title={this.props.deal.rating}>{this.state.icons} </div>
        <div>{this.props.deal.reviewCount} reviews </div>
      </div>
    );
  }
}