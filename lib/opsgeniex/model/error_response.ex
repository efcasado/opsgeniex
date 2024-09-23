# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ErrorResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :requestId,
    :took,
    :message,
    :code,
    :responseHeaders
  ]

  @type t :: %__MODULE__{
    :requestId => String.t,
    :took => float(),
    :message => String.t | nil,
    :code => integer() | nil,
    :responseHeaders => %{optional(String.t) => [String.t]} | nil
  }

  def decode(value) do
    value
  end
end

