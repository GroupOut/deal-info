import React from 'react';

let nameStyle = {
  padding: '5px 3px 15px 3px'
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