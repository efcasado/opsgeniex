# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.Condition do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :field,
    :key,
    :not,
    :operation,
    :expectedValue,
    :order
  ]

  @type t :: %__MODULE__{
    :field => String.t,
    :key => String.t | nil,
    :not => boolean() | nil,
    :operation => String.t,
    :expectedValue => String.t | nil,
    :order => integer() | nil
  }

  def decode(value) do
    value
  end
end

