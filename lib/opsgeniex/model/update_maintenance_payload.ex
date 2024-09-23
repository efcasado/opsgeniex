# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.UpdateMaintenancePayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :time,
    :rules
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :time => Opsgeniex.Model.MaintenanceTime.t,
    :rules => [Opsgeniex.Model.MaintenanceRule.t]
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:time, :struct, Opsgeniex.Model.MaintenanceTime)
     |> Deserializer.deserialize(:rules, :list, Opsgeniex.Model.MaintenanceRule)
  end
end

