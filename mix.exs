defmodule EctoPhoneNumber.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ecto_phone_number_new,
      version: "0.1.1",
      elixir: "~> 1.4",
      deps: deps(),
      package: package(),
      name: "EctoPhoneNumber_new",
      description: "Phone number type with validation and formatting for Ecto",
      docs: [main: "readme", extras: ["README.md"]]
    ]
  end

  defp package do
    [
      maintainers: ["Karol Słuszniak", "Amit Ozalvo"],
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
      {:ex_phone_number, ">= 0.0.0"}
    ]
  end
end
