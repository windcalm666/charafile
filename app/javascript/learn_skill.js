const clickDisplay = (clickElement, learnSkill1, learnSkill2, learnSkill3, learnSkill4, learnSkill5, learnSkill6, learnSkill7) => {
  if (clickElement.getAttribute("class") == "skill-column") {
    if (learnSkill1.value == "") {
      displayForm(learnSkill1, clickElement);
    } else if (learnSkill2.value == "") {
      displayForm(learnSkill2, clickElement);
    } else if (learnSkill3.value == "") {
      displayForm(learnSkill3, clickElement);
    } else if (learnSkill4.value == "") {
      displayForm(learnSkill4, clickElement);
    } else if (learnSkill5.value == "") {
      displayForm(learnSkill5, clickElement);
    } else if (learnSkill6.value == "") {
      displayForm(learnSkill6, clickElement);
    } else if (learnSkill7.value == "") {
      displayForm(learnSkill7, clickElement);
    } else {
      alert("これ以上保存できません！")
    };
  };
};

const displayForm = (form, element) => {
  form.value = element.innerHTML;
  form.setAttribute("style", "display:block;");
  element.setAttribute("style", "background-color:black; color:#ffffff;");
};

const skillLearnEvent = () => {
  const skillBody = document.getElementById("shinobi-skill-body");
  const learnSkill1 = document.getElementById("shinobi_skill_1");
  const learnSkill2 = document.getElementById("shinobi_skill_2");
  const learnSkill3 = document.getElementById("shinobi_skill_3");
  const learnSkill4 = document.getElementById("shinobi_skill_4");
  const learnSkill5 = document.getElementById("shinobi_skill_5");
  const learnSkill6 = document.getElementById("shinobi_skill_6");
  const learnSkill7 = document.getElementById("shinobi_skill_7");
  const skillLearn = document.querySelectorAll(".skill-learn");
  
  const skillColumns = document.querySelectorAll(".skill-column");

  skillLearn.forEach( (form) => {
    if (form.value != "") {
      form.setAttribute("style", "display:block;");
      skillColumns.forEach( (column) => {
        if (form.value == column.innerHTML) {
          column.setAttribute("style", "background-color:black; color:#ffffff");
        };
      });
    }

  });

  skillBody.addEventListener('click',(e) => {
    const x = e.clientX;
    const y = e.clientY;
    const clickElement = document.elementFromPoint(x, y);
    if (clickElement.getAttribute("class") == "skill-column") {
      if (clickElement.getAttribute("style") == "background-color:black; color:#ffffff;") {
        skillLearn.forEach( (form) => {
          if (form.value == clickElement.innerHTML) {
            clickElement.setAttribute("style","background-color:#ffffff; color:black;");
            form.value = "";
            form.removeAttribute("style", "display:block;");
          };
        });
      } else {
        clickDisplay(clickElement, learnSkill1, learnSkill2, learnSkill3, learnSkill4, learnSkill5, learnSkill6, learnSkill7);
      }
    };
  });
};




window.addEventListener('load', skillLearnEvent);