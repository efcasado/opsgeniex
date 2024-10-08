# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.Timeline do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :rotations
  ]

  @type t :: %__MODULE__{
    :rotations => [Opsgeniex.Model.TimelineRotation.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:rotations, :list, Opsgeniex.Model.TimelineRotation)
  end
end

