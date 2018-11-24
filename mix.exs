defmodule EctoValidations.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ecto_validations,
      version: "1.0.0",
      elixir: "~> 1.4",
      deps: deps(),
      package: package(),
      name: "EctoValidations",
      description: "validations for ecto",
      docs: [main: "readme", extras: ["README.md"]]
    ]
  end

  defp package do
    [
      maintainers: ["Amit Ozalvo"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/amit115532/ecto-phone-number"
      },
      files: ~w(mix.exs lib LICENSE.md README.md)
    ]
  end

  defp deps do
    [
      {:ecto, ">= 3.0.0"},
      {:ex_phone_number, ">= 0.0.0"},
      {:timex, ">= 0.0.0"}
    ]
  end
end
