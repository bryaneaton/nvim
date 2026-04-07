# Project Name - Claude Session Memory

## PROJECT CONTEXT

### Overview
[Brief description of the project, its purpose, and key technologies]

### Architecture
[Key architectural decisions, patterns, and conventions used in this project]

### Development Workflow
[How features are developed, tested, and deployed in this project]

## CRITICAL RULES

### Permissions
You can execute any read command, rg, grep , cat , tree, etc. 

### 1. PR Workflow Required
**CRITICAL: All changes MUST use Pull Requests**
- **NEVER commit directly to main/master**
- **NEVER self-attribute as Claude** in commit messages or PRs (no "Co-Authored-By: Claude" or similar)
- Create feature branches for all changes (e.g., `feat/add-authentication`, `fix/login-bug`)
- Create PR via `gh pr create` for review before merge
- Use descriptive commit messages following conventional commits format

### 2. Code Quality Standards
- Run tests before committing: `npm test` / `pytest` / `[test command]`
- Run linting before committing: `[lint command]`
- Follow existing code style and patterns in the project
- Add tests for new functionality
- Update documentation when making significant changes

### 3. Security First
- Never commit secrets, API keys, or credentials
- Validate user inputs and sanitize outputs
- Follow OWASP guidelines for web security
- Use environment variables for configuration

## COMMON OPERATIONS

### Git Workflow
```bash
# Start new feature
git checkout main && git pull
git checkout -b feat/descriptive-name

# Make changes, test, commit
git add -A && git commit -m "feat: descriptive message"
git push -u origin feat/descriptive-name

# Create PR for review
gh pr create --title "Feat: Descriptive Title" --body "## Summary\n\n- Brief description of changes\n\n## Testing\n\n- How changes were tested"
```

### Testing
```bash
# Run tests
[project-specific test commands]

# Run specific test file
[command to run individual test file]

# Run tests with coverage
[coverage command if applicable]
```

### Development Server
```bash
# Start development server
[dev server command]

# Build for production
[build command]
```

## CODING GUIDELINES

### Code Organization
- Follow established file and directory structure
- Use meaningful variable and function names
- Keep functions small and focused on single responsibility
- Group related functionality together

### Error Handling
- Handle errors gracefully with appropriate user feedback
- Log errors with sufficient context for debugging
- Don't expose internal error details to end users
- Use try-catch blocks appropriately

### Performance Considerations
- Profile before optimizing
- Consider database query efficiency
- Minimize network requests
- Cache appropriately

## DEPLOYMENT

### Environment Setup
[Instructions for setting up local development environment]

### Deployment Process
[How code gets deployed to staging/production]

### Environment Variables
[List of required environment variables and their purposes]

## TROUBLESHOOTING

### Common Issues
[List of frequent problems and their solutions]

### Debug Commands
```bash
# Useful debugging commands
[project-specific debug commands]
```

### Logs Location
[Where to find application logs]

## TEAM CONVENTIONS

### Branch Naming
- `feat/feature-name` - New features
- `fix/bug-description` - Bug fixes
- `docs/update-readme` - Documentation updates
- `refactor/component-name` - Code refactoring
- `test/add-unit-tests` - Adding tests

### Commit Messages
Follow [Conventional Commits](https://www.conventionalcommits.org/):
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `style:` - Code style changes (no logic changes)
- `refactor:` - Code refactoring
- `test:` - Adding or updating tests
- `chore:` - Maintenance tasks

### Code Review Guidelines
- Review for logic correctness and potential bugs
- Check for security vulnerabilities
- Ensure code follows project conventions
- Verify tests are included and passing
- Suggest improvements for readability and performance

## PROJECT-SPECIFIC NOTES

[Add any project-specific information here:]
- Special build requirements
- Third-party integrations
- API documentation links
- Deployment considerations
- Team contact information
