import React from 'react';
import {shallow, mount, render} from 'enzyme';

import Main from '../client/components/Main.jsx';

// let lieDetector = function(){
//   return true;
// }

describe('<Main />', () => {
  it('should be defined', () => {
    expect(Main).toBeDefined();
  })
  it('should render', () => {
    let mainWrap = shallow(<Main />)
    console.log(mainWrap);
  })
})

// test('true still equals true', () => {
//   expect(lieDetector('Everything I say is a lie')).toBe(true);
// });