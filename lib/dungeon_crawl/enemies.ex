defmodule DungeonCrawl.Enemies do
  alias DungeonCrawl.Character

  def all, do: [
    %Character{
      name: "Ogre",
      description: "A large creature. Big muscles. Angry and hungry!",
      hit_points: 12,
      max_hit_points: 12,
      damage_range: 3..5,
      attack_description: "a hammer"
    },
    %Character{
      name: "Orc",
      description: "A green evil creature. Wears armor. Has an Axe",
      hit_points: 8,
      max_hit_points: 8,
      damage_range: 2..4,
      attack_description: "a axe"
    },
    %Character{
      name: "Goblin",
      description: "A small green creature with ponity ears and nose.",
      hit_points: 4,
      max_hit_points: 4,
      damage_range: 1..3,
      attack_description: "a dagger"
    },
  ]
end
