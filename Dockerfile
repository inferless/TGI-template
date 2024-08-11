# Use the official TGI image as the base image
FROM ghcr.io/huggingface/text-generation-inference:latest

WORKDIR /app

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Set environment variables
ENV MODEL_ID="meta-llama/Llama-2-7b-chat-hf"

# Expose the port the app runs on
EXPOSE 3000
ENTRYPOINT ["/bin/bash", "/app/start.sh"]
# Use the start script as the entry point
