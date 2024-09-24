# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.SplunkItsiIntegration do
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
    :allowDeleteAccess,
    :alertFilter,
    :forwardingEnabled,
    :forwardingActionMappings,
    :"callback-type",
    :updatesActionMappings,
    :updatesEnabled,
    :"bidirectional-callback-type",
    :url,
    :password,
    :username
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
    :allowDeleteAccess => boolean() | nil,
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :forwardingEnabled => boolean() | nil,
    :forwardingActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :"callback-type" => String.t | nil,
    :updatesActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :updatesEnabled => boolean() | nil,
    :"bidirectional-callback-type" => String.t | nil,
    :url => String.t | nil,
    :password => String.t | nil,
    :username => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ownerTeam, :struct, Opsgeniex.Model.TeamMeta)
     |> Deserializer.deserialize(:recipients, :list, Opsgeniex.Model.Recipient)
     |> Deserializer.deserialize(:responders, :list, Opsgeniex.Model.Recipient)
     |> Deserializer.deserialize(:assignedTeam, :struct, Opsgeniex.Model.TeamMeta)
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
     |> Deserializer.deserialize(:forwardingActionMappings, :list, Opsgeniex.Model.ActionMapping)
     |> Deserializer.deserialize(:updatesActionMappings, :list, Opsgeniex.Model.ActionMapping)
  end
end

