# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.UserContact do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :to,
    :id,
    :contactMethod,
    :disabledReason,
    :enabled
  ]

  @type t :: %__MODULE__{
    :to => String.t | nil,
    :id => String.t | nil,
    :contactMethod => String.t | nil,
    :disabledReason => String.t | nil,
    :enabled => boolean() | nil
  }

  def decode(value) do
    value
  end
end

