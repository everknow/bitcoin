# This script only builds the essential components (bitcoind and bitcoin-cli)

# Install Requirements (Run only one time before running the script)
# sudo apt update
# sudo apt install build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 libssl-dev libevent-dev
# sudo apt install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev
# sudo apt install libminiupnpc-dev libzmq3-dev libqt5core5a libqt5gui5 libqt5dbus5 qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev

# Generate Config
./autogen.sh

# Run Config disabling all the test and benchmark components
./configure --disable-tests --disable-bench

# Build the Components (output in: src/* folder)
# This command is also used to build the code changes
make -j4 src/bitcoind src/bitcoin-cli
