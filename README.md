# 🌱 基於 Ethereum 區塊鏈之農產品溯源系統

本專案為大學部區塊鏈技術期末專題。利用 **Ethereum 智慧合約** 與 **ethers.js** 實現去中心化的農產品供應鏈資料鏈上存證系統。生產者可將產品資訊簽署上鏈，消費者則可免 Gas 費用即時查詢、回溯產品來源，確保資料真實且不可篡改。

## 🚀 系統核心亮點
- **資料不可篡改**：生產資料一經寫入 Sepolia 測試網，即具備區塊鏈存證等級的安全性。
- **上鏈防錯查重**：前端在上鏈前會主動調用合約狀態進行查重，防止重複的產品 ID 覆蓋舊資料。
- **消費者零成本**：查詢功能採用 `view` 唯讀函式，消費者無需安裝錢包或支付 Gas 費即可秒級查詢。

## 🛠️ 開發工具與技術棧
- **Smart Contract**: Solidity (^0.8.0)
- **Frontend**: HTML5 / CSS3 / JavaScript (Vanilla JS)
- **Web3 Library**: ethers.js (v5.7.2)
- **Wallet**: MetaMask
- **Network**: Ethereum Sepolia Testnet
- **IDE**: Remix IDE & VS Code

## 📝 智慧合約部署資訊
- **合約名稱**: `Traceability`
- **Sepolia 合約地址**: `0x5cfd9E391Fc8bcFaca333ca55b89E3cA8B28E739`
- **合約核心功能**:
  - `addProduct(string _id, string _name, string _origin, string _date)`: 資料上鏈。
  - `getProduct(string _id)`: 唯讀溯源查詢（帶有 `require` 查無資料阻擋機制）。

## 💻 本地執行與測試步驟

### 1. 克隆專案 (Clone Project)
```bash
git clone https://github.com/13360880-web/-/blob/main/README.md
cd <專案資料夾名稱>
