# Tiny gitleaks demo

Clone the repo. Make sure you have docker and docker-compose on your $PATH.

Run `./run-ci.sh <absolute-path-to-repo>`. This will run gitleaks on the given repo with default config, and if the check passes, start the local service in localhost:8080. If it fails, it'll notify that there was a security issue found, and deployment was blocked. Notice that the default behavior scans git logs, so by running `git reset HEAD^`, you can make the check pass even if the secret is still there.

Original readme can be found in original-readme.md
