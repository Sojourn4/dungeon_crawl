defmodule DungeonCrawl.Room.Triggers.Rest do
  @behaviour DungeonCrawl.Room.Trigger

  alias Mix.Shell.IO, as: Shell

  def run(character, %DungeonCrawl.Room.Action{id: :rest}) do
    Shell.info("You decide to take a nap...")
    updated_char = DungeonCrawl.Character.heal(character, character.max_hit_points * 0.5)

    {updated_char, :rest}
  end

  def run(character, %DungeonCrawl.Room.Action{id: :forward}) do
    Shell.info("You decide it's time to move forward!")

    {character, :forward}
  end
end
