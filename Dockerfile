# Start from the official n8n Docker image as a base
FROM n8nio/n8n:latest

# Switch to the root user to get permissions to install software
USER root

# Use the 'apk' package manager (from Alpine Linux) to install ffmpeg
RUN apk add --no-cache ffmpeg wget

# Switch back to the default 'node' user for security
USER node
