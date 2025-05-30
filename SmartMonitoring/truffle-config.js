module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",     // Ganache local blockchain
      port: 7545,            // Default Ganache RPC port
      network_id: "5777",       // Match any network
    }
  },

  // Configure your compilers
  compilers: {
    solc: {
      version: "0.8.0"      // Match your Solidity version
    }
  }
};
// This configuration file is for Truffle, a development framework for Ethereum.
// It specifies the network settings for connecting to a local Ganache blockchain,
// including the host, port, and network ID. It also configures the Solidity compiler
// version to be used for compiling smart contracts. The `development` network is
// set to connect to a local Ganache instance running on the default RPC port (7545).