# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ServiceNowCallback do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :alertFilter,
    :forwardingEnabled,
    :forwardingActionMappings,
    :"callback-type",
    :updatesActionMappings,
    :updatesEnabled,
    :"bidirectional-callback-type",
    :scriptedRestAPIURL,
    :servicenowUserName,
    :servicenowPassword
  ]

  @type t :: %__MODULE__{
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :forwardingEnabled => boolean() | nil,
    :forwardingActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :"callback-type" => String.t | nil,
    :updatesActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :updatesEnabled => boolean() | nil,
    :"bidirectional-callback-type" => String.t | nil,
    :scriptedRestAPIURL => String.t | nil,
    :servicenowUserName => String.t | nil,
    :servicenowPassword => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
     |> Deserializer.deserialize(:forwardingActionMappings, :list, Opsgeniex.Model.ActionMapping)
     |> Deserializer.deserialize(:updatesActionMappings, :list, Opsgeniex.Model.ActionMapping)
  end
end

