# Smart-Healthcare-Monitoring-Using-Ganache-and-Truffle

# IoT Smart Health Monitoring with Blockchain

This project simulates an IoT-based health monitoring system that stores patient vital signs on a blockchain using a smart contract written in Solidity. It uses:

- Truffle Framework
- Ganache (local Ethereum blockchain)
- Python with Web3.py for sending simulated data
- CSV-based IoT data with Filipino names and realistic vitals

---

## Prerequisites

1. Install Node.js and npm
   Download: https://nodejs.org/
   Then verify:
   node -v
   npm -v

2. Install Truffle globally
   npm install -g truffle
   truffle version

3. Install Ganache
   Option A (GUI - recommended): https://trufflesuite.com/ganache/
   Option B (CLI):
   npm install -g ganache

4. Install Python dependencies
   pip install web3 pandas

---

## Folder Structure

SMARTMONITORING/
├── ADET/
│   ├── iot_data_records.csv
│   ├── MO-IT148_Homework_IoT_Data_Simulation_A3101_Group_LMN.csv
│   └── IotSim.ipynb                  ← Jupyter Notebook for data simulation
├── contracts/
│   └── IoTDataStorage.sol           ← Solidity contract
├── migrations/
│   └── 2_deploy_contracts.js        ← Truffle deployment script
├── build/                           ← Generated on compile
├── test/                            ← (optional test folder)
└── truffle-config.js

---

## Setup Guide

1. Clone or open the project folder in terminal

2. (Optional) Clear old build cache
   Windows:
   Remove-Item -Recurse -Force .\build\
   macOS/Linux:
   rm -rf build/

3. Compile the contract
   truffle compile --all

4. Start Ganache GUI or run:
   ganache

5. Deploy the contract
   truffle migrate --reset
   (Copy the new contract address)

---

## Running the Simulation

1. Open Jupyter Notebook
   jupyter notebook

2. Open IotSim.ipynb

3. In Cell 1, update the contract address:
   contract_address = "0xYourNewContractAddress"

4. Run all cells to start storing the 500 simulated records to the blockchain

---

## Tips

- "invalid opcode" error? Re-deploy with truffle migrate --reset
- Connection error? Check Ganache is running at http://127.0.0.1:7545
- File not found? Make sure CSV file is in same folder as notebook

---

## Authors

- Blockchain & Simulation: Mary Jullianne Maycacayan
