#! /bin/bash

#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# NOTE: startup command is required to be passed in
exec "$@"

