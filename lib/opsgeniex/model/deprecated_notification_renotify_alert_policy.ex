# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.DeprecatedNotificationRenotifyAlertPolicy do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :policyDescription,
    :filter,
    :timeRestrictions,
    :enabled,
    :type
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :policyDescription => String.t | nil,
    :filter => Opsgeniex.Model.Filter.t | nil,
    :timeRestrictions => Opsgeniex.Model.TimeRestrictionInterval.t | nil,
    :enabled => boolean() | nil,
    :type => String.t
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:filter, :struct, Opsgeniex.Model.Filter)
     |> Deserializer.deserialize(:timeRestrictions, :struct, Opsgeniex.Model.TimeRestrictionInterval)
  end
end

