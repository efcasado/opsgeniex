# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.NextOnCall do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_parent,
    :nextOnCallRecipients,
    :exactNextOnCallRecipients,
    :nextOnCallParticipants,
    :exactNextOnCallParticipants
  ]

  @type t :: %__MODULE__{
    :_parent => Opsgeniex.Model.ScheduleMeta.t | nil,
    :nextOnCallRecipients => [Opsgeniex.Model.Participant.t] | nil,
    :exactNextOnCallRecipients => [Opsgeniex.Model.Participant.t] | nil,
    :nextOnCallParticipants => [String.t] | nil,
    :exactNextOnCallParticipants => [String.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:_parent, :struct, Opsgeniex.Model.ScheduleMeta)
     |> Deserializer.deserialize(:nextOnCallRecipients, :list, Opsgeniex.Model.Participant)
     |> Deserializer.deserialize(:exactNextOnCallRecipients, :list, Opsgeniex.Model.Participant)
  end
end

