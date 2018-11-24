defmodule EctoValidations.PhoneNumber do
  @behaviour Ecto.Type

  def type, do: :string

  def cast(string) when is_binary(string) do
    with {:ok, ex_phone_number} <- ExPhoneNumber.parse(string, nil),
         true <- ExPhoneNumber.is_valid_number?(ex_phone_number),
         :mobile <- ExPhoneNumber.get_number_type(ex_phone_number),
         phone <- ExPhoneNumber.format(ex_phone_number, :e164) do
      {:ok, phone}
    else
      _ -> :error
    end
  end

  def cast(_), do: :error

  def load(_), do: :error

  def dump(_), do: :error

  def format(_), do: :error
end
