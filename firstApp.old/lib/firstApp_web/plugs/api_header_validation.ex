defmodule FirstAppWeb.HeadersValidation do
    import Plug.Conn

    def init(opts), do: opts

    def call(conn, _opts) do
        case read_header(conn, "x-api-key") do
            {:ok, conn} -> conn
            {:error, reason} ->
                conn
                    |> send_resp(400, reason)
                    |> halt
        end
    end

    def read_header(conn, header) do
        case get_req_header(conn, header) do
            [] ->
                {:error, "El header #{header} es requerido"}
            [header_value] ->
                conn = assign(conn, String.to_atom(header), header_value)
                {:ok, conn}
        end
    end
end