const diceRoll3D6 = (attr, trigger) => {
  const resultNums = [3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];
  const diceResult = Math.floor(Math.random() * 16);
  const putsResult = resultNums[diceResult];
  if ( "true" == trigger ) {
    return attr.value = putsResult + 3;
  };
  return attr.value = putsResult;
};

const diceRoll3D63 = (attr) => {
  const resultNums = [6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];
  const diceResult = Math.floor(Math.random() * 16);
  const putsResult = resultNums[diceResult];
  return attr.value = putsResult;

}

const diceRoll2D66 = (attr) => {
  const resultNums = [8,9,10,11,12,13,14,15,16,17,18];
  const diceResult = Math.floor(Math.random() * 11)
  const putsResult = resultNums[diceResult];
  return attr.value = putsResult;
};

const statusCalc = (status, attr, toggle) => {
  if ( "ten" == toggle ) {
    const calcResult = ( status * 10 );
    return attr.value = calcResult;
  } else if ( "twenty" == toggle ) {
    const calcResult = ( status * 20 );
    return attr.value = calcResult;
  } else if ( "twice" == toggle ) {
    const calcResult = ( status * 2 );
    return attr.value = calcResult;
  } else {
    const calcResult = (status * 5);
    if (calcResult >=100) {
      return attr.value = 99;
    } else {
      return attr.value = calcResult;
    };
  };
};

const lifeCalc = (con, siz, lp) => {
  const conNum = Number(con);
  const sizNum = Number(siz);
  const calc = Math.ceil((conNum + sizNum) / 2);
  return lp.value = calc;
};

const damageCalc = (str, siz, db) => {
  const strNum = Number(str);
  const sizNum = Number(siz);
  const dbCalc = strNum + sizNum;
  if (dbCalc <= 12) {
    db.value = "-1D6"
  } else if (dbCalc <= 16) {
    db.value = "-1D4"
  } else if (dbCalc <= 24) {
    db.value = "0"
  } else if (dbCalc <= 32) {
    db.value = "+1D4"
  } else {
    db.value = "+1D6";
  };
};

const twiceStatus = (num, attr) => {
  const calcResult = (num) * 2;
  return attr.value = calcResult;
};

const randomStatus = () => {
  const randomButton = document.getElementById("cthulhu-random-btn");
  randomButton.addEventListener("click", () => {
    const str = document.getElementById("str");
    const con = document.getElementById("con");
    const pow = document.getElementById("pow");
    const dex = document.getElementById("dex");
    const app = document.getElementById("app");
    const siz = document.getElementById("siz");
    const edu = document.getElementById("edu");
    const int = document.getElementById("int");
    const magickPoints = document.getElementById("magick-points");
    diceRoll3D6(str, "false");
    diceRoll3D6(con, "false");
    diceRoll3D6(pow, "false");
    diceRoll3D6(dex, "false");
    diceRoll3D6(app, "false");
    diceRoll3D6(edu, "true");
    diceRoll2D66(siz);
    diceRoll2D66(int);
    magickPoints.value = pow.value;

    const idea = document.getElementById("idea");
    const luck = document.getElementById("luck");
    const knowledge = document.getElementById("knowledge");
    const san = document.getElementById("san");
    const nativeLanguage = document.getElementById("native-language");
    const avoidance = document.getElementById("avoidance");
    const jobPoints = document.getElementById("job-points");
    const hobbyPoints = document.getElementById("hobby-points");
    statusCalc(pow.value, luck, "off");
    statusCalc(pow.value, san, "off");
    statusCalc(edu.value, knowledge, "off");
    statusCalc(int.value, idea, "off");
    statusCalc(edu.value, nativeLanguage, "off");
    statusCalc(dex.value, avoidance, "twice");
    statusCalc(edu.value, jobPoints, "twenty");
    statusCalc(int.value, hobbyPoints, "ten");


    const lifePoints = document.getElementById("life-points");
    lifeCalc(con.value, siz.value, lifePoints);

    const damageBonus = document.getElementById("damage-bonus");
    damageCalc(str.value, siz.value, damageBonus);






  });
};

window.addEventListener("load", randomStatus)