# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Model.ListAlertNotesResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :requestId,
    :took,
    :data,
    :paging
  ]

  @type t :: %__MODULE__{
    :requestId => String.t,
    :took => float(),
    :data => [Opsgeniex.Model.AlertNote.t] | nil,
    :paging => Opsgeniex.Model.AlertPaging.t | nil
  }

  alias Opsgeniex.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:data, :list, Opsgeniex.Model.AlertNote)
     |> Deserializer.deserialize(:paging, :struct, Opsgeniex.Model.AlertPaging)
  end
end

