use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lb2, Lb2Web.Endpoint,
  http: [port: 8801],
  server: false

config :lb2, Lb2.Repo,
  pool: Ecto.Adapters.SQL.Sandbox
EOF

# Print only warnings and errors during test
config :logger, level: :warn

import_config "test.secret.exs"
