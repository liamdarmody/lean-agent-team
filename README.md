# The Lean Agent Team

A few AI agents that know your business. Three agents, two skills, and the
operating rules that tie them together. Open the folder and you have a working
team in about ten minutes.

The idea is simple. Most AI underdelivers because it knows nothing about your
business. This is a few agents that fit you, not fifty you will never use,
trained on your real work from the first session. Start small, add more only
when a real need shows up.

## What this is

A folder of ordinary Claude Code agents and skills. Nothing here is a plugin or
a special format: each agent is a Markdown file with frontmatter under
`.claude/agents/`, each skill is a folder with a `SKILL.md` under
`.claude/skills/`, and `CLAUDE.md` holds the rules every agent reads first. Any
tool that understands that layout can use it. Rundock reads it directly.

## The team

Three agents, one job each, and an orchestrator on top.

- **Cos, Chief of Staff** (`chief-of-staff`). The orchestrator. You talk to Cos
  first. Cos works out what needs doing and routes it to the right specialist.
- **Bea, Executive Assistant** (`executive-assistant`). Reports to Cos. Cleans
  notes, builds lists, drafts routine messages, keeps things tidy.
- **Cleo, Content Lead** (`content-lead`). Reports to Cos. Drafts posts,
  emails, and pages in your voice. Carries coach, consultant, and agency
  presets; you keep one.

Two skills any agent can call:

- **Clean a Note** (`clean-a-note`). Turn meeting scrawl, a transcript, or a
  brain dump into decisions, actions, and follow-ups.
- **Draft a Post** (`draft-a-post`). Turn a rough idea into a short post in
  your voice, ready to refine.

The shape is deliberate. Cos exists so you brief one agent, not three. Cleo is
the one that makes. Bea is the one that buys back your time: most of the hours
you lose go to admin, not creation, so point your worst weekly time sink at
Bea first. And the safety rule (agents draft, a human sends) is the one to keep
no matter what else you change.

## Install into Rundock

Paste this repository's link into **Settings, Packages** in Rundock. Rundock
finds the three agents and two skills and offers to add them to your
workspace. Nothing installs until you say yes. Once added, they are your
files: edit them like anything else in your workspace.

The install brings the agents and skills. `CLAUDE.md`, `context/`, and
`prompts/` are here for you to copy in by hand if you want the full setup
described below, or clone the whole folder and open it as a workspace.

## Use it as a whole workspace

1. Clone or download this folder.
2. Open it in Rundock (or any coding agent that reads `.claude/`) as a
   workspace.
3. Run the make-it-yours prompt (`prompts/make-it-yours.md`). One of your
   agents interviews you for a few minutes and fills in your business details,
   so the team is trained on your work, not a template.
4. Get your first win (`prompts/first-win.md`). Turn one idea into a post, or
   hand the EA a messy note and get it back clean.

## What is inside

- **CLAUDE.md:** the operating rules your agents follow. It points every agent
  at your context files before they act. That one instruction is the whole
  "trained on your business" mechanic: agents do not remember between
  sessions, so this makes them load your context every time instead of
  guessing from a blank slate.
- **.claude/agents/:** the three agents above.
- **.claude/skills/:** the two skills above, one folder each.
- **context/:** `company.md`, `person.md`, and `voice.md`, the files the
  make-it-yours prompt fills in. The prompt can also add a `people/` file for
  a key client or teammate on demand, so nothing empty ships.
- **prompts/:** `make-it-yours.md` to personalise the team, `first-win.md` to
  get one real output today.

## How this compounds

The team is worth more in month three than on day one, if you keep it fed.

- **Fifteen minutes a week.** Open the context files and ask three questions:
  what is stale, what is missing, what changed. Fix it on the spot.
- **Corrections stick.** When an agent gets your voice or a fact wrong, add the
  correction to `context/voice.md`. Then it is right for every agent, every
  session.
- **Skill or agent?** Same output three times is a skill: write it down once in
  `.claude/skills/` and stop re-explaining it. Same conversation pattern, with
  judgement and back-and-forth, is an agent. Reach for a skill before an agent.
- **Your context grows with you.** Add a `people/` file when a client matters
  enough to brief the team on, a new skill when you catch yourself repeating a
  brief. The folder should grow because your work did, not because more felt
  better. The lean part is the point.

## Licence

MIT. See `LICENSE`.
