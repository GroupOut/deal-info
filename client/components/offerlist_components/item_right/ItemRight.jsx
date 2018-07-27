import React from 'react';

let rightStyle = {
  width: '12%'
}

export default class ItemRight extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={rightStyle}>
        RIGHT
      </div>
    );
  }
}