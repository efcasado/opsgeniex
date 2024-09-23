# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.AddTeamMemberPayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :user,
    :role
  ]

  @type t :: %__MODULE__{
    :user => Opsgeniex.Model.UserMeta.t,
    :role => String.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:user, :struct, Opsgeniex.Model.UserMeta)
  end
end

