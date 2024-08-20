# 使用 Node.js 官方映像檔
FROM node:18-alpine

# 設定工作目錄
WORKDIR /app

# 複製 package.json 並安裝依賴
COPY package.json .

RUN npm install

# 複製應用程式代碼
COPY . .

# 構建應用程式
RUN npm run build

# 安裝一個輕量級的 Web 伺服器 serve
RUN npm install -g serve

# 啟動應用程式
CMD ["serve", "-s", "build"]

# 暴露埠
EXPOSE 3000
