import React from 'react';

let leftStyle = {
  width:'6%'
}

export default class ItemLeft extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={leftStyle}>
        Not right
      </div>
    );
  }
}