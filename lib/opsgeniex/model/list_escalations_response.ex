# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ListEscalationsResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :requestId,
    :took,
    :data
  ]

  @type t :: %__MODULE__{
    :requestId => String.t,
    :took => float(),
    :data => [Opsgeniex.Model.Escalation.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:data, :list, Opsgeniex.Model.Escalation)
  end
end

