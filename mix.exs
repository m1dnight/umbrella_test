defmodule UmbrellaTest.MixProject do
  use Mix.Project

  def project do
    [
      name: "umbrella_test",
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      generate_destination: "./apps/gen/lib/generated.ex",
      docs: [
        main: "First", # The main page in the docs
        extras: ["README.md"]
      ]
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
    ]
  end
end
