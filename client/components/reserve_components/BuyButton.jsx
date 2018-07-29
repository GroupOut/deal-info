import React from 'react';

export default class BuyButton extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }


  render() {
    return (
      <div onClick={this.props.onClick}>
        Herro I am BuyButton
      </div>
    );
  }
}