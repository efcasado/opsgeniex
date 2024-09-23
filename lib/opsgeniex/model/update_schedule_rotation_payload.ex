# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.UpdateScheduleRotationPayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :startDate,
    :endDate,
    :type,
    :length,
    :participants,
    :timeRestriction
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :startDate => DateTime.t | nil,
    :endDate => DateTime.t | nil,
    :type => String.t | nil,
    :length => integer() | nil,
    :participants => [Opsgeniex.Model.Recipient.t] | nil,
    :timeRestriction => Opsgeniex.Model.TimeRestrictionInterval.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:startDate, :datetime, nil)
     |> Deserializer.deserialize(:endDate, :datetime, nil)
     |> Deserializer.deserialize(:participants, :list, Opsgeniex.Model.Recipient)
     |> Deserializer.deserialize(:timeRestriction, :struct, Opsgeniex.Model.TimeRestrictionInterval)
  end
end

