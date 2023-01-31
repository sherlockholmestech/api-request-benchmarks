#This script has only been tested on the fish shell.
. ~/.nvm/nvm.sh use --lts
hyperfine "./rust-request/target/release/rust-request" "node ./nodejs-request/index.js" "cd bun-request && bun run index.js" "./go-request/go-request" --min-runs 5 --max-runs 5