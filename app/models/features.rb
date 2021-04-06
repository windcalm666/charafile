class Features < ActiveHash::Base
  self.data = [
    { id: 1, name: "長所" },
    { id: 2, name: "弱点" }
  ]

  include ActiveHash::Associations
  has_many :shinobis

end