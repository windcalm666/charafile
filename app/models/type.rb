class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: "攻撃" },
    { id: 2, name: "サポート" },
    { id: 3, name: "装備" }
  ]

  include ActiveHash::Associations
  has_many :shinobis
end