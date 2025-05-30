# Smart-Healthcare-Monitoring-Using-Ganache-and-Truffle

# 📡 IoT Smart Health Monitoring with Blockchain

This project simulates an IoT-based health monitoring system that stores patient vital signs on a blockchain using a smart contract written in Solidity. The system is built using:

- 🧱 **Truffle Framework**
- 🧪 **Ganache** (local Ethereum blockchain)
- 🐍 **Python** with **Web3.py** for sending simulated data
- 📊 **CSV-based IoT data** with Filipino names and realistic vital signs

---

## 🚀 Prerequisites

### 1. ✅ Install Node.js and npm
[Download Node.js](https://nodejs.org/) (recommended version: 18.x or above)

Verify installation:
```bash
node -v
npm -v
2. ✅ Install Truffle (globally)
bash
Copy
Edit
npm install -g truffle
Verify:

bash
Copy
Edit
truffle version
3. ✅ Install Ganache
Option A: GUI (Recommended)
Download Ganache GUI

Option B: CLI (if preferred)
bash
Copy
Edit
npm install -g ganache
4. ✅ Set up Python Environment
Install Python 3.10+ and pip if not already installed.

Install required libraries:

bash
Copy
Edit
pip install web3 pandas
📁 Project Structure
bash
Copy
Edit
SmartHealthMonitoringIoT/
│
├── contracts/
│   └── IoTDataStorage.sol       # Smart contract
├── migrations/
│   └── 2_deploy_contracts.js   # Truffle deployment script
├── build/contracts/
│   └── IoTDataStorage.json     # ABI and contract metadata (auto-generated)
├── iot_data_records.csv        # Simulated patient IoT data
├── IotSim.ipynb                # Jupyter Notebook to send data
├── truffle-config.js           # Truffle network & compiler settings
└── README.md                   # This guide
⚙️ Setting Up
1. Clone / download this repo
bash
Copy
Edit
cd SmartHealthMonitoringIoT
2. Remove old builds (optional)
bash
Copy
Edit
Remove-Item -Recurse -Force .\build\   # For PowerShell
# or
rm -rf build/                          # For Linux/macOS
3. Compile the contract
bash
Copy
Edit
truffle compile --all
4. Run Ganache GUI (or CLI)
Start a new workspace with default settings.

Leave it running in the background.

5. Deploy contract to Ganache
bash
Copy
Edit
truffle migrate --reset
📝 Copy the deployed contract address from terminal. You’ll need this for Python code.

🐍 Simulate IoT Data (Python)
1. Open IotSim.ipynb in Jupyter Notebook
bash
Copy
Edit
jupyter notebook
2. Modify the contract address in Cell 1:
python
Copy
Edit
contract_address = "0xYour_Deployed_Address"
3. Run the notebook to start storing simulated data.
🔍 View Data (Optional)
You can use the getTotalRecords() and getRecord() functions in the notebook to retrieve stored data.

🛠 Troubleshooting
❌ "invalid opcode" on deploy? Run truffle migrate --reset and check your .sol code.

❌ Web3 connection error? Make sure Ganache is running on http://127.0.0.1:7545.

❌ FileNotFoundError for CSV? Check that your .csv file is in the same folder as the notebook and properly named.

📬 Authors
👨‍💻 IoT Data Generator and Smart Contract Integration: Your Name

🧪 Blockchain Simulation: You
