# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AlertFilter do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :conditionMatchType,
    :conditions
  ]

  @type t :: %__MODULE__{
    :conditionMatchType => String.t | nil,
    :conditions => [Opsgeniex.Model.CallbackCondition.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:conditions, :list, Opsgeniex.Model.CallbackCondition)
  end
end

