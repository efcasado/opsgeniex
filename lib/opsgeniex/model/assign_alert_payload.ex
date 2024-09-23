# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AssignAlertPayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :user,
    :note,
    :source,
    :owner
  ]

  @type t :: %__MODULE__{
    :user => String.t | nil,
    :note => String.t | nil,
    :source => String.t | nil,
    :owner => Opsgeniex.Model.UserRecipient.t
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:owner, :struct, Opsgeniex.Model.UserRecipient)
  end
end

