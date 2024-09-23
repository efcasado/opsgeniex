# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.Schedule do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :description,
    :timezone,
    :enabled,
    :ownerTeam,
    :rotations
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :description => String.t | nil,
    :timezone => String.t | nil,
    :enabled => boolean() | nil,
    :ownerTeam => Opsgeniex.Model.TeamMeta.t | nil,
    :rotations => [Opsgeniex.Model.ScheduleRotation.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ownerTeam, :struct, Opsgeniex.Model.TeamMeta)
     |> Deserializer.deserialize(:rotations, :list, Opsgeniex.Model.ScheduleRotation)
  end
end

