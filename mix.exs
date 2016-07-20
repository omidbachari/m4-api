defmodule M4Api.Mixfile do
  use Mix.Project

  def project do
    [app: :m4_api,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :cowboy, :plug],
     mod: {M4Api, []},
     env: [cowboy_port: 3000]]
  end

  defp deps do
    [{:cowboy, "~> 1.0.4"},
     {:plug, "~> 1.0"}]
  end
end
