use Timex

defmodule EctoValidations.Timezone do
  @behaviour Ecto.Type

  def type, do: :string

  def cast(timezone) when is_bitstring(timezone) do
    if Timex.Timezone.exists?(timezone) do
      {:ok, timezone}
    else
      :error
    end
  end

  def cast(_), do: :error

  def dump(_), do: :error

  def load(_), do: :error
  def format(_), do: :error
end
