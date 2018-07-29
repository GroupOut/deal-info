import React from 'react';

let nameStyle = {

}

export default class ItemNameComp extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {

  }

  render() {
    return (
      <div style={nameStyle}>
        {this.props.name}
      </div>
    );
  }
}