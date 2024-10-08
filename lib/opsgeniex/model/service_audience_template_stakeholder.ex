# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ServiceAudienceTemplateStakeholder do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :individuals,
    :conditionMatchType,
    :conditions
  ]

  @type t :: %__MODULE__{
    :individuals => [String.t] | nil,
    :conditionMatchType => String.t | nil,
    :conditions => [Opsgeniex.Model.ServiceAudienceTemplateCondition.t] | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:conditions, :list, Opsgeniex.Model.ServiceAudienceTemplateCondition)
  end
end

