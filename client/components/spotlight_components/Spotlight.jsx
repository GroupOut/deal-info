import React from 'react';
import SpotHighlight from './spotbox_types/SpotHighlight.jsx';
import SpotReviews from './spotbox_types/SpotReviews.jsx';
import SpotTimer from './spotbox_types/SpotTimer.jsx';


let spotStyle = {
  'display': 'flex',
  'justifyContent':'space-between'
};

export default class Spotlight extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }


  render() {
    return (
      <div style={spotStyle}>
        <SpotTimer expiration={this.props.deal.expiration}/>
        <SpotHighlight deal={this.props.deal} offers={this.props.offers}/>
        <SpotReviews deal={this.props.deal}/>
      </div>
    );
  }
}