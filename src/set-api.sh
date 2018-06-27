# ANGULAR_BACKEND_HOSTNAME='hostname1'
ANGULAR_BACKEND_HOSTNAME=${hostname} npm run build
sed -i '/hostname/d' ./src/environments/environment.prod.ts
sed -i "3i\  hostname: '$ANGULAR_BACKEND_HOSTNAME'," ./src/environments/environment.prod.ts
