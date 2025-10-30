# 🌱 Eco Chain

## 📘 Project Description
**Eco Chain** is a blockchain-powered platform designed to support and fund eco-friendly initiatives. It allows users to contribute Ether to a collective pool, and the project owner can allocate these funds to verified environmental projects — ensuring transparency, accountability, and impact.

---

## 🌍 Project Vision
To create a decentralized ecosystem where anyone can contribute to sustainability efforts and track how their contributions directly support eco initiatives worldwide.

---

## ⚙️ Key Features
- **Add Initiatives:** The contract owner can list new eco-friendly initiatives.
- **Contribute Funds:** Anyone can contribute Ether to support global sustainability.
- **Allocate Funds:** The owner can allocate funds to specific projects transparently.
- **View Balances:** Anyone can view the total funds and initiative details.

---

## 🚀 Future Scope
- Implement **DAO-style governance** for community voting on fund allocation.
- Integrate **carbon credit tokens** for contributors.
- Add **impact tracking** with verifiable project reports.
- Build a **web dashboard** for visualizing initiatives and donations.

---

### 🧠 Smart Contract Core Functions
1. `addInitiative(string _name)` – Adds a new eco initiative (owner-only).  
2. `contribute()` – Allows anyone to contribute Ether.  
3. `allocateFunds(uint256 _id, uint256 _amount)` – Owner allocates funds to initiatives.  
4. `getBalance()` – Returns the contract’s current balance.  
