---
name: seo
description: >
  Optimize public-facing pages for traditional SEO and AI/LLM search.
  Use when creating, modifying, reviewing, or auditing pages, content,
  metadata, structured data, internal links, sitemap, robots, or GEO.
---

# SEO & GEO Skill — Concursos Quiz Brasil

## Purpose

Optimize the Concursos Quiz Brasil website for:

1. Traditional search engines such as Google and Bing.
2. AI-powered search and answer engines.
3. LLM retrieval, summarization, and citation.
4. Users searching for Brazilian public-service exam information.

SEO is part of implementation, not a cosmetic step performed after development.

Do not optimize for keyword density or search-engine manipulation.

Optimize for:

`Search Intent → Topic → Entities → Questions → Evidence → Structure → Internal Relationships → User Outcome`

---

# 1. When to Use This Skill

Use this skill whenever a task involves:

- Creating a public page
- Modifying an existing public page
- Creating or modifying SEO metadata
- Creating content
- Creating landing pages
- Creating contest/exam pages
- Creating article or educational content
- Creating category or listing pages
- Creating programmatic pages
- Modifying navigation or internal linking
- Modifying structured data
- Modifying canonical URLs
- Modifying robots or sitemap behavior
- Improving visibility in Google or AI search
- Reviewing GEO/LLM optimization

If a task involves both SEO and another specialized area, combine this skill with the relevant skill instead of replacing it.

---

# 2. Core Principles

Every public page should make the following obvious:

- What is this page about?
- Who is it for?
- What question or problem does it solve?
- What information can the user find here?
- Which entities are involved?
- Why should the information be trusted?
- Which related pages provide additional context?

Prefer useful, explicit, structured information over SEO tricks.

Never add content only because it might contain a keyword.

---

# 3. Search Intent

Before creating or substantially changing a page, identify its primary search intent.

Possible intents include:

- Informational
- Navigational
- Commercial investigation
- Transactional
- Comparison
- Problem/solution
- Local
- Educational
- Exam preparation

A page should satisfy one dominant intent clearly.

Do not combine unrelated intents into a single page merely to capture more queries.

---

# 4. Topic and Semantic Coverage

Do not focus exclusively on an exact keyword.

Identify:

- Primary topic
- Related concepts
- Synonyms
- Subtopics
- Common questions
- User problems
- Use cases
- Alternatives
- Comparisons
- Important entities

The goal is topical completeness, not keyword repetition.

Use natural language and domain terminology.

---

# 5. Title

Every indexable page should have a unique title.

Requirements:

- Clearly describe the page.
- Put important information early.
- Reflect search intent.
- Be useful to humans.
- Avoid keyword stuffing.
- Avoid generic titles.
- Avoid duplicated titles.

A useful pattern is:

`Primary Topic + Specific Context | Brand`

Do not force the brand into the title when it makes the title worse.

---

# 6. Meta Description

Every indexable page should have a useful meta description.

It should:

- Describe the actual page.
- Reflect the search intent.
- Explain the value to the user.
- Use important terminology naturally.
- Avoid generic marketing language.
- Avoid keyword stuffing.

The description must correspond to visible page content.

---

# 7. URL

Prefer URLs that are:

- Short
- Stable
- Descriptive
- Human-readable
- Lowercase
- Hyphen-separated
- Semantically meaningful

Avoid:

- Unnecessary parameters
- Random IDs when meaningful slugs are available
- Keyword stuffing
- Excessive nesting

Never change an established URL casually.

Before changing an existing URL, evaluate:

- Existing links
- Canonical references
- Sitemap
- Search visibility
- Required redirects

---

# 8. Heading Structure

Use semantic headings.

Normally:

- One clear H1
- Logical H2 sections
- H3 subsections where necessary

Headings must represent information architecture.

Do not use headings only for visual styling.

The H1 must clearly identify the main subject.

---

# 9. Answer-First Content

Important questions should receive direct answers.

Prefer:

1. Clear question or concept.
2. Direct answer.
3. Explanation.
4. Supporting details.
5. Related information or links.

Avoid long introductions before answering an obvious question.

Example:

Bad:

"Understanding this type of public-service exam requires looking at several factors..."

Better:

"A concurso da Polícia Federal é um processo seletivo para ingresso em cargos da Polícia Federal. Os principais dados a verificar são cargos, vagas, remuneração, escolaridade, banca e datas."

The first paragraph of an important section should often remain understandable if extracted without the rest of the page.

---

# 10. LLM Citability

Optimize important content for retrieval and citation by AI systems.

A section is highly citable when it is:

- Self-contained
- Specific
- Factual
- Contextualized
- Clearly labeled
- Easy to extract
- Easy to understand without surrounding visual context

Avoid vague statements such as:

"Ele oferece boas oportunidades."

Prefer:

"O concurso oferece vagas para cargos definidos pelo edital, com requisitos de escolaridade, remuneração e número de vagas específicos para cada cargo."

Do not fabricate facts to make content appear authoritative.

---

# 11. Entity Optimization

Identify important entities and use consistent names.

For Concursos Quiz Brasil, important entities commonly include:

- Concurso
- Órgão
- Cargo
- Banca organizadora
- Estado
- Cidade
- Escolaridade
- Salário/remuneração
- Número de vagas
- Data da prova
- Período de inscrição
- Disciplinas
- Questões
- Provas anteriores
- Simulados

Make relationships between entities explicit when useful.

Examples:

`Concurso → organizado por → Banca`

`Concurso → oferece → Cargo`

`Cargo → exige → Escolaridade`

`Cargo → possui → Remuneração`

`Concurso → possui → Disciplinas`

`Disciplina → possui → Questões`

This semantic structure should influence content, navigation, internal linking, and structured data when appropriate.

---

# 12. Concursos Quiz Brasil Content Architecture

Think of the site as a connected knowledge graph rather than a collection of isolated pages.

A conceptual structure is:

```text
Concurso
├── Órgão
├── Cargos
├── Estado
├── Cidade
├── Banca
├── Escolaridade
├── Vagas
├── Remuneração
├── Inscrições
├── Data da prova
├── Disciplinas
├── Questões
├── Provas anteriores
└── Simulados
```

Before creating a page, inspect the existing site structure and identify related pages.

Avoid creating isolated content.

---

# 13. Internal Linking

Important pages should participate in a logical internal-link structure.

When creating or modifying content:

1. Search the project for related routes/pages.
2. Identify semantically relevant destinations.
3. Add links where they help the user.
4. Use descriptive anchor text.
5. Avoid excessive linking.
6. Avoid generic anchors such as "clique aqui".

Think in topical clusters:

```text
Pillar / Main Topic
        ↓
Supporting Pages
        ↓
Detailed Resources
```

A page about a specific concurso should link naturally to relevant:

- Órgão
- Cargo
- Banca
- Disciplinas
- Questões
- Provas
- Simulados
- Related concursos

Do not create artificial link networks.

---

# 14. Breadcrumbs

Use breadcrumbs when they improve the site's information architecture.

Breadcrumbs should:

- Reflect the actual hierarchy.
- Use meaningful labels.
- Link to real pages.
- Match canonical URLs.
- Be semantically consistent.

Use `BreadcrumbList` structured data when appropriate.

---

# 15. Structured Data / JSON-LD

Use Schema.org structured data only when there is a real semantic match.

Potential types include:

- Organization
- WebSite
- WebPage
- BreadcrumbList
- Article
- BlogPosting
- FAQPage
- ItemList
- Course
- EducationalOrganization
- Event
- Person

Only use a schema type when it accurately represents the page.

Structured data must agree with visible content.

Never fabricate:

- Reviews
- Ratings
- Prices
- Authors
- Credentials
- Dates
- Vacancies
- Salaries
- Events
- FAQs
- Availability
- Organizations

After changing JSON-LD, validate syntax and consistency.

---

# 16. Contest Data Integrity

For contest-related pages, distinguish between:

- Verified data
- Data from official edital/source
- Derived information
- Unknown information

Never invent missing contest data.

When information can change over time, consider:

- Publication date
- Last update date
- Source
- Current status

Do not present outdated information as current.

---

# 17. E-E-A-T and Trust

For important educational and contest information, strengthen trust through real signals.

When applicable, expose:

- Author
- Organization
- Editorial responsibility
- Sources
- Methodology
- Publication date
- Last updated date
- Contact information

Never fabricate credentials, expertise, authorship, statistics, or first-hand experience.

---

# 18. Images

Meaningful images should have:

- Useful alt text
- Appropriate dimensions
- Efficient formats
- Responsive behavior where appropriate
- Descriptive filenames when practical

Alt text should describe the informational purpose of the image.

Do not stuff keywords into alt text.

Decorative images should generally have empty alt text.

Do not place essential information exclusively inside images.

---

# 19. Accessibility

SEO and accessibility should be implemented together.

Check:

- Semantic HTML
- Heading hierarchy
- Image alt text
- Link names
- Button labels
- Form labels
- Keyboard accessibility
- Accessible landmarks

Do not sacrifice accessibility for SEO.

---

# 20. Technical SEO

For public pages, consider:

- HTTP status
- Canonical URL
- Robots directives
- robots.txt
- Sitemap
- Redirects
- Duplicate URLs
- Rendering
- Crawlability
- Indexability
- Internal links

Important public content should be accessible to search crawlers.

---

# 21. Client-Side Rendering

Inspect the project's actual frontend architecture before applying framework-specific rules.

Do not assume Next.js.

Regardless of framework, avoid making SEO-critical information dependent exclusively on client-side JavaScript when server-rendered or static HTML is possible.

SEO-critical content includes:

- Main title
- H1
- Main content
- Important links
- Important entity information

---

# 22. Metadata Architecture

Avoid duplicating SEO metadata logic unnecessarily.

Prefer a consistent metadata strategy across the application.

Important metadata may include:

- Title
- Description
- Canonical
- Robots
- Open Graph
- Social metadata
- Language/alternate URLs where applicable

Dynamic pages should derive metadata from the same source of truth as page content whenever practical.

---

# 23. Open Graph

Important public pages should have appropriate Open Graph metadata.

Consider:

- `og:title`
- `og:description`
- `og:url`
- `og:type`
- `og:image`

The Open Graph representation must accurately describe the page.

---

# 24. Sitemap

Indexable canonical pages should be discoverable through sitemap architecture when appropriate.

Avoid including:

- Noindex pages
- Redirect URLs
- Duplicate URLs
- Broken URLs
- Non-canonical URLs

Keep sitemap generation synchronized with the application's route architecture.

---

# 25. Robots

Do not accidentally block important content.

Before changing robots rules, verify:

- Public routes
- Private routes
- Important assets
- Search crawlers
- AI/search crawlers
- Rendering requirements

Do not block AI crawlers by default.

Any crawler restriction must have a deliberate reason.

---

# 26. GEO / AI Search

Treat GEO as a first-class optimization target.

Content should be:

- Easy to retrieve
- Easy to understand
- Easy to summarize
- Easy to cite
- Semantically structured
- Entity-rich
- Factually explicit
- Trustworthy
- Up to date

For important concepts, prefer sections such as:

```text
What is X?
How does X work?
Who is X for?
What are the requirements?
What are the benefits?
What are the limitations?
How does X compare with Y?
```

Only include questions that are genuinely useful.

Do not create artificial FAQ blocks.

---

# 27. AI Crawler Accessibility

Public, useful content should generally remain accessible to relevant search and AI crawlers unless there is a deliberate business, privacy, legal, or security reason to restrict it.

When modifying robots.txt, evaluate the impact on:

- Google
- Bing
- Search crawlers
- AI/search crawlers
- Rendering resources

---

# 28. Programmatic SEO

The Concursos Quiz Brasil may contain many pages generated from structured contest data.

Programmatic SEO must not become mass production of low-value pages.

Before creating pages at scale, verify:

- Real search intent
- Unique useful value
- Meaningful data
- Unique or substantially useful content
- Unique metadata
- Correct canonical
- Internal links
- Appropriate structured data
- Thin-content risk
- Duplicate-content risk

If a page does not provide meaningful unique value, question whether it should be indexable.

---

# 29. Comparison Pages

Comparison and alternative pages must provide genuine decision-making value.

When appropriate, compare:

- Options
- Key differences
- Best use cases
- Advantages
- Limitations
- Verified pricing/data
- Relevant decision criteria

Use tables when they improve comprehension.

Do not create superficial pages targeting competitor keywords.

---

# 30. Performance

SEO implementation must not unnecessarily degrade performance.

Prioritize:

- Fast initial rendering
- Optimized images
- Minimal JavaScript
- Efficient loading
- Caching where appropriate
- Reduced third-party scripts
- Stable layout
- Good Core Web Vitals

Do not add client-side SEO tooling that creates unnecessary performance cost.

---

# 31. Validation Workflow

When creating or modifying a public page:

1. Inspect the existing implementation.
2. Identify primary search intent.
3. Identify primary topic.
4. Identify important entities.
5. Identify useful questions.
6. Inspect related existing pages.
7. Define or validate URL.
8. Define title.
9. Define meta description.
10. Create semantic heading structure.
11. Create answer-first content.
12. Add useful internal links.
13. Add structured data when appropriate.
14. Validate canonical and robots behavior.
15. Validate Open Graph.
16. Review images and accessibility.
17. Review GEO/LLM citability.
18. Perform a final SEO review.

---

# 32. Existing Pages

When modifying an existing page:

1. Inspect current SEO implementation.
2. Preserve valid metadata and structured data.
3. Identify the actual problem.
4. Make the smallest effective change.
5. Check for regressions.
6. Revalidate canonical, indexing, schema, links and metadata.

Do not rewrite working SEO architecture without a reason.

---

# 33. Prioritization

Prioritize findings as:

## P0 — Blocking

- Accidental noindex
- Important content blocked by robots
- Incorrect canonical
- Broken route/status
- Critical rendering/indexability failure

## P1 — High Impact

- Missing/incorrect metadata
- Major content gaps
- Poor information architecture
- Important internal linking problems
- Major structured-data problems
- Significant performance problems

## P2 — Optimization

- Semantic improvements
- Better headings
- Better answer-first sections
- Better internal links
- Better GEO/citability
- Image optimization
- Trust improvements

## P3 — Refinement

- Minor metadata improvements
- Minor semantic improvements
- Non-critical enhancements

---

# 34. Anti-Patterns

Never:

- Keyword stuff
- Hide text
- Create doorway pages
- Create fake FAQs
- Fabricate reviews
- Fabricate statistics
- Fabricate authors
- Fabricate credentials
- Fabricate contest data
- Create meaningless programmatic pages
- Add irrelevant schema
- Add schema for invisible/fabricated content
- Create artificial internal-link networks
- Block crawlers without a deliberate reason

User value takes precedence over search manipulation.

---

# 35. Final Checklist

Before considering an SEO-related implementation complete:

## Intent
- [ ] Search intent is clear
- [ ] Primary topic is clear
- [ ] Page satisfies the dominant intent

## Content
- [ ] H1 is meaningful
- [ ] Heading hierarchy is logical
- [ ] Important questions are answered
- [ ] Content is answer-first where appropriate
- [ ] Important entities are explicit
- [ ] Claims have enough context
- [ ] No fabricated information

## Metadata
- [ ] Unique title
- [ ] Useful meta description
- [ ] Correct canonical
- [ ] Correct robots directives
- [ ] Open Graph is appropriate

## Architecture
- [ ] Relevant internal links exist
- [ ] Anchor text is descriptive
- [ ] Page is not unnecessarily orphaned
- [ ] Breadcrumbs exist when useful
- [ ] Sitemap behavior is correct

## Structured Data
- [ ] JSON-LD is valid
- [ ] Schema type is appropriate
- [ ] Structured data matches visible content
- [ ] No fabricated properties

## Technical
- [ ] Page is crawlable
- [ ] Page is indexable when intended
- [ ] Important content is available in crawlable HTML
- [ ] No accidental duplicate/canonical problems
- [ ] Performance impact is acceptable

## GEO / LLM
- [ ] Important concepts are explicitly defined
- [ ] Important questions have direct answers
- [ ] Entities are clearly identified
- [ ] Sections can be understood independently
- [ ] Content is easy to retrieve and cite
- [ ] Content is factual and contextualized

## Accessibility
- [ ] Semantic HTML
- [ ] Useful alt text
- [ ] Accessible links/buttons
- [ ] Heading structure supports assistive technologies
