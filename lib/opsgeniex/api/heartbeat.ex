# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Opsgeniex.Api.Heartbeat do
  @moduledoc """
  API calls for all endpoints tagged `Heartbeat`.
  """

  alias Opsgeniex.Connection
  import Opsgeniex.RequestBuilder

  @doc """
  Create Heartbeat
  Create a new heartbeat

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `body` (CreateHeartbeatPayload): Request payload of created heartbeat
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.CreateHeartbeatResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_heartbeat(Tesla.Env.client, Opsgeniex.Model.CreateHeartbeatPayload.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.CreateHeartbeatResponse.t} | {:error, Tesla.Env.t}
  def create_heartbeat(connection, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v2/heartbeats")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Opsgeniex.Model.CreateHeartbeatResponse},
      {400, Opsgeniex.Model.ErrorResponse},
      {401, Opsgeniex.Model.ErrorResponse},
      {402, Opsgeniex.Model.ErrorResponse},
      {403, Opsgeniex.Model.ErrorResponse},
      {422, Opsgeniex.Model.ErrorResponse},
      {429, Opsgeniex.Model.ErrorResponse},
      {:default, Opsgeniex.Model.ErrorResponse}
    ])
  end

  @doc """
  Delete Heartbeat
  Delete heartbeat with given name

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `name` (String.t): Name of the heartbeat
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_heartbeat(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def delete_heartbeat(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v2/heartbeats/#{name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.SuccessResponse},
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
  Disable Heartbeat
  Disable heartbeat request with given name

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `name` (String.t): Name of the heartbeat
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.DisableHeartbeatResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec disable_heartbeat(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.DisableHeartbeatResponse.t} | {:error, Tesla.Env.t}
  def disable_heartbeat(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v2/heartbeats/#{name}/disable")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.DisableHeartbeatResponse},
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
  Enable Heartbeat
  Enable heartbeat request with given name

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `name` (String.t): Name of the heartbeat
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.EnableHeartbeatResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec enable_heartbeat(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.EnableHeartbeatResponse.t} | {:error, Tesla.Env.t}
  def enable_heartbeat(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v2/heartbeats/#{name}/enable")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.EnableHeartbeatResponse},
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
  Get Heartbeat
  Returns heartbeat with given name

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `name` (String.t): Name of the heartbeat
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.GetHeartbeatResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_heartbeat(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.GetHeartbeatResponse.t} | {:ok, Opsgeniex.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def get_heartbeat(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/heartbeats/#{name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.GetHeartbeatResponse},
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
  Ping Heartbeat
  Ping Heartbeat for given heartbeat name

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `name` (String.t): Name of the heartbeat
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Opsgeniex.Model.SuccessResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ping(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.ErrorResponse.t} | {:ok, Opsgeniex.Model.SuccessResponse.t} | {:error, Tesla.Env.t}
  def ping(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v2/heartbeats/#{name}/ping")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {202, Opsgeniex.Model.SuccessResponse},
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
  Update Heartbeat (Partial)
  Update Heartbeatwith given name

  ### Parameters

  - `connection` (Opsgeniex.Connection): Connection to server
  - `name` (String.t): Name of the heartbeat
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateHeartbeatPayload): Request payload of update heartbeat action

  ### Returns

  - `{:ok, Opsgeniex.Model.UpdateHeartbeatResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_heartbeat(Tesla.Env.client, String.t, keyword()) :: {:ok, Opsgeniex.Model.UpdateHeartbeatResponse.t} | {:ok, Opsgeniex.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def update_heartbeat(connection, name, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:patch)
      |> url("/v2/heartbeats/#{name}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Opsgeniex.Model.UpdateHeartbeatResponse},
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
