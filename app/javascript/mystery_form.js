const addRow = (rows) => {
  let addCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("class") != "mystery-rows hidden"){
      addCount++;
    }
  });
  if (addCount == 2) {
    alert("これ以上追加できません！");
  } else {
    const addBackgroundRow = rows[addCount];
    addBackgroundRow.setAttribute("class", "mystery-rows");
  };
};

const decRow = (rows) => {
  let decCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("class") == "mystery-rows") {
      decCount++
    };
  });
  if (decCount == 0) {
    alert("これ以上削除できません！");
  } else {
    const decMysteryRow = rows[decCount - 1];
    const mysteryName = document.getElementById(`shinobi_mystery_name_${decCount}`);
    const mysterySkill = document.getElementById(`shinobi_mystery_skill_${decCount}`);
    const mysteryEffect = document.getElementById(`shinobi_mystery_effect_${decCount}`);
    const mysteryDirecting = document.getElementById(`shinobi_mystery_directing_${decCount}`);
    mysteryName.value = "";
    mysterySkill.value = "";
    mysteryEffect.value = "";
    mysteryDirecting.value = "";
    decMysteryRow.setAttribute("class", "mystery-rows hidden");
  }
};

const mysteryDisplay = (rows) => {
  const rowsCount = rows.length;
  for(let i = 0; i < rowsCount; i++ ) {
    const displayName = document.getElementById(`shinobi_mystery_name_${i + 1}`);
    if (displayName.innerHTML != "") {
      rows[i].setAttribute("class", "mystery-rows");
    }
  }
};


const mysteryForm = () => {
  const addBtn = document.getElementById("add-mystery-btn");
  const decBtn = document.getElementById("dec-mystery-btn");
  const mysteryRows = document.querySelectorAll(".mystery-rows");

  mysteryDisplay(mysteryRows);

  addBtn.addEventListener('click', () => {
    addRow(mysteryRows);
  });

  decBtn.addEventListener('click', () => {
    decRow(mysteryRows);
  });


};

window.addEventListener('load',mysteryForm);