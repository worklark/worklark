#!/usr/bin/env bash

echo "Running pre-push hook"
./scripts/run-rubocop.bash
./scripts/run-tests.bash

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
 echo "Rubocop and Tests must pass before pushing!"
 exit 1
fi
