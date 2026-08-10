// PM2 process definition for the CDI Practice API (Express).
// Run from anywhere on the box:  pm2 start deploy/ecosystem.config.cjs
//
// Secrets are NOT defined here. The server loads them from a `.env` file in the
// repo root via dotenv at startup. Keep that .env chmod 600 and never commit it.
const path = require('path')
const root = path.resolve(__dirname, '..') // repo root (cwd for the app + where .env lives)

module.exports = {
  apps: [
    {
      name: 'cdi-api',
      cwd: root,
      script: 'server/index.js',
      instances: 1, // t3.small = 2 vCPU; bump to 2 (exec_mode 'cluster') later if needed
      exec_mode: 'fork',
      autorestart: true,
      max_memory_restart: '400M', // safety net on a 2 GB box
      env: {
        NODE_ENV: 'production',
        PORT: '8080', // nginx proxies to this; not exposed publicly
      },
      time: true, // timestamp logs (default location: ~/.pm2/logs/)
    },
  ],
}
