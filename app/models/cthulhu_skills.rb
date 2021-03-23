class CthulhuSkills
  include ActiveModel::Model
  attr_accessor :name, :job, :age, :sex, :user_id, :str, :con, :pow, :dex, :siz, :edu, :int, :app, :san, :luck, :idea, :knowledge,
  :magick_points, :damage_bonus, :life_points, :origin, :items, :image,
  :cthulhu_id, :find_hidden, :hearing, :first_aid, :therapy, :climbing, :leap, :throwing, :avoidance, :conceal, :hide, :stealth,
  :disguise, :traching, :navigate, :driving, :control_1, :control_1_value, :control_2, :control_2_value, :control_3, :control_3_value,
  :horse_ridding, :heavy_machine, :machine_repair, :electrical_engineering, :computer, :library, :photography, :picking, :swimming,
  :medicine, :chemistry, :pharmacy, :physics, :astronomy, :archeology, :history, :anthropology, :geology, :natural_history,
  :accounting, :law, :occult, :say, :persuade, :credit, :psychology, :price_cut, :native_language, :native_language_value,
  :language_1, :language_1_value, :language_2, :language_2_value, :art, :art_value, :work, :work_value, :biology,
  :punch, :kick, :headbutt, :assembled, :martial_arts, :knife, :japanese_sword, :cane, :handgun, :mythology

  with_options presence: true do
    validates :name
    validates :job
    validates :age
    validates :sex
    validates :str
    validates :con
    validates :pow
    validates :dex
    validates :siz
    validates :edu
    validates :int
    validates :app
    validates :san
    validates :luck
    validates :idea
    validates :knowledge
    validates :magick_points
    validates :damage_bonus
    validates :life_points
    validates :user_id
  end

  def save
    cthulhu = Cthulhu.create(name: name, job: job, age: age, sex: sex, user_id: user_id, str: str, con: con, pow: pow,
    dex: dex, siz: siz, edu: edu, int: int, app: app, san: san, luck: luck, idea: idea, knowledge: knowledge,
    magick_points: magick_points, damage_bonus: damage_bonus, life_points: life_points, origin: origin, items: items)

    CocSkill.create(cthulhu_id: cthulhu.id, find_hidden: find_hidden, hearing: hearing, first_aid: first_aid, therapy: therapy,
    climbing: climbing, leap: leap, throwing: throwing, avoidance: avoidance, conceal: conceal, hide: hide, stealth: stealth,
    disguise: disguise, traching: traching, navigate: navigate, driving: driving, control_1: control_1, control_1_value: control_1_value,
    control_2: control_2, control_2_value: control_2_value, control_3: control_3, control_3_value: control_3_value,
    horse_ridding: horse_ridding, heavy_machine: heavy_machine, machine_repair: machine_repair, electrical_engineering: electrical_engineering,
    computer: computer, library: library, photography: photography, picking: picking, swimming: swimming,
    medicine: medicine, chemistry: chemistry, pharmacy: pharmacy, physics: physics, astronomy: astronomy, archeology: archeology,
    history: history, anthropology: anthropology, geology: geology, natural_history: natural_history,
    accounting: accounting, law: law, occult: occult, say: say, persuade: persuade, credit: credit, psychology: psychology, 
    price_cut: price_cut, native_language: native_language, native_language_value: native_language_value,
    language_1: language_1, language_1_value: language_1_value, language_2: language_2, language_2_value: language_2_value,
    art: art, art_value: art_value, work: work, work_value: work_value, biology: biology,
    punch: punch, kick: kick, headbutt: headbutt, assembled: assembled, martial_arts: martial_arts, knife: knife,
    japanese_sword: japanese_sword, cane: cane, handgun: handgun, mythology: mythology)
  end
      
end