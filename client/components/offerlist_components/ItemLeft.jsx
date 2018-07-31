import React from 'react';

let leftStyle = {
  width:'6%',
  marginTop:'auto',
  marginBottom:'auto',
  padding:'2px'
}

let checkStyle = {
  color: '#53a318'
}

export default class ItemLeft extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    let leftPlaceholder = '';

    if (this.props.soldOut) {
      leftPlaceholder = <i className="far fa-frown"></i>;
    } else if (this.props.offerId === this.props.selected) {
      leftPlaceholder = <i className="fas fa-check-circle" style={checkStyle}></i>
    } else {
      leftPlaceholder = <i className="far fa-circle"></i>;
    }
    return (
      <div style={leftStyle}>
        {leftPlaceholder}
      </div>
    );
  }
}