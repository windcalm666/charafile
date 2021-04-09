const sortCharacter = () => {
  const systemSelect = document.getElementById("sort-system-select")
  systemSelect.addEventListener('change', () => {
    const cthulhuList = document.querySelectorAll(".cthulhu");
    const shinobiList = document.querySelectorAll(".shinobi");
    switch(systemSelect.value) {
      case "cthulhu":
        cthulhuList.forEach( (list) => {
          list.removeAttribute("style", "display:none");
        });
        shinobiList.forEach( (list) => {
          list.setAttribute("style","display:none");
        });
        break;
      case "shinobigami":
        cthulhuList.forEach( (list) => {
          list.setAttribute("style", "display:none");
        });
        shinobiList.forEach( (list) => {
          list.removeAttribute("style","display:none");
        });
        break;
      default:
        cthulhuList.forEach( (list) => {
          list.removeAttribute("style", "display:none");
        });
        shinobiList.forEach( (list) => {
          list.removeAttribute("style","display:none");
        });
    }
  });
};

window.addEventListener('load',sortCharacter)