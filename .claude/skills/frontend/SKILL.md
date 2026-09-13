---
name: frontend
description: >
  Build, modify, and review frontend interfaces with a strong focus on
  consistency, usability, accessibility, responsive behavior, maintainability,
  performance, and product quality. Use when creating or changing React,
  Next.js, TypeScript, CSS, UI components, layouts, pages, forms, dashboards,
  navigation, or responsive interfaces.
---

# Frontend Skill

## Purpose

Build frontend interfaces that are:

- consistent with the existing product;
- easy to understand and use;
- responsive across screen sizes;
- accessible;
- performant;
- maintainable;
- visually coherent;
- aligned with the product's information architecture;
- safe to modify without breaking existing behavior.

This skill is complementary to the SEO skill.

The SEO skill governs search visibility, semantic structure, metadata,
structured data, crawlability, and GEO/LLM discoverability.

This skill governs the actual frontend implementation and user experience.

---

# 1. When to Use This Skill

Use this skill when:

- creating a new page;
- modifying an existing page;
- creating or refactoring components;
- changing layouts;
- changing navigation;
- building forms;
- creating dashboards;
- implementing responsive behavior;
- improving accessibility;
- improving frontend performance;
- reviewing UI consistency;
- implementing loading, empty, error, and success states;
- integrating frontend code with APIs or databases;
- changing typography, spacing, colors, cards, tables, buttons, or other UI primitives;
- fixing frontend bugs.

Before making substantial frontend changes, inspect the existing project structure
and implementation.

---

# 2. Inspect Before Changing

Never redesign an existing interface blindly.

Before modifying a page, inspect:

- `package.json`;
- application entry points;
- routing structure;
- existing components;
- layout components;
- design tokens;
- CSS/Tailwind configuration;
- theme configuration;
- existing UI libraries;
- icon libraries;
- data-fetching patterns;
- authentication patterns;
- existing responsive behavior;
- existing page patterns.

Search the codebase for similar implementations before creating new ones.

Prefer reuse over duplication.

If the project already has:

- a Button component, use it;
- a Card component, use it;
- a Modal component, use it;
- a Table component, use it;
- a form system, use it;
- a typography system, use it;
- spacing tokens, use them;
- color tokens, use them.

Do not introduce a second implementation of an existing primitive without a
clear reason.

---

# 3. Preserve the Existing Architecture

Do not introduce a new frontend architecture merely because it is familiar.

Preserve:

- the existing framework;
- routing approach;
- component architecture;
- styling approach;
- state-management approach;
- data-fetching approach;
- build tooling;
- package manager;
- existing UI libraries.

Do not migrate:

- React to another framework;
- CSS to Tailwind;
- Tailwind to another CSS system;
- one state library to another;
- one router to another;

unless explicitly requested.

Avoid adding dependencies for problems that can be solved with existing tools
or simple native browser APIs.

---

# 4. Product-First UI

The interface should make the user's primary task obvious.

For every page, identify:

1. What is the user trying to accomplish?
2. What information is most important?
3. What is the primary action?
4. What should happen after the action?
5. What information can be secondary?

Prioritize content accordingly.

Avoid interfaces where:

- everything has equal visual weight;
- secondary actions dominate the primary action;
- decorative elements compete with useful information;
- important information is hidden unnecessarily;
- users must infer what to do next.

---

# 5. Concursos Quiz Brasil Context

When working on Concursos Quiz Brasil, remember that the frontend represents
a public-service-exam information platform.

Common entities include:

- concursos;
- órgãos;
- cargos;
- bancas;
- estados;
- cidades;
- escolaridade;
- remuneração;
- vagas;
- inscrições;
- datas;
- provas;
- disciplinas;
- questões;
- simulados;
- concursos anteriores.

Interfaces should make relationships between these entities understandable.

For example, a concurso page may expose:

- órgão;
- cargo;
- banca;
- situação;
- número de vagas;
- remuneração;
- escolaridade;
- localidade;
- inscrição;
- data da prova;
- disciplinas;
- questões relacionadas;
- provas anteriores;
- simulados;
- related concursos.

Do not overload the initial view with every available field.

Use progressive disclosure where appropriate.

---

# 6. Information Hierarchy

Every page should have a clear hierarchy.

Recommended hierarchy:

1. Page purpose/title
2. Critical information
3. Primary action
4. Supporting information
5. Related information
6. Secondary actions

Use visual hierarchy through:

- typography;
- spacing;
- grouping;
- alignment;
- contrast;
- component size;
- position.

Do not rely only on color to communicate hierarchy.

---

# 7. Layout

Prefer simple, predictable layouts.

Use:

- consistent containers;
- consistent content widths;
- predictable alignment;
- logical grouping;
- sufficient whitespace;
- clear section boundaries.

Avoid excessive:

- cards;
- borders;
- shadows;
- gradients;
- decorative containers;
- nested boxes.

Not every piece of information needs to be inside a card.

A page composed entirely of cards often creates unnecessary visual noise.

---

# 8. Responsive Design

Build mobile-first when practical.

The interface must remain usable on:

- small mobile screens;
- large mobile screens;
- tablets;
- laptops;
- large desktop monitors.

Do not simply shrink the desktop interface.

Consider what should change structurally.

Examples:

- multi-column layouts can become stacked;
- tables may become horizontally scrollable or transform into responsive
  representations;
- navigation may collapse;
- filters may move into a drawer;
- secondary information may move below primary content;
- large action groups may become vertically stacked.

Avoid:

- horizontal overflow of the entire page;
- tiny text;
- buttons that are difficult to tap;
- fixed-width components that break on mobile;
- desktop-only interactions.

---

# 9. Responsive Breakpoints

Use the project's existing breakpoint system.

Do not create arbitrary breakpoints for every component.

Prefer a small, consistent set of breakpoints.

Components should adapt based on available space rather than relying on
device-specific assumptions.

Do not write logic such as:

- "if iPhone";
- "if Android";
- "if desktop browser";

unless there is a genuine platform-specific requirement.

---

# 10. Component Design

Components should have clear responsibilities.

Prefer components that are:

- composable;
- reusable;
- predictable;
- easy to test;
- easy to understand.

Avoid both extremes:

### Too monolithic

One page component containing hundreds of lines of unrelated UI logic.

### Too fragmented

Dozens of tiny components that provide no meaningful abstraction.

Extract components when there is:

- meaningful reuse;
- a distinct UI responsibility;
- complex internal logic;
- independent state;
- a semantic section;
- a repeated pattern.

---

# 11. Component APIs

Keep component props intentional.

Avoid APIs with many boolean flags such as:

```tsx
<Button
  primary
  large
  rounded
  blue
  withIcon
  compact
  outlined
/>
```

Prefer semantic variants or the project's existing component conventions.

For example:

```tsx
<Button variant="primary" size="lg" />
```

Do not create abstractions that are more complicated than the UI they
represent.

---

# 12. Design System Consistency

Before introducing a new visual pattern, search for an existing one.

Maintain consistency in:

- font family;
- font sizes;
- font weights;
- line heights;
- colors;
- border radius;
- shadows;
- spacing;
- iconography;
- button styles;
- form controls;
- cards;
- tables;
- badges;
- alerts;
- dialogs.

If design tokens already exist, use them.

Do not hardcode repeated values when the project has an established token
system.

---

# 13. Typography

Typography should establish hierarchy without excessive variation.

Prefer a limited type scale.

Typical hierarchy:

- page title;
- section title;
- subsection title;
- body;
- supporting text;
- metadata.

Avoid:

- excessive font weights;
- excessive font sizes;
- all-caps for large amounts of text;
- low-contrast secondary text;
- overly tight line heights.

Body text should remain comfortable to read on mobile.

---

# 14. Color

Use the project's existing color system.

Color should communicate:

- hierarchy;
- state;
- interaction;
- emphasis;
- semantic meaning.

Do not use color as the only indicator of:

- errors;
- success;
- warnings;
- selected state;
- required fields.

Pair color with:

- text;
- icons;
- borders;
- labels;
- appropriate ARIA state.

Avoid introducing new colors merely to make a component "stand out."

---

# 15. Icons

Use the project's existing icon library whenever available.

Do not mix multiple icon styles without a reason.

Icons should:

- have consistent visual weight;
- have accessible labels when they convey information;
- not replace important text unnecessarily.

For icon-only controls, provide an accessible name.

Example:

```tsx
<button aria-label="Fechar">
  <XIcon />
</button>
```

---

# 16. Buttons and Actions

Buttons should clearly communicate what they do.

Use action-oriented labels.

Prefer:

- "Ver concurso"
- "Iniciar simulado"
- "Salvar"
- "Filtrar"
- "Continuar"

Avoid vague labels such as:

- "Clique aqui"
- "OK"
- "Enviar" when a more specific action is possible.

Primary actions should have stronger visual emphasis than secondary actions.

Do not create multiple competing primary buttons in the same context.

---

# 17. Forms

Forms should be predictable and accessible.

Each field should have:

- a visible label;
- a clear input;
- appropriate autocomplete where useful;
- clear validation;
- useful error messages.

Do not rely exclusively on placeholder text as a label.

Errors should explain:

1. what is wrong;
2. how to fix it.

Prefer:

> Informe um e-mail válido.

over:

> Erro.

For long forms, group related fields logically.

---

# 18. Loading States

Every asynchronous interface should have an intentional loading state.

Avoid showing a completely blank page while data loads.

Choose an appropriate pattern:

- skeleton;
- spinner;
- progressive rendering;
- placeholder;
- disabled action with progress indicator.

Use skeletons when the structure of the content is known and stable.

Do not create excessively animated loading states.

---

# 19. Empty States

Empty states should explain what happened and what the user can do.

Good empty states answer:

- Is this expected?
- Why is there no content?
- What action can the user take?

Example:

> Nenhum concurso encontrado.
> Tente alterar os filtros ou pesquisar por outro órgão.

Avoid empty states that simply say:

> Nenhum resultado.

---

# 20. Error States

Errors should be:

- understandable;
- actionable;
- visually distinct;
- recoverable where possible.

Provide retry actions when retrying makes sense.

Do not expose:

- stack traces;
- database errors;
- internal IDs;
- raw API responses;
- implementation details.

Log technical details appropriately while showing useful user-facing messages.

---

# 21. Success States

After important actions, provide clear feedback.

Examples:

- saved successfully;
- simulation started;
- filter applied;
- profile updated.

Avoid unnecessary toast notifications for every minor interaction.

For important actions, the confirmation should be perceivable and
accessible.

---

# 22. Accessibility

Follow WCAG principles and use semantic HTML.

Prefer:

```html
<header>
<nav>
<main>
<section>
<article>
<footer>
<button>
<form>
<label>
```

over generic `<div>` elements when semantics are available.

Ensure:

- keyboard navigation;
- visible focus states;
- sufficient contrast;
- meaningful labels;
- logical heading hierarchy;
- accessible forms;
- accessible dialogs;
- accessible tables;
- accessible interactive controls.

Do not remove focus outlines without replacing them with an equally visible
focus indicator.

---

# 23. Keyboard Navigation

All interactive functionality must be accessible without a mouse.

Test:

- Tab;
- Shift+Tab;
- Enter;
- Space;
- Escape;
- arrow keys where appropriate.

Avoid clickable `<div>` elements.

Prefer:

```html
<button>
```

for actions and:

```html
<a>
```

for navigation.

---

# 24. Semantic HTML and Headings

Use one clear page-level heading when appropriate.

Heading levels should reflect document structure.

Avoid using headings solely because their CSS style looks useful.

Do not skip heading levels without a semantic reason.

The DOM structure should make sense even without visual styling.

This also supports the SEO skill's semantic and LLM-discoverability goals.

---

# 25. Images

Images must have appropriate alternative text.

For meaningful images:

```html
<img alt="..." />
```

For decorative images:

```html
<img alt="" />
```

Do not write redundant alt text such as:

> Imagem de...

when the context already identifies it as an image.

For Concursos Quiz Brasil, informative images may include:

- logos of exam boards;
- organization logos;
- instructional illustrations;
- screenshots when genuinely useful.

Do not use images as substitutes for important textual information.

---

# 26. Navigation

Navigation should reflect the product's information architecture.

Users should understand:

- where they are;
- where they can go;
- how to return;
- what the current section represents.

For deeper pages, use breadcrumbs when useful.

Example:

```text
Início > Concursos > Polícia Federal > Agente
```

Navigation should remain consistent across related pages.

---

# 27. Search and Filters

Search and filtering are important for data-heavy interfaces.

For concurso discovery, consider filters such as:

- estado;
- órgão;
- banca;
- cargo;
- escolaridade;
- situação;
- faixa de remuneração;
- número de vagas.

Do not expose every possible filter by default.

Prioritize the filters users are most likely to use.

On mobile, consider a dedicated filter interface rather than squeezing every
control into the page.

Preserve selected filters when navigating where appropriate.

---

# 28. Tables

Tables are useful for genuinely tabular data.

Use them when users need to compare:

- values;
- dates;
- categories;
- statuses;
- quantities.

Do not force complex content into tables merely to make it look structured.

Tables on mobile should have an intentional strategy:

- horizontal scrolling;
- responsive transformation;
- prioritized columns;
- alternative mobile representation.

Never make the entire page horizontally scroll just because a table is wide.

---

# 29. Data Integrity in UI

Never invent data.

For dynamic concurso information:

- render actual database values;
- distinguish unavailable data from zero;
- distinguish unknown dates from missing dates;
- avoid presenting stale data as current;
- preserve source attribution where the product supports it.

Be careful with:

- salary;
- number of vacancies;
- registration dates;
- exam dates;
- status;
- organization;
- exam board.

If data is unavailable, display an honest state such as:

> Não informado.

Do not silently fabricate placeholders that look like real values.

---

# 30. SEO Compatibility

The frontend must not undermine SEO.

When modifying public pages, preserve:

- crawlable content;
- semantic HTML;
- server-rendered or statically available content where the framework supports
  it;
- accessible navigation;
- meaningful links;
- heading hierarchy;
- visible textual information.

Do not hide important SEO content behind interactions unless there is a
strong UX reason.

Do not build critical page content exclusively through client-side effects
when the project's architecture supports a better rendering strategy.

For detailed SEO/GEO requirements, follow:

```text
.claude/skills/seo/SKILL.md
```

---

# 31. Links

Use real links for navigation.

Prefer:

```tsx
<a href="/concursos">Concursos</a>
```

or the framework's proper navigation component.

Do not use:

```tsx
<div onClick={() => navigate(...)}>
```

for normal navigation.

Links should have meaningful accessible text.

Avoid generic:

> Saiba mais

when multiple links on the same page point to different entities.

Prefer:

> Ver concurso da Polícia Federal

when appropriate.

---

# 32. URL and Routing

Respect the existing routing architecture.

Do not create duplicate routes for the same content.

For dynamic routes, ensure:

- predictable parameters;
- correct loading states;
- correct not-found behavior;
- correct error handling;
- canonical behavior when applicable;
- consistent navigation.

Coordinate with the SEO skill for indexable route architecture.

---

# 33. Performance

Frontend performance is part of product quality.

Avoid:

- unnecessary JavaScript;
- unnecessary dependencies;
- large client-side bundles;
- repeated API requests;
- unnecessary re-renders;
- huge images;
- blocking operations;
- excessive animations.

Prefer:

- code splitting when appropriate;
- lazy loading for non-critical content;
- optimized images;
- pagination for large datasets;
- debounced search where appropriate;
- cached data where the architecture supports it.

Do not optimize prematurely.

Measure or identify an actual bottleneck before adding complex optimization.

---

# 34. Data Fetching

Follow the project's existing data-fetching pattern.

Avoid fetching the same data multiple times from independent components when
a shared solution is appropriate.

Handle all important states:

```text
loading
success
empty
error
```

Avoid making the UI dependent on a request that could have been performed at
a higher level when the architecture supports better data composition.

---

# 35. State Management

Use local component state when state is local.

Do not introduce global state for:

- modal visibility;
- simple form values;
- temporary UI state;
- simple toggles.

Use shared/global state when multiple unrelated components genuinely need the
same state.

Prefer the simplest state architecture that satisfies the requirement.

---

# 36. URL State

For pages where state should be shareable or bookmarkable, consider storing
it in the URL.

Examples:

- search query;
- filters;
- pagination;
- sorting.

For example:

```text
/concursos?estado=SC&banca=FGV
```

This improves:

- shareability;
- navigation;
- reproducibility;
- browser history;
- discoverability.

Follow the existing routing conventions before introducing URL state.

---

# 37. Animation

Use animation deliberately.

Good uses:

- feedback;
- transitions;
- revealing contextual information;
- communicating state changes.

Avoid animation that:

- delays core actions;
- distracts from content;
- loops unnecessarily;
- creates excessive movement.

Respect reduced-motion preferences when appropriate:

```css
@media (prefers-reduced-motion: reduce) {
  /* reduce or disable non-essential motion */
}
```

---

# 38. Dark Mode

If the project supports dark mode, every new component must work correctly in
both themes.

Check:

- contrast;
- borders;
- icons;
- hover states;
- disabled states;
- inputs;
- dialogs;
- tables;
- charts;
- images.

Do not implement dark mode by simply inverting colors.

Use the project's theme tokens.

---

# 39. Mobile UX

For mobile interfaces:

- prioritize the main task;
- keep touch targets comfortable;
- avoid dense controls;
- avoid tiny typography;
- keep important actions reachable;
- reduce unnecessary decoration;
- consider thumb-friendly placement;
- avoid forcing users to zoom.

Do not treat mobile as a smaller desktop.

---

# 40. Desktop UX

For desktop interfaces:

- use available space intentionally;
- avoid unnecessarily narrow content;
- maintain readable line lengths;
- support efficient scanning;
- use multi-column layouts when they improve comprehension;
- do not stretch every component to fill the viewport.

Large screens should provide more useful context, not merely larger empty
spaces.

---

# 41. Dashboard UX

For dashboards:

1. Establish the purpose of the dashboard.
2. Show the most important KPIs first.
3. Group related metrics.
4. Avoid excessive charts.
5. Provide useful filtering.
6. Make trends interpretable.
7. Explain unusual states.
8. Ensure responsive behavior.

A dashboard should answer questions, not merely display data.

---

# 42. Quiz and Simulation UX

For quiz/simulation interfaces:

Prioritize:

- current question;
- progress;
- answer options;
- time information when relevant;
- clear next/previous controls;
- feedback;
- result state.

Avoid distracting the user during a question.

Interactive answer controls must be keyboard accessible.

After completion, make results understandable and actionable.

For example:

- score;
- accuracy;
- time;
- subjects;
- strengths;
- weaknesses;
- recommended next action.

---

# 43. Programmatic Pages

Concursos Quiz Brasil may contain many dynamically generated pages.

Do not create a unique visual implementation for every entity page if the
underlying structure is the same.

Prefer reusable templates with meaningful variations based on data.

Example:

```text
Concurso page template
├── Header
├── Summary
├── Important dates
├── Vacancies and salary
├── Requirements
├── Subjects
├── Questions
├── Related exams
└── Related concursos
```

The template should remain useful even when some fields are unavailable.

Avoid generating thin interfaces that exist only because a route exists.

---

# 44. Reusable Page Patterns

When multiple pages share the same information architecture, create a reusable
page pattern.

Examples:

- concurso detail;
- cargo detail;
- órgão detail;
- banca detail;
- question detail;
- simulation result.

Do not duplicate entire page implementations merely because the data differs.

---

# 45. Not-Found Pages

Every important dynamic route should have an intentional not-found state.

It should:

- clearly explain that the resource was not found;
- offer useful navigation;
- avoid exposing internal errors;
- preserve the site's visual identity.

For public pages, provide relevant alternatives when appropriate.

---

# 46. Destructive Actions

Actions such as deletion, reset, or irreversible changes require stronger
confirmation.

The confirmation should clearly communicate:

- what will happen;
- whether it can be undone;
- which entity is affected.

Do not use vague confirmations such as:

> Tem certeza?

Prefer:

> Excluir este simulado?
> Esta ação não pode ser desfeita.

---

# 47. Security in Frontend

Never trust frontend validation as the only security mechanism.

The frontend may validate for UX, but authorization and data validation must
remain enforced server-side.

Do not expose:

- secret API keys;
- service-role credentials;
- private tokens;
- database credentials.

Never embed secrets in client-side code.

---

# 48. Environment Variables

Respect the project's existing environment-variable conventions.

Client-exposed variables must contain only information intended for the client.

Never move a server secret into a public environment variable merely to make
a frontend integration easier.

---

# 49. Error Boundaries and Resilience

Where supported by the framework, use appropriate error boundaries or
equivalent mechanisms for critical sections.

A single failing component should not unnecessarily destroy the entire
application.

For independent data sections, consider graceful degradation.

---

# 50. Avoid Overengineering

Do not add abstractions simply because they look architecturally elegant.

Avoid:

- unnecessary design systems;
- unnecessary state libraries;
- generic component factories;
- excessive hooks;
- abstraction layers used only once;
- configuration for hypothetical future requirements.

Solve the actual problem first.

---

# 51. Avoid UI Overdesign

Do not add:

- gradients everywhere;
- excessive glassmorphism;
- excessive shadows;
- animated backgrounds;
- decorative blobs;
- unnecessary illustrations;
- excessive badges;
- excessive cards;
- large decorative hero sections without product value.

The interface should feel intentional rather than overloaded.

---

# 52. Existing Design Language

When modifying an established product, consistency usually matters more than
personal preference.

Before changing the visual language, inspect:

- neighboring pages;
- shared components;
- existing colors;
- typography;
- spacing;
- navigation;
- buttons;
- cards;
- form controls.

A new page should look like it belongs to the same product.

---

# 53. Refactoring

When refactoring frontend code:

1. Preserve behavior.
2. Preserve URLs.
3. Preserve accessibility.
4. Preserve data contracts.
5. Preserve important visual patterns unless the goal is redesign.
6. Reduce complexity.
7. Avoid unrelated changes.

Do not combine a large refactor with an unrelated visual redesign unless
explicitly requested.

---

# 54. Validation

After frontend changes, validate at the appropriate level.

At minimum:

- run the project's existing lint/typecheck when available;
- run relevant tests;
- verify the affected route;
- verify loading/error/empty states;
- verify mobile behavior;
- verify desktop behavior;
- verify keyboard navigation for interactive changes;
- verify console errors;
- verify broken links or obvious runtime errors.

For public pages, also consider the SEO skill's validation requirements.

---

# 55. Visual Review

When possible, inspect the actual rendered page rather than relying only on
source code.

Check:

- alignment;
- spacing;
- hierarchy;
- overflow;
- typography;
- responsive behavior;
- states;
- consistency with neighboring pages.

If a browser or visual validation tool is available, use it.

---

# 56. Change Scope

Make the smallest coherent change that solves the request.

Do not modify unrelated files.

Do not:

- reformat the entire project;
- rename unrelated components;
- upgrade dependencies;
- rewrite working code;
- change architecture;

unless required.

---

# 57. Working With Other Skills

This skill is not the only source of project instructions.

Before working, consult the relevant skills.

For this project, particularly:

```text
.claude/skills/neon/
.claude/skills/neon-postgres/
.claude/skills/seo/SKILL.md
```

Use:

- Neon skills for database/platform-specific work;
- SEO skill for search, semantic SEO, GEO, metadata, structured data, indexing,
  and content discoverability;
- this frontend skill for UI, UX, components, responsiveness, accessibility,
  and frontend implementation.

When multiple skills apply, use all relevant skills rather than treating one
as a replacement for another.

---

# 58. Final Frontend Checklist

Before considering a frontend task complete, verify:

## Architecture
- [ ] Existing framework preserved
- [ ] Existing routing preserved
- [ ] Existing component patterns reused
- [ ] No unnecessary dependency added

## UX
- [ ] Primary task is obvious
- [ ] Information hierarchy is clear
- [ ] Primary action is clear
- [ ] Loading state exists
- [ ] Empty state exists where relevant
- [ ] Error state exists where relevant
- [ ] Success feedback exists where relevant

## Responsive
- [ ] Mobile layout works
- [ ] Tablet layout works when relevant
- [ ] Desktop layout works
- [ ] No unintended horizontal page overflow
- [ ] Touch targets are usable

## Accessibility
- [ ] Semantic HTML used
- [ ] Heading hierarchy makes sense
- [ ] Forms have labels
- [ ] Keyboard navigation works
- [ ] Focus states are visible
- [ ] Icon-only controls have accessible names
- [ ] Color is not the only state indicator
- [ ] Contrast is acceptable

## Data
- [ ] No fabricated values
- [ ] Missing data is represented honestly
- [ ] Loading/error/empty states handled
- [ ] Sensitive data is not exposed

## Performance
- [ ] No unnecessary requests
- [ ] No unnecessary dependencies
- [ ] Images are appropriately handled
- [ ] Large datasets are handled sensibly

## SEO coordination
- [ ] Semantic content preserved
- [ ] Important content remains discoverable
- [ ] Links remain crawlable
- [ ] Public-page changes reviewed against `.claude/skills/seo/SKILL.md`

## Validation
- [ ] Lint/typecheck run when available
- [ ] Relevant tests run
- [ ] Affected page verified
- [ ] No obvious console/runtime errors
- [ ] Responsive behavior checked

---

# 59. Guiding Principle

Build the simplest frontend that makes the user's task clear, works reliably,
looks consistent with the product, remains accessible and responsive, and
does not create unnecessary technical complexity.
