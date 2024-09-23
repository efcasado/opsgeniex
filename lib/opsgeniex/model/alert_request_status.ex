# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AlertRequestStatus do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :action,
    :processedAt,
    :integrationId,
    :isSuccess,
    :status,
    :alertId,
    :alias
  ]

  @type t :: %__MODULE__{
    :action => String.t | nil,
    :processedAt => DateTime.t | nil,
    :integrationId => String.t | nil,
    :isSuccess => boolean() | nil,
    :status => String.t | nil,
    :alertId => String.t | nil,
    :alias => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:processedAt, :datetime, nil)
  end
end

