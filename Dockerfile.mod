FROM node:4.8.3

# Install location
ENV dir /var/www/ldf-server

# Copy the server files
ADD . ${dir}

# Install the node module
RUN cd ${dir} && npm install

# Expose the default port
EXPOSE 3000

# Run base binary
WORKDIR ${dir}
ENTRYPOINT ["./start.sh"]

# Default command
CMD ["--help"]
