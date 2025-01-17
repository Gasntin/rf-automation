# Robot Framework Setup Guide

This guide will help you set up the necessary environment to run Robot Framework tests.

## Prerequisites

1. **Install Python 3**  
   First, make sure you have Python 3 installed on your machine. You can download Python 3 from the official website:  
   [Download Python 3](https://www.python.org/downloads/)

2. **Verify Python Installation**  
   After installing Python, verify the installation by running the following command in your terminal or command prompt:
   
   ```bash
   python --version

2. **Verify pip Installation**  
   pip is the Python package manager, and it should be installed with Python by default. To check if pip is installed, run:
   ```bash
   pip3 --version

## Step 1: Install Dependencies
   1. **Clone or download the project repository to your local machine.**
   2. **Navigate to the project folder using the terminal or command prompt.**
   3. **Install the required dependencies by running the following command:**
      ```bash
      pip3 install -r requirements.txt

## Step 2: Run the Tests
   Once the dependencies are installed, you can run the Robot Framework tests by executing the following command:
   
    robot tests/
  
    
## Step 3: View the Test Results
    After running the tests, Robot Framework will generate three important output files:
    - log.html - A detailed log of the test execution.
    - report.html - A summary report of the test execution.
    - output.xml - A machine-readable XML output file.
    - You can open the log.html and report.html files in a web browser to view the test results.
