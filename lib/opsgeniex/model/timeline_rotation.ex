# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.TimelineRotation do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :order,
    :periods
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :order => float() | nil,
    :periods => [Opsgeniex.Model.TimelinePeriod.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:periods, :list, Opsgeniex.Model.TimelinePeriod)
  end
end

