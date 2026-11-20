import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import { resolve } from 'path'

// https://vitejs.dev/config/
export default defineConfig({
  base: './', // 使用相对路径，确保静态部署时正常工作
  plugins: [vue()],
  server: {
    proxy: {
      // 配置API代理，解决跨域问题
      '/api': {
        target: 'http://localhost:8081', // 后端服务地址
        changeOrigin: true
      }
    },
    // 配置静态文件服务
    static: {
      directory: resolve(__dirname),
      publicPath: '/'
    }
  }
})
