import React from 'react';

let leftStyle = {
  width:'6%'
}

export default class ItemLeft extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    let leftPlaceholder = '';
    if(this.props.offerId === this.props.selected){
      leftPlaceholder = 'Me!'
    } else {
      leftPlaceholder = 'not'
    }
    return (
      <div style={leftStyle}>
        {leftPlaceholder}
      </div>
    );
  }
}