import React from 'react';
import SpotBox from './SpotBox.jsx';

let spotStyle = {
  'display': 'flex',
  'justifyContent':'space-between'
};

export default class Spotlight extends React.Component {
  constructor() {
    super();
  }

  componentDidMount() {

  }


  render() {
    return (
      <div style={spotStyle}>
      <SpotBox/>
      <SpotBox/>
      <SpotBox/>
      </div>
    );
  }
}