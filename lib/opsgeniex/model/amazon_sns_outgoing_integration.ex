# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AmazonSnsOutgoingIntegration do
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
    :alertFilter,
    :forwardingEnabled,
    :forwardingActionMappings,
    :"callback-type",
    :topicArn,
    :region
  ]

  @type t :: %__MODULE__{
    :type => String.t,
    :id => String.t | nil,
    :name => String.t,
    :enabled => boolean() | nil,
    :ownerTeam => Opsgeniex.Model.TeamMeta.t | nil,
    :isGlobal => boolean() | nil,
    :_readOnly => [String.t] | nil,
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :forwardingEnabled => boolean() | nil,
    :forwardingActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :"callback-type" => String.t | nil,
    :topicArn => String.t | nil,
    :region => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ownerTeam, :struct, Opsgeniex.Model.TeamMeta)
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
     |> Deserializer.deserialize(:forwardingActionMappings, :list, Opsgeniex.Model.ActionMapping)
  end
end

