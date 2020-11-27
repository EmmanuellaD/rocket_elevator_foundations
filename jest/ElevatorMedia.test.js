const getContent = require('./ElevatorMedia').default;
const axios= require("axios");

test('returns html', () => {
  getContent().then((response) => {
  expect(response).toContain("div");
})
 .catch(function (error) {
    // handle error
  })
});