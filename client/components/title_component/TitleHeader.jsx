import React from 'react';
import $ from 'jquery';

const titleStyle = {
  width : '100%',
  margin: '30px 7.5% 30px 7.5%',
  fontFamily: "OpenSans, “Helvetica Neue”, Helvetica, Tahoma, Arial, FreeSans, sans-serif",
  fontSize: '24px',
  fontWeight: '300'
};


export default class title extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props;

  }

  render() {
    if (this.state.dealStatus.id !== void(0)) {
      return (
        <div style={titleStyle}>
          {this.state.dealStatus.name}
          {/*this.state.dealStatus*/}
        </div>
      );
    } else {
      return (
        <div style={titleStyle}>
          Loading... Please wait...

        </div>
      );
    }
  }
}