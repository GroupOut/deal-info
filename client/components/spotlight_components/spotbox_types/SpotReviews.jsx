import React from 'react';

let reviewsStyle = {
  width: '31%',
  borderStyle: 'solid',
  borderWidth: '1px',
  margin:'0 1% 0 0'
};

export default class SpotReviews extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
  }


  render() {
    return (
      <div style={reviewsStyle}>
        <div>Rated:{this.props.deal.rating} </div>
        <div>{this.props.deal.reviewCount} reviews </div>
      </div>
    );
  }
}