FROM python:3.11-slim

WORKDIR /app

# Copy project files
COPY pyproject.toml README.md LICENSE ./
COPY src ./src/

# Install dependencies and package
RUN pip install --no-cache-dir ".[dev]"

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "-m", "mcp_obsidian"] 