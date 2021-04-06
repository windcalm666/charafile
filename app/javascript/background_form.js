const addForm = (rows) => {
  let addCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("class") != "background-row hidden"){
      addCount++;
    }
  });
  if (addCount == 10) {
    alert("これ以上追加できません！");
  } else {
    const addBackgroundRow = rows[addCount];
    addBackgroundRow.setAttribute("class", "background-row");
  };
};

const decForm = (rows) => {
  let decCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("class") == "background-row") {
      decCount++
    };
  });
  if (decCount == 0) {
    alert("これ以上削除できません！");
  } else {
    const decBackgroundRow = rows[decCount - 1];
    const backgroundName = document.getElementById(`shinobi_background_${decCount}`);
    const backgroundFeatures = document.getElementById(`shinobi_background_features_${decCount}`);
    const backgroundPoint = document.getElementById(`shinobi_background_point_${decCount}`);
    const backgroundEffect = document.getElementById(`shinobi_background_effect_${decCount}`);
    backgroundName.value = "";
    backgroundFeatures.value = "1";
    backgroundPoint.value = "";
    backgroundEffect.value = "";
    decBackgroundRow.setAttribute("class", "background-row hidden");
  }
};

const displayBackground = () => {
  const backgroundNames = document.querySelectorAll(".background-name");
  backgroundNames.forEach( (background) => {
    if (background.value != "") {
      background.parentElement.parentElement.setAttribute("class", "background-row");
    };
  });
};

const backgroundForm = () => {
  const backgroundRows = document.querySelectorAll(".background-row");
  const addBtn = document.getElementById("add-background-btn");
  const decBtn = document.getElementById("dec-background-btn");
  
  addBtn.addEventListener('click', () => {
    addForm(backgroundRows);
  });

  decBtn.addEventListener('click', () => {
    decForm(backgroundRows);
  });

  displayBackground();

};

window.addEventListener('load', backgroundForm);