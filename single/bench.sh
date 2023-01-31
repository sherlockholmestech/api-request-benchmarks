#This script has only been tested on the fish shell.
. ~/.nvm/nvm.sh use --lts
cd rust-request && cargo build -r && cd ..
cd go-request && go build && cd ..
hyperfine "./rust-request/target/release/rust-request" "node ./nodejs-request/index.js" "cd bun-request && bun run index.js" "./go-request/go-request" "cd python-request && python3 main.py" "cd python-request && pypy3 main.py" "cd r-request && Rscript main.r" --warmup 3 --min-runs 10 --max-runs 10