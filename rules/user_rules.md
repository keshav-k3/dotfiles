# User Coding Standards & Refactoring Guide
## Basic Interaction Rules
1. Always respond to me in English
2. When providing code, add English comments for key points and harder-to-understand sections
3. When generated code exceeds 20 lines, consider consolidating the code and evaluate whether the granularity is appropriate
## Code Quality & Refactoring Standards
### General Coding Standards
1. Avoid unnecessary object copying or cloning
2. Avoid deep nesting; return early instead
3. Use appropriate concurrency control mechanisms
## Core Development Rules
**RULE 1:** Keep going until the job is completely solved before ending your turn. Do not stop mid-task or leave incomplete work.
**RULE 2:** If you are unsure about tools or files, open them and examine their contents. Do not hallucinate or make assumptions about file structures, tool capabilities, or code behavior.
**RULE 3:** Plan thoroughly before every tool call, and reflect on the outcome after. Always verify that your actions achieved the intended result.
## Code Smell Identification & Treatment
Based on Martin Fowler's core insights in "Refactoring," here are code smells to watch for and how to handle them:
### 1. Mysterious Names
- **Problem**: Variable, function, class, or module names don't clearly express their purpose and meaning
- **Solution**: Rename with descriptive names that make code self-explanatory
- **Example**: Change `fn p()` to `fn calculate_price()`
### 2. Duplicate Code
- **Problem**: Identical or similar code appears in multiple places
- **Solution**: Extract into functions, classes, or modules; apply template method pattern
- **Example**: Extract repeated validation logic into a shared function
### 3. Long Functions
- **Problem**: Functions are too long, making them hard to understand and maintain
- **Solution**: Extract functions, breaking large functions into multiple smaller ones
- **Example**: Break a 200-line processing function into several single-responsibility functions
### 4. Large Class/Struct
- **Problem**: Class or struct takes on too many responsibilities with excessive fields and methods
- **Solution**: Extract classes, grouping related fields and methods into new classes
- **Example**: Extract address-related fields from User class into an Address class
### 5. Long Parameter Lists
- **Problem**: Too many function parameters make it hard to understand and use
- **Solution**: Introduce parameter objects, combining related parameters into objects
- **Example**: Change `fn create_user(name, email, phone, address, city, country)` to `fn create_user(user_info: UserInfo)`
### 6. Divergent Change
- **Problem**: A class gets modified for multiple different reasons
- **Solution**: Split the class based on reasons for change
- **Example**: Split a class that handles both database operations and business logic into two separate classes
### 7. Shotgun Surgery
- **Problem**: One change requires modifications across multiple classes
- **Solution**: Move related functionality into the same class
- **Example**: Consolidate order processing logic scattered across multiple classes into a single OrderProcessor class
### 8. Feature Envy
- **Problem**: A function shows more interest in other classes than its own
- **Solution**: Move the function or extract a function
- **Example**: Move methods that heavily use another class's data into that class
### 9. Data Clumps
- **Problem**: The same data items always appear together
- **Solution**: Extract into objects
- **Example**: Extract frequently co-occurring start and end dates into a DateRange class
### 10. Primitive Obsession
- **Problem**: Using primitive types to represent data with specific meaning
- **Solution**: Replace primitives with small objects
- **Example**: Replace phone number strings with a PhoneNumber class
## Refactoring Process Principles
### 1. Small Step Refactoring
- Make only one small change at a time, then test
- Commit frequently, keeping code always working
### 2. Test Safety Net
- Ensure adequate test coverage before refactoring
- Run tests after each change to ensure behavior remains unchanged
### 3. Code Review
- Conduct code reviews after refactoring to ensure quality
- Share refactoring experiences to improve team capabilities
## Code Readability Optimization
### 1. Naming Conventions
- Use meaningful, descriptive names
- Follow project or language naming standards
- Avoid abbreviations and single-letter variables (except conventional ones like 'i' in loops)
### 2. Code Organization
- Keep related code together
- Functions should do one thing
- Maintain appropriate abstraction levels
### 3. Comments & Documentation
- Comments should explain why, not what
- Provide clear documentation for public APIs
- Update comments to reflect code changes
## Performance-Related Refactoring
### 1. Memory Optimization
- Avoid unnecessary object creation
- Release resources that are no longer needed promptly
- Watch out for memory leak issues
### 2. Computation Optimization
- Avoid redundant calculations
- Use appropriate data structures and algorithms
- Defer computation until necessary
### 3. Parallelization Optimization
- Identify tasks that can be parallelized
- Avoid unnecessary synchronization
- Pay attention to thread safety issues