# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ListIncidentsResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :requestId,
    :took,
    :data,
    :paging
  ]

  @type t :: %__MODULE__{
    :requestId => String.t,
    :took => float(),
    :data => [Opsgeniex.Model.BaseIncident.t] | nil,
    :paging => Opsgeniex.Model.PageDetails.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:data, :list, Opsgeniex.Model.BaseIncident)
     |> Deserializer.deserialize(:paging, :struct, Opsgeniex.Model.PageDetails)
  end
end

