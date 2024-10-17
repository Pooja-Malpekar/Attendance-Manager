### Blockchain Attendance Manager

The Blockchain Attendance Manager is a decentralized application (DApp) that allows teachers to register students, mark attendance, and check attendance records using Ethereum smart contracts. This solution brings transparency and security to attendance management by leveraging blockchain technology.

#### Features
- **Student Registration**: Teachers can register students by entering their name and Ethereum address.
- **Mark Attendance**: Teachers mark attendance by selecting a registered student.
- **Check Attendance**: Anyone can check if a student is marked as present or absent.
- **Registered Students List**: Displays a list of all registered students with their addresses.

#### Technologies Used
- **Solidity**: For developing the attendance smart contract.
- **Web3.js**: Enables interaction between the front end and the blockchain.
- **HTML/CSS**: Provides the user interface for managing attendance.
- **Ganache**: For running a local blockchain instance and testing with MetaMask.



## Installation

### 1. Clone the Repository
Open your terminal, navigate to the desired directory, and run:
```bash
git clone https://github.com/Pooja-Malpekar/Attendance-Manager.git
cd attendance-manager
```

### 2. Create a Virtual Environment
To manage dependencies, create a virtual environment in your project folder:
```bash
python -m venv venv
```

### 3. Activate the Virtual Environment
Activate the virtual environment depending on your operating system:

- **Windows**:
  ```bash
  venv\Scripts\activate
  ```
- **macOS/Linux**:
  ```bash
  source venv/bin/activate
  ```

### 4. Install `http-server` (Optional)
If you’re using Node.js, you can install `http-server` globally to serve your files:
```bash
npm install -g http-server
```

### 5. Install Web3.js
In the project directory, install Web3.js to interact with the Ethereum blockchain:
```bash
npm install web3
```

---

## Setting Up Ganache and Deploying the Smart Contract

1. **Start Ganache**:
   - Open [Ganache](https://trufflesuite.com/ganache/) and start a new workspace.
   - Copy the **RPC Server URL** (usually `http://127.0.0.1:7545`), as you'll use it to connect your project to the local blockchain.

2. **Open Remix IDE**:
   - Visit [Remix](https://remix.ethereum.org/) or use another Solidity IDE.

3. **Create and Compile the Smart Contract**:
   - Copy the code from `AttendanceManager.sol` in the `contracts` directory.
   - Paste it into a new file in Remix and compile it.

4. **Deploy the Contract on Ganache**:
   - In Remix, choose **Injected Web3** as the environment (this connects Remix to your local Ganache instance).
   - Deploy the contract. Once deployed, note the **contract address** and **ABI**.

5. **Update Front-end with Contract Details**:
   - Open `index.html` in a code editor.
   - Paste the **contract ABI** and **contract address** into the `contractABI` and `contractAddress` variables.
   - In the `index.html` file, update the Web3 provider with Ganache’s URL:
     ```javascript
     let web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:7545"));
     ```

---

## Run the Server

To view your project locally, you can use either `http-server` or Python’s built-in HTTP server:

### Option A: Using `http-server`
Run the following command in your project directory:
```bash
http-server
```

### Option B: Using Python’s Built-In Server
If you’re using Python 3.x, you can start a simple server:
```bash
python -m http.server 8080
```

### Access the Project
Open your browser and go to:
```
http://localhost:8080/index.html
```

---
