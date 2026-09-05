#!/usr/bin/env python3

"""
hello.py - Sample Python application for Jenkins practice

This is a simple Python script that demonstrates:
- Basic Python syntax
- Comments and documentation
- Function definition and execution
- Output to console

Usage: python3 hello.py
"""


def greet():
    """Simple greeting function."""
    print("Hello from Jenkins Practice Repository!")
    print("This is a sample application for learning Jenkins CI/CD")
    return True


def print_info():
    """Print application information."""
    print("\n--- Application Information ---")
    print("Project: myjenkinsfirstpublicrepo")
    print("Purpose: Jenkins practice and learning")
    print("Language: Python")
    print("------------------------------\n")


def main():
    """Main entry point of the application."""
    print("=" * 50)
    print("Jenkins Practice Application")
    print("=" * 50)
    print()
    
    # Call greeting function
    greet()
    
    # Print application info
    print_info()
    
    # Display status
    print("[SUCCESS] Application executed successfully!")
    print("[INFO] Ready for Jenkins build pipeline testing")
    
    print("=" * 50)


# Entry point - execute main function when script is run
if __name__ == "__main__":
    try:
        main()
        exit(0)
    except Exception as e:
        print(f"[ERROR] An error occurred: {e}")
        exit(1)
