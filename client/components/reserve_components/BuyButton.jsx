import React from 'react';

let buyStyle = {
  margin: '2%',
  padding: '6px',
  textAlign: 'center',
  backgroundColor: '#53a318',
  borderRadius: '2px',
  color: '#fff',
  cursor:'pointer',
  fontSize: "16px",
  fontWeight: "200"
}

export default class BuyButton extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props);
    if(this.props.expired) {
      buyStyle.backgroundColor = '#ff6400';
    }
  }

  componentDidMount() {

  }


  render() {
    let buyText;
    if(this.props.expired) {
      buyText = 'Deal Expired :(';
    } else {
      buyText = 'Buy';
    }
    return (
      <div onClick={this.props.onClick} style={buyStyle}>
        {buyText}
      </div>
    );
  }
}