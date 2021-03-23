class System < ActiveHash::Base
  self.data = [
    { id: 0, name: "システムを選択" },
    { id: 1, name: "クトゥルフ神話TRPG" },
    { id: 2, name: "ソードワールド2.5" },
    { id: 3, name: "シノビガミ" }
  ]

  include ActiveHash::Associations
  
end
