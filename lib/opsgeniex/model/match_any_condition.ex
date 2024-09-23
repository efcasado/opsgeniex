# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.MatchAnyCondition do
  @moduledoc """
  Match any condition filter
  """

  @derive Jason.Encoder
  defstruct [
    :type,
    :conditions
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :conditions => [Opsgeniex.Model.Condition.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:conditions, :list, Opsgeniex.Model.Condition)
  end
end

