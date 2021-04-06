const artsSecret = (value) => {
  const artsSecretBoxes = document.querySelectorAll(".secret-arts");
  const artsNames = document.querySelectorAll(".arts-name");
  let count = 0;
  artsNames.forEach( (arts) => {
    if (arts.value != "") {
      if (value == "秘匿中") {
        if (artsSecretBoxes[count].checked == true) {
        arts.parentElement.parentElement.setAttribute("style", "display:none");
        } else {
        arts.parentElement.parentElement.removeAttribute("style", "display:none");
        };
      } else {
        if (artsSecretBoxes[count].checked == true) {
          arts.parentElement.parentElement.removeAttribute("style", "display:none");
        };
      };
    };
    count++;
  });
};

const secretChange = () => {
  const secretChangeBtn = document.getElementById("secret-change-btn");
 
  if (secretChangeBtn.value == "秘匿中") {
    artsSecret(secretChangeBtn.value);
  };

  secretChangeBtn.addEventListener('click', () => {

    const mysteryForm = document.getElementById("mystery-form");
    const itemForm = document.getElementById("item-form");
    
    if (secretChangeBtn.value == "秘匿中") {
      const result = confirm("GM、もしくはキャラクター所有者ですか？");
      if (result) {
        secretChangeBtn.value = "閲覧中";
        mysteryForm.setAttribute("style", "display:block;");
        itemForm.setAttribute("style", "display:block;");
        artsSecret(secretChangeBtn.value);
      };
    } else {
      secretChangeBtn.value = "秘匿中";
      mysteryForm.setAttribute("style", "display:none;");
      itemForm.setAttribute("style", "display:none;");
      artsSecret(secretChangeBtn.value);
    };
  });
};

const removeCheck = (checkArray) => {
  checkArray.forEach( (box) => {
    box.checked = false;
    box.removeAttribute("disabled", "disabled");
  });
};

const fillWhiteEach = (whiteAttrs) => {
  whiteAttrs.forEach( (element) => {
    element.setAttribute("style", "background-color:#ffffff");
  });
};

const resetSkill = () => {
  const blankCheck0 = document.getElementById("blank-0");
  const blankCheckA = document.getElementById("blank-A");
  const blankCheckB = document.getElementById("blank-B");
  const blankCheckC = document.getElementById("blank-C");
  const blankCheckD = document.getElementById("blank-D");
  const blankCheckE = document.getElementById("blank-E");
  const blankCheckBottom = document.getElementById("blank-bottom");
  const blankSpace = document.querySelectorAll(".blank");

  let checkBoxes = [blankCheck0, blankCheckA, blankCheckB, blankCheckC, blankCheckD, blankCheckE, blankCheckBottom];
  removeCheck(checkBoxes);
  fillWhiteEach(blankSpace);

  const skillLearn = document.querySelectorAll(".skill-learn");
  const skillColumns = document.querySelectorAll(".skill-column");
  skillLearn.forEach( (form) => {
    form.removeAttribute("style", "display:block;");
  });
  skillColumns.forEach( (column) => {
    column.setAttribute("style","background-color:#ffffff; color:black;");
  });

};

const resetArts = () => {
  const artsRows = document.querySelectorAll(".arts-rows");
  const artsRowsCount = artsRows.length;
  for(let i = 1; i < artsRowsCount; i++){
    artsRows[i].setAttribute("style", "display:none");
  }
};

const resetBackground = () => {
  const backgroundRows = document.querySelectorAll(".background-row");
  const backgroundRowsCount = backgroundRows.length;
  for(let i = 1; i < backgroundRowsCount; i++) {
    backgroundRows[i].setAttribute("class", "background-row hidden");
  }
};

const resetMystery = () => {
  const mysteryRows = document.querySelectorAll(".mystery-rows");
  const mysteryRowsCount = mysteryRows.length;
  for(let i = 1; i < mysteryRowsCount; i++){
    mysteryRows[i].setAttribute("class", "mystery-rows hidden")
  };
};

const resetItem = () => {
  const itemRows = document.querySelectorAll(".item-rows");
  const itemRowsCount = itemRows.length;
  for (let i = 3; i < itemRowsCount; i++) {
    itemRows[i].setAttribute("class", "item-rows hidden");
  };
};

const clickEvents = () => {
  const resetBtn = document.getElementById("reset-btn");
  resetBtn.addEventListener('click', () => {
    const result = confirm("全ての情報が消去されますがよろしいですか？");
    if (result) {
      resetSkill();
      resetArts();
      resetBackground();
      resetMystery();
      resetItem();
    };
  });

  secretChange();
};

window.addEventListener('load', clickEvents);