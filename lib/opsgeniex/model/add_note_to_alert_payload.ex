# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AddNoteToAlertPayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :user,
    :note,
    :source
  ]

  @type t :: %__MODULE__{
    :user => String.t | nil,
    :note => String.t | nil,
    :source => String.t | nil
  }

  def decode(value) do
    value
  end
end

