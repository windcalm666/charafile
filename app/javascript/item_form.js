const addRow = (rows) => {
  let addCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("class") != "item-rows hidden"){
      addCount++;
    }
  });
  if (addCount == 5) {
    alert("これ以上追加できません！");
  } else {
    const addItemRow = rows[addCount];
    addItemRow.setAttribute("class", "item-rows");
  };
};

const decROw = (rows) => {
  let decCount = 0;
  rows.forEach( (row) => {
    if (row.getAttribute("class") == "item-rows") {
      decCount++
    };
  });
  if (decCount == 0) {
    alert("これ以上削除できません！");
  } else {
    const decItemRow = rows[decCount - 1];
    const itemName = document.getElementById(`shinobi_item_name_${decCount}`);
    const itemNumber = document.getElementById(`shinobi_item_number_${decCount}`);
    const itemEffect = document.getElementById(`shinobi_item_effect_${decCount}`);
    itemName.value = "";
    itemNumber.value = "";
    itemEffect.value = "";
    decItemRow.setAttribute("class", "item-rows hidden");
  }
};

const displayItem = (rows) => {
  const rowsCount = rows.length;
  for (let i = 0; i < rowsCount; i++) {
    const displayName = document.getElementById(`shinobi_item_name_${i + 1}`);
    if (displayName.value != "") {
      rows[i].setAttribute("class", "item-rows");
    };
  };
};

const itemForm = () => {
  const addBtn = document.getElementById("add-item-btn");
  const decBtn = document.getElementById("dec-item-btn");
  const itemRows = document.querySelectorAll(".item-rows");

  displayItem(itemRows);


  addBtn.addEventListener('click', () => {
    addRow(itemRows);
  });

  decBtn.addEventListener('click', () => {
    decROw(itemRows);
  });

};

window.addEventListener('load', itemForm);