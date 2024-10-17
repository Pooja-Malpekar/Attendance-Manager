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
- **Ganache/MetaMask**: For running a local blockchain instance and testing with MetaMask.

#### Setup
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/attendance-manager.git
   cd attendance-manager
   ```
2. **Install Web3**:
   ```bash
   npm install web3
   ```
3. **Deploy the Contract**: Use Remix or a similar IDE, and replace the `contractABI` and `contractAddress` in `index.html` with your deployed contract details.
4. **Run the Server**:
   ```bash
   venv\Scripts\activate    # Activate virtual environment
   http-server              # Or python -m http.server 8080
   ```

Open `http://localhost:8080/index.html` to start using the app. Only the teacher can register, mark, or remove students.
