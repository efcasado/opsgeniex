# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.Incident do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :tinyId,
    :message,
    :status,
    :isSeen,
    :tags,
    :createdAt,
    :updatedAt,
    :source,
    :owner,
    :priority,
    :responders,
    :ownerTeam,
    :extraProperties,
    :requestId
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :tinyId => String.t | nil,
    :message => String.t | nil,
    :status => String.t | nil,
    :isSeen => boolean() | nil,
    :tags => [String.t] | nil,
    :createdAt => DateTime.t | nil,
    :updatedAt => DateTime.t | nil,
    :source => String.t | nil,
    :owner => String.t | nil,
    :priority => String.t | nil,
    :responders => [Opsgeniex.Model.Responder.t] | nil,
    :ownerTeam => String.t | nil,
    :extraProperties => %{optional(String.t) => String.t} | nil,
    :requestId => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdAt, :datetime, nil)
     |> Deserializer.deserialize(:updatedAt, :datetime, nil)
     |> Deserializer.deserialize(:responders, :list, Opsgeniex.Model.Responder)
  end
end

