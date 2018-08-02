import React from 'react';

let nameStyle = {
  padding: '5px 3px 15px 3px'
}

export default class ItemNameComp extends React.Component {
  constructor(props) {
    super(props);
    if(this.props.soldOut){
      nameStyle = {
        padding: '5px 3px 7px 3px'
      }
    }
  }

  componentDidMount() {

  }

  render() {
    let soldOutComp;
    if(this.props.soldOut){
      soldOutComp = <div style={{color:'#9f9f9f'}}> (SOLD OUT)  </div>;
    }
    return (
      <div style={nameStyle}>
        {this.props.name}
        {soldOutComp}
      </div>
    );
  }
}