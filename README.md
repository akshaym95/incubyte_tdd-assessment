# String Number Calculator - TDD Project
This project demonstrates Test-Driven Development (TDD) practices by implementing a string number calculator.
Link: https://blog.incubyte.co/blog/tdd-assessment/

## Project Description
The calculator takes a string input containing numbers and returns their sum. The implementation follows specific requirements and handles various input formats.

## Requirements
1. Basic Functionality:
   - Input: A string of comma-separated numbers
   - Output: An integer representing the sum of the numbers

2. Examples:
   - Input: `""` → Output: `0`
   - Input: `"1"` → Output: `1`
   - Input: `"1,5"` → Output: `6`

3. Additional Features:
   - Handle any amount of numbers in the input string
   - Support new lines between numbers (e.g., `"1\n2,3"` should return `6`)
   - Support custom delimiters:
     - Format: `"//[delimiter]\n[numbers...]"`
     - Example: `"//;\n1;2"` should return `3`
   - Throw an exception for negative numbers with message: "negative numbers not allowed <negative_number>"

## Technical Details
* Ruby version: 3.0.0 or higher
* Testing Framework: RSpec

## How to Run the Test Suite
```bash
rspec
```

## Project Structure
The project follows a simple structure with:
- `lib/` - Contains the main calculator implementation
- `spec/` - Contains the test files

## Development Approach
This project is developed using Test-Driven Development (TDD) methodology, where tests are written before implementing the actual functionality. Each feature is implemented following the Red-Green-Refactor cycle.
