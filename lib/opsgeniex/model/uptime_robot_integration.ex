# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.UptimeRobotIntegration do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :type,
    :id,
    :name,
    :enabled,
    :ownerTeam,
    :isGlobal,
    :_readOnly,
    :suppressNotifications,
    :ignoreTeamsFromPayload,
    :ignoreRecipientsFromPayload,
    :recipients,
    :isAdvanced,
    :"feature-type",
    :allowConfigurationAccess,
    :allowWriteAccess
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :id => String.t | nil,
    :name => String.t,
    :enabled => boolean() | nil,
    :ownerTeam => Opsgeniex.Model.TeamMeta.t | nil,
    :isGlobal => boolean() | nil,
    :_readOnly => [String.t] | nil,
    :suppressNotifications => boolean() | nil,
    :ignoreTeamsFromPayload => boolean() | nil,
    :ignoreRecipientsFromPayload => boolean() | nil,
    :recipients => [Opsgeniex.Model.Recipient.t] | nil,
    :isAdvanced => boolean() | nil,
    :"feature-type" => String.t | nil,
    :allowConfigurationAccess => boolean() | nil,
    :allowWriteAccess => boolean() | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ownerTeam, :struct, Opsgeniex.Model.TeamMeta)
     |> Deserializer.deserialize(:recipients, :list, Opsgeniex.Model.Recipient)
  end
end

