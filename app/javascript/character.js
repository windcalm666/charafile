const display = () => {
  const selectCharacter = document.getElementById("character-select");
  selectCharacter.addEventListener("change",(event) => {
    const characterIdHash = {};
    characterIdHash['id'] = selectCharacter.value;
    const XHR = new XMLHttpRequest();
    XHR.open('POST', '/characters', true);
    XHR.responseType ='json';
    XHR.send(characterIdHash);
    XHR.onload = () => {
      console.log(XHR.status);
      console.log(XHR.response);
    };


  });

};

window.addEventListener('load', display);