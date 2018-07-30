import React from 'react';

let timerStyle = {
  width: '31%',
  height: '100%',
  borderStyle: 'solid #efefef',
  borderWidth: '1px',
  margin: '0 0 0 1%',
  textAlign: 'center',
  padding: '4px'

};

export default class SpotTimer extends React.Component {
  constructor(props) {
    super(props);

    let timeRemCalc = Math.floor((Date.parse(this.props.expiration) - Date.parse(new Date())) / 1000);
    if (timeRemCalc >= 1) {
      this.state = {
        time: this.secondsToTime(timeRemCalc),
        seconds: timeRemCalc
      };
    } else {
      this.state = {
        time: this.secondsToTime(0),
        seconds: 0
      };
    }
    this.timer = 0;
    this.countDown = this.countDown.bind(this);
  }

  secondsToTime(secs) {
    let days = Math.floor(secs / (60 * 60 * 24));
    let divisorForHours = secs % ((60 * 60 * 24));
    let hours = Math.floor(divisorForHours / (60 * 60));
    let divisorForMinutes = secs % (60 * 60);
    let minutes = Math.floor(divisorForMinutes / 60);
    let divisorForSeconds = divisorForMinutes % 60;
    let seconds = Math.ceil(divisorForSeconds);

    let obj = {
      'd': days,
      'h': hours,
      'm': minutes,
      's': seconds
    };
    return obj;
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

  componentDidMount() {
    this.timer = setInterval(this.countDown, 1000);
  }

  calcTimeRem() {
    if(this.props.expiration !== -1){
      let timeRemCalc = Math.floor((Date.parse(this.props.expiration) - Date.parse(new Date()))/100);
      if(timeRemCalc >= 0) {
        this.setState({
          seconds: timeRemCalc,
          time: this.secondsToTime(timeRemCalc)
        });
      }
      console.log(timeRemCalc);
    } else {
      this.state = {
        time: this.secondsToTime(1860),
        seconds: 1860
      };
    }
  }


  render() {
    let timerText;
    if(this.state.time.d > 14) {
      timerText = ' Limited Time Remaining'
    } else {
      timerText = `Time left: ${this.state.time.d}d ${this.state.time.h}h ${this.state.time.m}m ${this.state.time.s}s`
    }

    return (
      <div style={timerStyle}>
      <i className="fas fa-stopwatch"></i>
        {timerText}
      </div>
    );
  }
}