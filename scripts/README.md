This directory contains the following scripts to help app management:

* `run-rubocop.bash`: Runs rubocop tests
* `run-tests.bash`: Runs all tests, including system tests.
* `pre-push.bash`: Git pre-push hook to run rubocop and tests
* `install-hooks.bash`: Symlinks `pre-push.bash` to `.git/hooks/`
