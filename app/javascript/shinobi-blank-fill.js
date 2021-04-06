const fillBlackEach = (blackAttrs) => {
  blackAttrs.forEach( (element) => {
    element.setAttribute("style", "background-color:black");
  });
};

const fillWhiteEach = (whiteAttrs) => {
  whiteAttrs.forEach( (element) => {
    element.setAttribute("style", "background-color:#ffffff");
  });
};

const selectFill = (selectValue, blackAttrs, bwAttrs, whiteAttrs1, whiteAttrs2, whiteAttrs3) => {
  if (selectValue == 1 || selectValue == 6) {
    fillBlackEach(blackAttrs);
    fillWhiteEach(bwAttrs);
    fillWhiteEach(whiteAttrs1);
    fillWhiteEach(whiteAttrs2);
    fillWhiteEach(whiteAttrs3);
  } else {
    fillBlackEach(blackAttrs);
    fillBlackEach(bwAttrs);
    fillWhiteEach(whiteAttrs1);
    fillWhiteEach(whiteAttrs2);
    fillWhiteEach(whiteAttrs3);
  };
};

const removeCheck = (checkArray) => {
  checkArray.forEach( (box) => {
    box.checked = false;
    box.removeAttribute("disabled", "disabled");
  });
};

const fillSwitch = (selectValue, blankSpaceA, blankSpaceB, blankSpaceC, blankSpaceD, blankSpaceE, blankCheckA, blankCheckB, blankCheckC, blankCheckD, blankCheckE) => {
  switch (selectValue) {
    case "1":
      blankCheckA.checked = true;
      blankCheckA.setAttribute("disabled", "disabled");
      selectFill(selectValue, blankSpaceA, blankSpaceB, blankSpaceC, blankSpaceD, blankSpaceE);
      let checkBoxBCDE = [blankCheckB, blankCheckC, blankCheckD, blankCheckE];
      removeCheck(checkBoxBCDE);
      break;
    
    case "2":
      blankCheckA.checked = true;
      blankCheckB.checked = true;
      blankCheckA.setAttribute("disabled", "disabled")
      blankCheckB.setAttribute("disabled", "disabled")
      selectFill(selectValue, blankSpaceA, blankSpaceB, blankSpaceC, blankSpaceD, blankSpaceE);
      let checkBoxCDE = [blankCheckC, blankCheckD, blankCheckE];
      removeCheck(checkBoxCDE);
      break;

    case "3":
      blankCheckB.checked = true;
      blankCheckC.checked = true;
      blankCheckB.setAttribute("disabled", "disabled")
      blankCheckC.setAttribute("disabled", "disabled")
      selectFill(selectValue, blankSpaceB, blankSpaceC, blankSpaceD, blankSpaceE,  blankSpaceA);
      let checkBoxDEA = [blankCheckD, blankCheckE, blankCheckA];
      removeCheck(checkBoxDEA);
      break;

    case "4":
      blankCheckC.checked = true;
      blankCheckD.checked = true;
      blankCheckC.setAttribute("disabled", "disabled")
      blankCheckD.setAttribute("disabled", "disabled")
      selectFill(selectValue, blankSpaceC, blankSpaceD, blankSpaceE,  blankSpaceA, blankSpaceB);
      let checkBoxEAB = [blankCheckE, blankCheckA, blankCheckB];
      removeCheck(checkBoxEAB);

      break;

    case "5":
      blankCheckD.checked = true;
      blankCheckE.checked = true;
      blankCheckD.setAttribute("disabled", "disabled")
      blankCheckE.setAttribute("disabled", "disabled")
      selectFill(selectValue, blankSpaceD, blankSpaceE,  blankSpaceA, blankSpaceB, blankSpaceC);
      let checkBoxABC = [blankCheckA, blankCheckB, blankCheckC];
      removeCheck(checkBoxABC);
      break;

    case "6":
      blankCheckE.checked = true;
      blankCheckE.setAttribute("disabled", "disabled")
      selectFill(selectValue, blankSpaceE,  blankSpaceA, blankSpaceB, blankSpaceC, blankSpaceD);
      let checkBoxABCD = [blankCheckA, blankCheckB, blankCheckC, blankCheckD];
      removeCheck(checkBoxABCD);
      break;

    default:
      let checkBoxs = [blankCheckA, blankCheckB, blankCheckC, blankCheckD, blankCheckE];
      removeCheck(checkBoxs);
      fillWhiteEach(blankSpaceA);
      fillWhiteEach(blankSpaceB);
      fillWhiteEach(blankSpaceC);
      fillWhiteEach(blankSpaceD);
      fillWhiteEach(blankSpaceE);
    break;
  }
}



const fillBlank = () => {
  const selectSchool = document.getElementById("shinobi-school-select");
  const blankCheck0 = document.getElementById("blank-0");
  const blankCheckA = document.getElementById("blank-A");
  const blankCheckB = document.getElementById("blank-B");
  const blankCheckC = document.getElementById("blank-C");
  const blankCheckD = document.getElementById("blank-D");
  const blankCheckE = document.getElementById("blank-E");
  const blankCheckBottom = document.getElementById("blank-bottom");

  const blankSpace0 = document.querySelectorAll(".blank-space-0");
  const blankSpaceA = document.querySelectorAll(".blank-space-A");
  const blankSpaceB = document.querySelectorAll(".blank-space-B");
  const blankSpaceC = document.querySelectorAll(".blank-space-C");
  const blankSpaceD = document.querySelectorAll(".blank-space-D");
  const blankSpaceE = document.querySelectorAll(".blank-space-E");
  const blankSpaceBottom = document.getElementById("blank-space-bottom");

  fillSwitch(selectSchool.value, blankSpaceA, blankSpaceB, blankSpaceC, blankSpaceD, blankSpaceE, blankCheckA, blankCheckB, blankCheckC, blankCheckD, blankCheckE)

  selectSchool.addEventListener('change', () => {
    fillSwitch(selectSchool.value, blankSpaceA, blankSpaceB, blankSpaceC, blankSpaceD, blankSpaceE, blankCheckA, blankCheckB, blankCheckC, blankCheckD, blankCheckE)
  });

  blankCheck0.addEventListener('change', () => {
    if (blankCheck0.checked) {
    fillBlackEach(blankSpace0);
    } else {
      fillWhiteEach(blankSpace0);
    };
  });

  blankCheckA.addEventListener('change', () => {
    if (blankCheckA.checked) {
    fillBlackEach(blankSpaceA);
    } else {
      fillWhiteEach(blankSpaceA);
    };
  });

  blankCheckB.addEventListener('change', () => {
    if (blankCheckB.checked) {
    fillBlackEach(blankSpaceB);
    } else {
      fillWhiteEach(blankSpaceB);
    };
  });

  blankCheckC.addEventListener('change', () => {
    if (blankCheckC.checked) {
    fillBlackEach(blankSpaceC);
    } else {
      fillWhiteEach(blankSpaceC);
    };
  });

  blankCheckD.addEventListener('change', () => {
    if (blankCheckD.checked) {
    fillBlackEach(blankSpaceD);
    } else {
      fillWhiteEach(blankSpaceD);
    };
  });

  blankCheckE.addEventListener('change', () => {
    if (blankCheckE.checked) {
    fillBlackEach(blankSpaceE);
    } else {
      fillWhiteEach(blankSpaceE);
    };
  });

  blankCheckBottom.addEventListener('change', () => {
    if (blankCheckBottom.checked) {
      blankSpaceBottom.setAttribute("style", "background-color:black");
    } else {
      blankSpaceBottom.setAttribute("style", "background-color:#ffffff");
    };
  });
  
};

window.addEventListener('load', fillBlank);