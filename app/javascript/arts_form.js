const addForm = (rows) => {
  let addCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("style") != "display:none") {
      addCount++;
    };
  });
  if (addCount == 7) {
    alert("これ以上追加できません！");
  } else {
    const addArtsRow = rows[addCount];
    addArtsRow.removeAttribute("style", "display:none;");
  };
};

const decForm = (rows) => {
  let decCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("style") != "display:none") {
      decCount++;
    };
  });
  if (decCount == 0) {
    alert("これ以上削除できません！");
  } else {
    const decArtsRow = rows[decCount - 1];
    const artsCheck = document.getElementById(`secret-arts-${decCount}`);
    const artsName = document.getElementById(`shinobi_arts_name_${decCount}`);
    const artsType = document.getElementById(`shinobi_arts_type_${decCount}`);
    const artsSkill = document.getElementById(`shinobi_arts_skill_${decCount}`);
    const artsRange = document.getElementById(`shinobi_arts_range_${decCount}`);
    const artsCost = document.getElementById(`shinobi_arts_cost_${decCount}`);
    const artsEffect = document.getElementById(`arts-effect-${decCount}`);
    artsCheck.checked = false;
    artsName.value = "";
    artsType.value = "1";
    artsSkill.value = "";
    artsSkill.placeholder = "";
    artsRange.value = "";
    artsCost.value = "";
    artsEffect.value = "";
    decArtsRow.setAttribute("style", "display:none");
  };
};

const artsDisplay = () => {
  const artsNames = document.querySelectorAll(".arts-name");
  artsNames.forEach( (arts) => {
    if (arts.value != "") {
      arts.parentElement.parentElement.removeAttribute("style", "display:none");
    };
  });
};

const artsFormEvent = () => {
  const artsRows = document.querySelectorAll(".arts-rows");
  const addBtn = document.getElementById("add-arts-btn");
  const decBtn = document.getElementById("dec-arts-btn");

  addBtn.addEventListener('click', () => {
    addForm(artsRows);
  });

  decBtn.addEventListener('click', () => {
    decForm(artsRows);
  });

  const pageStatus = document.getElementById("create-status");
  if (pageStatus.innerHTML == "作成中" || pageStatus.innerHTML == "編集中") {
    artsDisplay();
  };

};

window.addEventListener('load', artsFormEvent);