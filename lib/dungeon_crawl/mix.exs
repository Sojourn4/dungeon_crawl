defp deps do
  [
    {:dialyxir, "-> 0.5", only: [:dev], runtime: false},
  ]
end

def project do
  [app: :dungeon_crawl,
  version: "0.1.0",
  elixir: "->1.10.2 ",
  build_embedded: Mix.env == :prod,
  start_permanent: Mix.env == :prod,
  deps: deps(),
  dialyzer: [plt_add_apps: [:mix]]
]
end
