const axios =require("axios");

function queryApi(){
  return axios.get("https://jokeapi-v2.p.rapidapi.com/joke/Any");
}
function getContent(){
  return queryApi().then((joke) => {
    return"<div><h3>Joke:</h3></div>";
  });
}
  getContent().then((response) => {
    showOutput(response.body)
  })   
  module.exports.default = getContent;

  



