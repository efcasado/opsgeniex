# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.Maintenance do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :status,
    :rules,
    :time,
    :description
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :status => String.t | nil,
    :rules => [Opsgeniex.Model.MaintenanceRule.t] | nil,
    :time => Opsgeniex.Model.MaintenanceTime.t | nil,
    :description => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:rules, :list, Opsgeniex.Model.MaintenanceRule)
     |> Deserializer.deserialize(:time, :struct, Opsgeniex.Model.MaintenanceTime)
  end
end

