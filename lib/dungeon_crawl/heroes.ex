defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  def all, do: [
    %Character{
      name: "Knight",
      description: "Knight is a Tank",
      hit_points: 18,
      max_hit_points: 18,
      damage_range: 4..5,
      attack_description: "Long Sword"
    },
    %Character{
      name: "Wizard",
      description: "Wizard is Spell DPS",
      hit_points: 8,
      max_hit_points: 8,
      damage_range: 6..10,
      attack_description: "Firebolt"
    },
    %Character{
      name: "Rogue",
      description: "Rogue is a Berguler",
      hit_points: 12,
      max_hit_points: 12,
      damage_range: 1..12,
      attack_description: "Dagger"
    },
    %Character{
      name: "Priest",
      description: "Priest is a Healer",
      hit_points: 15,
      max_hit_points: 15,
      damage_range: 3..10,
      attack_description: "Smight",
      heal: 4..8
    },
  ]
end
