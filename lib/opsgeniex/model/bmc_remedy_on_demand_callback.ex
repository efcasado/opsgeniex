# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.BmcRemedyOnDemandCallback do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :alertFilter,
    :forwardingEnabled,
    :forwardingActionMappings,
    :"callback-type",
    :url,
    :username,
    :password,
    :lastname,
    :firstname
  ]

  @type t :: %__MODULE__{
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :forwardingEnabled => boolean() | nil,
    :forwardingActionMappings => [Opsgeniex.Model.ActionMapping.t] | nil,
    :"callback-type" => String.t | nil,
    :url => String.t | nil,
    :username => String.t | nil,
    :password => String.t | nil,
    :lastname => String.t | nil,
    :firstname => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
     |> Deserializer.deserialize(:forwardingActionMappings, :list, Opsgeniex.Model.ActionMapping)
  end
end

