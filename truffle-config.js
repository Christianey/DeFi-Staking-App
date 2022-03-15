// require('babel-register')
// require('babel-polyfill')

module.exports = {
  contracts_directory: "./src/contracts",
  contracts_build_directory: "./src/truffle_abis",
  networks: {
    development: {
      host: "127.0.0.1",
      port: "7545",
      network_id: "*",
    }
  },
  compilers: {
    solc: {
      version: ">=0.7.0 < 0.9.0",
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  }
}