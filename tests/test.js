let lieDetector = function(){
  return true;
}

test('true still equals true', () => {
  expect(lieDetector('Everything I say is a lie')).toBe(true);
});