# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :phoenix_react_redux, PhoenixReactRedux.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "phoenix_react_redux_repo",
  username: "YusukeAbe",
  password: "cruyf0825",
  hostname: "localhost"


# Configures the endpoint
config :phoenix_react_redux, PhoenixReactRedux.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "r9CvKL3/bivt6hT3JdUn76K9OEWEq2KymuosUvR9GtXYIYj4XA+RIiGZ7eI+Jcra",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PhoenixReactRedux.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
