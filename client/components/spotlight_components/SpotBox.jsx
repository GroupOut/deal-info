import React from 'react';

let spotboxStyle = {
  width: '32%',
  borderStyle: 'solid',
  borderWidth: '1px',
};

export default class SpotBox extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {
  }


  render() {
    return (
      <div style={spotboxStyle}>
      HELLO WORLD I AM A SPOTBOX
      </div>
    );
  }
}