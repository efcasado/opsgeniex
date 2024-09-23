# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.XPackAlertingCallback do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :alertFilter,
    :alertActions,
    :"callback-type",
    :sendAlertActions,
    :"bidirectional-callback-type",
    :eswatcherActionId,
    :eswatcherHostId
  ]

  @type t :: %__MODULE__{
    :alertFilter => Opsgeniex.Model.AlertFilter.t | nil,
    :alertActions => [String.t] | nil,
    :"callback-type" => String.t | nil,
    :sendAlertActions => boolean() | nil,
    :"bidirectional-callback-type" => String.t | nil,
    :eswatcherActionId => String.t | nil,
    :eswatcherHostId => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:alertFilter, :struct, Opsgeniex.Model.AlertFilter)
  end
end

