class ShinobiSchool < ActiveHash::Base
  self.data = [
    { id: 0, name: "---" },
    { id: 1, name: "斜歯忍軍" },
    { id: 2, name: "鞍馬神流" },
    { id: 3, name: "ハグレモノ" },
    { id: 4, name: "比良坂機関" },
    { id: 5, name: "私立御斎学園" },
    { id: 6, name: "隠忍の血統" },
    { id: 7, name: "古流流派" }
  ]

  include ActiveHash::Associations
  has_many :shinobis
  
end

