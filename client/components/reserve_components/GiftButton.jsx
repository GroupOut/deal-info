import React from 'react';

export default class GiftButton extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }


  render() {
    return (
      <div onClick={this.props.onClick}>
        Herro I am GiftButton
      </div>
    );
  }
}