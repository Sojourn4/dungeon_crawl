defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: [], trigger: nil, prob: nil

  def all, do: [
    %Room{
      description: "You can see the light of day. You found an exit!",
      actions: [forward()],
      trigger: Triggers.Exit,
      prob: 35
    },
    %Room{
      description: "You can see an Enemy blocking your path.",
      actions: [forward()],
      trigger: Triggers.Enemy,
      prob: 75
    },
    %Room{
      description: "You find a quiet place, looks safe for a little nap.",
      actions: [forward(), rest()],
      trigger: Triggers.Rest,
      prob: 50
    },
  ]

end
