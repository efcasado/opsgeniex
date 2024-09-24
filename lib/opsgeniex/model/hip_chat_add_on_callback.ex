# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.HipChatAddOnCallback do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :alertFilter,
    :alertActions,
    :"callback-type",
    :sendAlertActions,
    :"bidirectional-callback-type",
    :notify,
    :groupName,
    :hostUrl,
    :useCollapsedMessages
  ]

  @type t :: %__MODULE__{
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :alertActions => [String.t] | nil,
    :"callback-type" => String.t | nil,
    :sendAlertActions => boolean() | nil,
    :"bidirectional-callback-type" => String.t | nil,
    :notify => boolean() | nil,
    :groupName => String.t | nil,
    :hostUrl => String.t | nil,
    :useCollapsedMessages => boolean() | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
  end
end

