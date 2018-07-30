import React from 'react';

let soldStyle = {
  color: '#999'
}

export default class ItemSoldStatus extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    let reservRound;

    if(this.props.sold > 10) {
      reservRound = (Math.floor(this.props.sold/10)*10) + '+'
    } else {
      reservRound = 'a few';
    }

    return (
      <div style={soldStyle}>
        {reservRound} already reserved
      </div>
    );
  }
}