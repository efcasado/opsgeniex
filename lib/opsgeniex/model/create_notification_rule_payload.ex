# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.CreateNotificationRulePayload do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :actionType,
    :criteria,
    :notificationTime,
    :timeRestriction,
    :schedules,
    :order,
    :steps,
    :repeat,
    :enabled
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :actionType => Opsgeniex.Model.NotificationActionType.t,
    :criteria => Opsgeniex.Model.Filter.t | nil,
    :notificationTime => [Opsgeniex.Model.NotifyTime.t] | nil,
    :timeRestriction => Opsgeniex.Model.TimeRestrictionInterval.t | nil,
    :schedules => [Opsgeniex.Model.ScheduleRecipient.t] | nil,
    :order => integer() | nil,
    :steps => [Opsgeniex.Model.CreateNotificationRuleStepPayload.t] | nil,
    :repeat => Opsgeniex.Model.NotificationRepeat.t | nil,
    :enabled => boolean()
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:actionType, :struct, Opsgeniex.Model.NotificationActionType)
     |> Deserializer.deserialize(:criteria, :struct, Opsgeniex.Model.Filter)
     |> Deserializer.deserialize(:notificationTime, :list, Opsgeniex.Model.NotifyTime)
     |> Deserializer.deserialize(:timeRestriction, :struct, Opsgeniex.Model.TimeRestrictionInterval)
     |> Deserializer.deserialize(:schedules, :list, Opsgeniex.Model.ScheduleRecipient)
     |> Deserializer.deserialize(:steps, :list, Opsgeniex.Model.CreateNotificationRuleStepPayload)
     |> Deserializer.deserialize(:repeat, :struct, Opsgeniex.Model.NotificationRepeat)
  end
end

