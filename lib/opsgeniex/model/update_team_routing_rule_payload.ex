# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.UpdateTeamRoutingRulePayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :criteria,
    :timeRestriction,
    :notify,
    :timezone
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :criteria => Opsgeniex.Model.Filter.t | nil,
    :timeRestriction => Opsgeniex.Model.TimeRestrictionInterval.t | nil,
    :notify => Opsgeniex.Model.Recipient.t | nil,
    :timezone => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:criteria, :struct, Opsgeniex.Model.Filter)
     |> Deserializer.deserialize(:timeRestriction, :struct, Opsgeniex.Model.TimeRestrictionInterval)
     |> Deserializer.deserialize(:notify, :struct, Opsgeniex.Model.Recipient)
  end
end

