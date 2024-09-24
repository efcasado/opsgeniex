# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.CreateTeamRolePayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :rights
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :rights => [Opsgeniex.Model.TeamRight.t]
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:rights, :list, Opsgeniex.Model.TeamRight)
  end
end

