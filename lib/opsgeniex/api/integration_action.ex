# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Api.IntegrationAction do
  @moduledoc """
  API calls for all endpoints tagged `IntegrationAction`.
  """

  alias Opsgeniex.Connection
  import Opsgeniex.RequestBuilder

  @doc """
  Create Integration Action
  Creates integration actions of given integration id

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `id` (String.t): Integration Id
  - `body` (BaseIntegrationAction): Request payload to create integration action
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.CreateIntegrationActionsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_integration_action(Tesla.Env.client, String.t, Opsgeniex.Model.BaseIntegrationAction.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.CreateIntegrationActionsResponse.t} | {:error, Tesla.Env.t}
  def create_integration_action(connection, id, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v2/integrations/#{id}/actions")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Opsgeniex.Model.CreateIntegrationActionsResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  List Integration Actions
  List integration actions of given integration id

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `id` (String.t): Integration Id
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.ListIntegrationActionsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_integration_actions(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ListIntegrationActionsResponse.t} | {:ok, Opsgeniex.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def list_integration_actions(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/integrations/#{id}/actions")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.ListIntegrationActionsResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  Update Integration Actions
  Updates integration actions of given integration id

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `id` (String.t): Integration Id
  - `body` (ActionCategorized): Request payload to update integration actions
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.UpdateIntegrationActionsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_integration_actions(Tesla.Env.client, String.t, Opsgeniex.Model.ActionCategorized.t, keyword()) :: {:ok, Opsgeniex.Model.UpdateIntegrationActionsResponse.t} | {:ok, Opsgeniex.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def update_integration_actions(connection, id, body, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/v2/integrations/#{id}/actions")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.UpdateIntegrationActionsResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {404, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end
end
