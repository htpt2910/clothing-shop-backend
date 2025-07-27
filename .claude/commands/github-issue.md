---
description: Read GitHub issue and implement the required backend functionality
argument-hint: issue-number
---

# Read GitHub Issue and Implement Backend

Read GitHub issue #$ARGUMENTS from the clothing-shop-backend repository and automatically implement the required backend functionality.

## Step 1: Fetch Issue Details
First, read the issue content:
```bash
gh issue view $ARGUMENTS --repo htpt2910/clothing-shop-backend
```

## Step 2: Analyze Requirements
Based on the issue content, identify:
- What type of API/feature is requested
- Database schema changes needed
- Model relationships required
- Controller actions needed
- Authentication/authorization requirements
- Validation rules
- API response format

## Step 3: Create Implementation Plan
Create a detailed plan with:
- Summary of the issue
- Database migrations needed
- Model changes/additions
- Controller implementation
- Route definitions
- Testing approach
- API documentation updates

## Step 4: Implement Solution
Start implementing the solution step by step:
1. Create/update database migrations: `rails generate migration`
2. Update/create models with proper associations and validations
3. Implement controller actions with proper error handling
4. Define routes in config/routes.rb
5. Add seed data if necessary
6. Follow Rails conventions and existing patterns

## Step 5: Verify Implementation
After implementation:
1. Run migrations: `rails db:migrate`
2. Run tests: `rails test`
3. Check for syntax errors and linting
4. Test API endpoints manually or with tools
5. Ensure proper error handling and response formats
6. Verify database constraints and validations

## Important Notes
- Always use TodoWrite to track progress
- Follow Rails conventions and existing code patterns
- Use proper HTTP status codes for API responses
- Implement proper error handling and validation
- Add appropriate tests for new functionality
- Ask for clarification if requirements are unclear
- Commit changes only when explicitly requested