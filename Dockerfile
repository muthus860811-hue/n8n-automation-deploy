FROM n8nio/n8n:latest

# Railway runs the container as root, fix permissions
USER root

# Create n8n folder for data
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678

CMD ["n8n"]
