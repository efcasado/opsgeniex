# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.UpdateHeartbeatPayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :interval,
    :intervalUnit,
    :enabled
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :interval => integer() | nil,
    :intervalUnit => String.t | nil,
    :enabled => boolean() | nil
  }

  def decode(value) do
    value
  end
end

