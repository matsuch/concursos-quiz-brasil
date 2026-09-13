# Concursos Quiz Brasil — Project Instructions

## Project

Concursos Quiz Brasil is a Brazilian platform focused on public-service
exams (concursos públicos), including contest information, positions,
subjects, questions, previous exams, quizzes and study resources.

The project is a web application. Before making framework-specific
assumptions, inspect the existing codebase and follow its current
architecture and conventions.

---

## General Development Rules

### 1. Inspect Before Changing

Before modifying code:

- Inspect the relevant existing implementation.
- Understand how the feature currently works.
- Reuse existing patterns and components when possible.
- Check related routes, components, utilities and data models.
- Avoid changing unrelated files.

Do not rewrite working code without a clear reason.

### 2. Preserve Existing Architecture

Follow the architecture already established in the repository.

Do not introduce a new architectural pattern merely because another
pattern is preferred.

Before adding:

- dependencies
- libraries
- frameworks
- abstractions
- database structures
- utilities

verify whether an existing solution already exists in the project.

### 3. Minimize Dependencies

Do not add a dependency when the existing stack can solve the problem.

If a new dependency is genuinely necessary:

1. Explain why it is needed.
2. Check whether an existing dependency already provides the capability.
3. Use the smallest appropriate solution.

### 4. Preserve Existing Functionality

When implementing a feature or fix:

- Preserve unrelated behavior.
- Avoid regressions.
- Do not remove existing functionality unless explicitly requested.
- Keep existing API contracts stable unless the task requires a change.

### 5. Code Quality

Prefer:

- Simple solutions
- Strong typing
- Reusable components
- Clear naming
- Small focused functions
- Existing project conventions
- Maintainable code

Avoid unnecessary abstraction.

Do not create abstractions for hypothetical future requirements.

---

# Skills

Use the specialized skill that matches the task.

Skills are located under:

`.claude/skills/`

## Neon

Use:

`.claude/skills/neon/`

for tasks involving Neon, including Neon-specific configuration,
integration, infrastructure or workflows.

## Neon PostgreSQL

Use:

`.claude/skills/neon-postgres/`

for PostgreSQL/database tasks involving the project's Neon database.

Follow the skill's existing instructions and inspect the current schema
before modifying database structures or queries.

## SEO & GEO

Use:

`.claude/skills/seo/SKILL.md`

whenever a task involves:

- Public-facing pages
- SEO
- GEO
- AI/LLM search optimization
- Search intent
- Page content
- Metadata
- Titles
- Meta descriptions
- Canonical URLs
- Robots
- Sitemap
- Structured data
- JSON-LD
- Schema.org
- Breadcrumbs
- Internal linking
- Programmatic SEO
- Search visibility
- AI Overviews
- LLM retrieval or citation
- Content architecture

SEO/GEO must be considered during implementation, not only after
the page has been built.

When a task involves both SEO and another specialized area, use the
relevant skills together.

Do not modify database or infrastructure architecture merely because
SEO is involved.

---

# Skill Selection

Before starting a task, determine whether one or more specialized
skills apply.

Examples:

### Creating a new public page

Use:

- Existing frontend/project conventions
- SEO skill

### Creating a contest data feature

Use:

- Relevant application conventions
- Neon/PostgreSQL skill when database work is involved
- SEO skill if the feature creates or changes public indexable pages

### Modifying a database query

Use:

- Neon PostgreSQL skill

Do not apply unrelated skills unnecessarily.

---

# Public Pages

Any page accessible to users or search engines should be treated as
potentially indexable unless the product requirements explicitly say
otherwise.

When creating or modifying a public page, consider:

- Search intent
- Semantic structure
- Content quality
- Metadata
- Canonical URL
- Indexability
- Internal linking
- Structured data
- Accessibility
- Performance
- GEO/LLM discoverability and citability

Follow the complete SEO workflow defined in:

`.claude/skills/seo/SKILL.md`

---

# Concursos Quiz Brasil — Domain Model

The project operates in the public-service exam domain.

Important concepts commonly include:

- Concurso
- Órgão
- Cargo
- Banca organizadora
- Estado
- Cidade
- Escolaridade
- Remuneração
- Número de vagas
- Inscrições
- Data da prova
- Disciplinas
- Questões
- Provas anteriores
- Simulados

When implementing user-facing functionality, preserve the semantic
relationships between these concepts.

For example:

`Concurso → oferece → Cargo`

`Concurso → organizado por → Banca`

`Cargo → exige → Escolaridade`

`Cargo → possui → Remuneração`

`Concurso → possui → Disciplinas`

`Disciplina → possui → Questões`

Do not invent domain data.

---

# Data Integrity

Never fabricate:

- Contest information
- Vacancies
- Salaries
- Dates
- Registration periods
- Exam boards
- Questions
- Sources
- Authors
- Reviews
- Ratings
- Credentials
- Statistics

If required information is unavailable, inspect the existing data sources
or clearly identify the information as unavailable.

For time-sensitive contest information, preserve appropriate date/update
context.

---

# Content and User Experience

Content should primarily serve the user.

Prefer:

- Clear language
- Direct answers
- Useful organization
- Descriptive headings
- Scannable sections
- Tables when useful
- Lists when useful
- Relevant contextual links

Avoid adding content simply to increase page length.

Avoid keyword stuffing and repetitive SEO text.

---

# Programmatic Pages

The platform may contain many pages generated from structured contest
data.

Do not create large numbers of near-duplicate pages solely for SEO.

Before introducing programmatic public pages, consider:

- Search intent
- Unique user value
- Data completeness
- Content uniqueness
- Metadata uniqueness
- Internal linking
- Canonical behavior
- Structured data
- Indexability
- Thin-content risk

---

# Accessibility

Accessibility is part of implementation quality.

Preserve:

- Semantic HTML
- Logical headings
- Accessible buttons
- Descriptive links
- Appropriate form labels
- Useful image alt text
- Keyboard accessibility

Do not sacrifice accessibility for visual design or SEO.

---

# Validation

After completing a meaningful implementation:

1. Review the changed files.
2. Check for TypeScript/lint/build errors when applicable.
3. Verify that existing functionality remains intact.
4. Check relevant routes and components.
5. Validate data/database changes when applicable.
6. If public-facing functionality changed, perform the SEO/GEO review.
7. Do not claim a check was performed if it was not actually performed.

Use the project's existing scripts and commands when available.

---

# Change Scope

Keep changes focused.

Do not:

- Refactor unrelated code
- Rename unrelated files
- Change dependencies unnecessarily
- Modify database structures without need
- Change visual design outside the requested scope
- Remove existing functionality
- Introduce unrelated tooling

If you discover an unrelated issue, mention it separately rather than
silently expanding the scope.

---

# Before Finishing

Provide a concise summary containing:

1. What was changed.
2. Which files were created or modified.
3. Which relevant skills were used.
4. Any validation/tests performed.
5. Any known limitations or follow-up items.