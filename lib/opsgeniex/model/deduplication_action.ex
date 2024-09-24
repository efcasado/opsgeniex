# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.DeduplicationAction do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :deduplicationActionType,
    :count,
    :duration
  ]

  @type t :: %__MODULE__{
    :deduplicationActionType => String.t,
    :count => integer(),
    :duration => Opsgeniex.Model.Duration.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:duration, :struct, Opsgeniex.Model.Duration)
  end
end

