# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.KayakoCallback do
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
    :email,
    :password,
    :subdomain
  ]

  @type t :: %__MODULE__{
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :forwardingEnabled => boolean() | nil,
    :forwardingActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :"callback-type" => String.t | nil,
    :updatesActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :updatesEnabled => boolean() | nil,
    :"bidirectional-callback-type" => String.t | nil,
    :email => String.t | nil,
    :password => String.t | nil,
    :subdomain => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
     |> Deserializer.deserialize(:forwardingActionMappings, :list, Opsgeniex.Model.ActionMapping)
     |> Deserializer.deserialize(:updatesActionMappings, :list, Opsgeniex.Model.ActionMapping)
  end
end

