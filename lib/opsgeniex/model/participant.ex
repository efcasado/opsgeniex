# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.Participant do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :type,
    :onCallParticipants,
    :forwardedFrom,
    :escalationTime,
    :notifyType
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :type => String.t | nil,
    :onCallParticipants => [Opsgeniex.Model.Participant.t] | nil,
    :forwardedFrom => Opsgeniex.Model.Participant.t | nil,
    :escalationTime => integer() | nil,
    :notifyType => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:onCallParticipants, :list, Opsgeniex.Model.Participant)
     |> Deserializer.deserialize(:forwardedFrom, :struct, Opsgeniex.Model.Participant)
  end
end

