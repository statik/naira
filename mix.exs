defmodule Naira.Mixfile do
  use Mix.Project

  def project do
    [app: :naira,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Naira, []},
     applications: [:mnesia, :phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "0.5.0"},
     {:cowboy, "~> 1.0"},
		 {:timex, "~>0.13.1"}, 
		 {:geo, "~> 0.8.0"},
		 {:amnesia, github: "meh/amnesia", tag: :master}]
  end
end
