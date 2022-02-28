defmodule ExIban.Mixfile do
  use Mix.Project

  def project do
    [app: :exiban,
     version: "0.0.6",
     elixir: "~> 1.12",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 1.4.18", only: :dev},
      {:ex_doc, "~> 0.28.2", only: :dev}
    ]
  end

  defp description do
    """
    Library for manipulating and validating IBAN account numbers.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Krzysztof Kempiński"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kkempin/exiban"}
    ]
  end
end
