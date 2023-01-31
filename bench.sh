#This script has only been tested on the fish shell.
. ~/.nvm/nvm.sh use --lts
hyperfine "./rust-request/target/release/rust-request" "node ./nodejs-request/index.js" "cd bun-request && bun run index.js" "./go-request/go-request" "python3 /python-request/main.py" --warmup 10 --min-runs 10 --max-runs 10