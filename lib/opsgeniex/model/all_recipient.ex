# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AllRecipient do
  @moduledoc """
  All recipient
  """

  @derive Jason.Encoder
  defstruct [
    :type,
    :id
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :id => String.t | nil
  }

  def decode(value) do
    value
  end
end

