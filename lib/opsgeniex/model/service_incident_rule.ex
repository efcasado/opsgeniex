# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ServiceIncidentRule do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :conditionMatchType,
    :conditions,
    :incidentProperties,
    :order
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :conditionMatchType => String.t | nil,
    :conditions => [Opsgeniex.Model.ServiceIncidentCondition.t] | nil,
    :incidentProperties => Opsgeniex.Model.ServiceIncidentProperties.t | nil,
    :order => integer() | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:conditions, :list, Opsgeniex.Model.ServiceIncidentCondition)
     |> Deserializer.deserialize(:incidentProperties, :struct, Opsgeniex.Model.ServiceIncidentProperties)
  end
end

