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
  }

  componentDidMount() {

  }


  render() {
    return (
      <div onClick={this.props.onClick} style={buyStyle}>
        Buy
      </div>
    );
  }
}