.PHONY: serve build clean rebuild

# Default target
all: serve

# Start the Jekyll development server
serve:
	@echo "🚀 Starting Jekyll development server..."
	@docker-compose up

# Build the static site
build:
	@echo "🔨 Building static site..."
	@docker-compose run --rm jekyll jekyll build

# Clean up generated files and stop containers
clean:
	@echo "🧹 Cleaning up..."
	@docker-compose down
	@rm -rf _site
	@echo "✨ Clean complete!"

# Rebuild everything from scratch
rebuild: clean serve
	@echo "🔄 Rebuild complete!"

# Help target
help:
	@echo "Available targets:"
	@echo "  serve   - Start the Jekyll development server"
	@echo "  build   - Build the static site"
	@echo "  clean   - Remove generated files and stop containers"
	@echo "  rebuild - Clean and restart the development server" 