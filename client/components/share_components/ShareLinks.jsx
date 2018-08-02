import React from 'react';

let shareStyle = {
  color: '#cfcfcf',
  padding: "5px"
}

export default class ShareLinks extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }



  render() {
    return (
      <div style={shareStyle}>
        Share this deal
      </div>
    );
  }
}