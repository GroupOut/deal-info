import React from 'react';

import Spotlight from './spotlight_components/Spotlight.jsx';
import Offerlist from './offerlist_components/Offerlist.jsx';
import Reserve from './reserve_components/Reserve.jsx';
import ShareLinks from './share_components/ShareLinks.jsx';

const countStyle = {
  borderStyle: 'solid',
  borderWidth: '1px',
  width: '400px'
};

export default class Main extends React.Component {
  constructor() {
    super();

    this.state = {
      time: this.secondsToTime(1860),
      seconds: 1860
    };

    this.timer = 0;
    this.countDown = this.countDown.bind(this);
  }

  secondsToTime(secs) {
    let hours = Math.floor(secs / (60 * 60));
    let divisorForMinutes = secs % (60 * 60);
    let minutes = Math.floor(divisorForMinutes / 60);
    let divisorForSeconds = divisorForMinutes % 60;
    let seconds = Math.ceil(divisorForSeconds);

    let obj = {
      'h': hours,
      'm': minutes,
      's': seconds
    };
    return obj;
  }

  componentDidMount() {
    this.timer = setInterval(this.countDown, 1000);
  }

  countDown() {
    let seconds = this.state.seconds - 1;
    this.setState({
      time: this.secondsToTime(seconds),
      seconds: seconds
    });

    if (seconds === 0) {
      clearInterval(this.timer);
    }
  }

  render() {
    return (
      <div style={countStyle}>
        <Spotlight/>
        <Offerlist offers={[1,2,3]}/>
        <Reserve/>
        <ShareLinks/>
        Time left: {this.state.time.m}m {this.state.time.s}s
      </div>
    );
  }
}