# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ErrorceptionIntegration do
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
    :ignoreRespondersFromPayload,
    :ignoreTagsFromPayload,
    :ignoreExtraPropertiesFromPayload,
    :responders,
    :priority,
    :customPriority,
    :tags,
    :extraProperties,
    :assignedTeam,
    :"feature-type",
    :allowConfigurationAccess,
    :allowReadAccess,
    :allowWriteAccess,
    :allowDeleteAccess
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
    :ignoreRespondersFromPayload => boolean() | nil,
    :ignoreTagsFromPayload => boolean() | nil,
    :ignoreExtraPropertiesFromPayload => boolean() | nil,
    :responders => [Opsgeniex.Model.Recipient.t] | nil,
    :priority => String.t | nil,
    :customPriority => String.t | nil,
    :tags => [String.t] | nil,
    :extraProperties => %{optional(String.t) => String.t} | nil,
    :assignedTeam => Opsgeniex.Model.TeamMeta.t | nil,
    :"feature-type" => String.t | nil,
    :allowConfigurationAccess => boolean() | nil,
    :allowReadAccess => boolean() | nil,
    :allowWriteAccess => boolean() | nil,
    :allowDeleteAccess => boolean() | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ownerTeam, :struct, Opsgeniex.Model.TeamMeta)
     |> Deserializer.deserialize(:recipients, :list, Opsgeniex.Model.Recipient)
     |> Deserializer.deserialize(:responders, :list, Opsgeniex.Model.Recipient)
     |> Deserializer.deserialize(:assignedTeam, :struct, Opsgeniex.Model.TeamMeta)
  end
end

