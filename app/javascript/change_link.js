const linkChange = () => {
  const systemSelect = document.getElementById("system-select")
  systemSelect.addEventListener('change',() => {
    const newLink = document.getElementById("new-character-link")
    if (systemSelect.value == "cthulhu") {
      newLink.href = "/cthulhus/new"
    } else if (systemSelect.value == "shinobigami") {
      newLink.href = "/shinobis/new"
    } else {
      newLink.href = "/"
    };
  });
};

window.addEventListener('load', linkChange);