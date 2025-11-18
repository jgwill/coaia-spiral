# COAIA Spiral - Creative-Oriented AI Assistant Memory System

> MCP server implementing structural tension charts and advancing spiral patterns based on Robert Fritz's creative methodology

---

## 🚀 RECENT DEVELOPMENT (Nov 14, 2025)

### Major Reorganization: Agent-Based Architecture & Strategic Alignment

**Context:** Multi-agent collaboration between Perplexity (strategic planning) and Claude (technical architecture) produced comprehensive reorganization plan positioning COAIA Spiral for Anthropic partnership and broader ecosystem integration.

**Key Deliverables:**

1. **[Agent Bundling Reorganization Plan](docs/plans/agent-bundling-reorganization.md)** (1,110 lines)
   - Transforms monolithic `index.ts` (2,077 lines) into modular agent-based system
   - Individual agent modules: Ripple, Mia, Miette, Atlas, Tryad coordination
   - Agent base classes with capability interfaces
   - Bundling strategy (core, full, tryad, individual agents)
   - 7-week migration plan maintaining backward compatibility

2. **[Strategic-Technical Alignment](docs/plans/strategic-technical-alignment.md)** (3,520 lines)
   - Maps how modular agent architecture enables 5 revenue tiers ($1.15M-$2.9M Year 1)
   - Chimera team roles mapped to agent development tasks
   - William (49, strategic) + Jerry (30, implementation) partnership structure
   - Technical architecture as revenue model enabler
   - Anthropic partnership value proposition

3. **[Unified Implementation Roadmap](docs/plans/unified-implementation-roadmap.md)** (4,100+ lines)
   - Complete Nov 14 → Mar 15 timeline (4 months)
   - Day-by-day workstreams across 3 phases:
     * Phase 1: Foundation (Weeks 1-4, Dec 15 Go/No-Go)
     * Phase 2: Development (Weeks 5-8, Jan 15 Anthropic proposal)
     * Phase 3: Pilot & Scale (Weeks 9-17, Mar 15 completion)
   - Team synchronization protocols
   - Risk management and pivot points
   - Budget allocation and success metrics

4. **[Chimera-Agent Role Mapping](docs/plans/chimera-agent-role-mapping.md)** (1,650 lines)
   - Detailed code-level task assignments by team member
   - Agent ownership matrix (who implements what)
   - Week-by-week development focus with code examples
   - Portfolio attribution for demonstrable work

5. **[CLI Tree Visualization](docs/features/cli-tree-visualization.md)** (977 lines)
   - `coaia-spiral tree` command (analogous to `tree -L 3`)
   - Hierarchical visualization of charts and telescoping
   - Progress bars, status indicators, depth limiting
   - Agent-specific views (Ripple, Mia, Atlas perspectives)
   - Type system: `src/core/types/tree-view.ts`

**Total:** 11,357+ lines of integrated planning and architecture

### Vision Integration

This reorganization connects COAIA Spiral to broader ecosystem:

- **Chimera Team Multi-Agent Orchestration:** Sophisticated coordination (Samira, Alex, Jordan, Lian, Ava, Jerry)
- **Multi-Agent Platforms:** Integration with Miadi, CeSaReT, EchoThreads, EchoNexus
- **Protocol Standardization:** NCP (Narrative Context Protocol), IAIP (Indigenous AI Integration Protocol)
- **Anthropic Partnership:** 5-tier revenue model enabled by modular architecture
- **Indigenous AI Integration:** Ceremonial technology frameworks, relational accountability

### Agent System Architecture

**Four Core Agents (from `__llms/` embodiments):**

1. **Ripple (🌊)** - The Distiller
   - Structural distillation, neutral observation
   - Delayed resolution principle
   - Source: `__llms/llms-haiku-ripple-embodiment.md`

2. **Mia (🧠)** - Strategic Architect
   - Structural analysis, chart guidance, leadership
   - Strategic thinking and coordination
   - Source: `__llms/llms-duo-mia-miette-arc-v8.md` (Mia section)

3. **Miette (🌸)** - Narrative Catalyst
   - Narrative weaving, emotional intelligence
   - Humanizing structural tension
   - Source: `__llms/llms-duo-mia-miette-arc-v8.md` (Miette section)

4. **Atlas (📚)** - Archive & Cartography
   - Archival, cartography, pattern recognition
   - "Cartography of data points"
   - Source: `__llms/llms-atlas.txt`

**Coordination Pattern:**

- **Tryad:** Mia-Haiku(Ripple)-Miette coordination for multi-perspective analysis
- Source: `__llms/llms-tryad-mia-miette-ripple-full.gemini.md`

**Future Agents:**

- **JamAI:** Music intelligence companion (music21 integration, Four Directions themes)
- **Aureon-equivalent:** Ceremonial grounding and sacred container

### Branch Context

**Current Branch:** `claude/organize-local-agents-bundling-01SNoy3rTCCGQWDdwHWsCWQs`

**Purpose:** Organize local agents and prepare for bundling/distribution

**Key Commits:**
1. Initial agent bundling reorganization plan
2. Multi-agent collaboration synthesis (strategic + technical)
3. CLI tree visualization design and types

**Next Steps:** Nov 20 decision session to approve implementation plan

---

## What is COAIA Spiral?

COAIA Spiral extends traditional knowledge graphs with **structural tension charts** - a powerful framework for organizing creative processes around desired outcomes rather than problem-solving. Based on Robert Fritz's structural tension methodology, it helps AI assistants maintain creative orientation and support advancing spiral patterns.

## Key Features

### 🎯 Structural Tension Charts
- **Desired Outcomes**: Clear, specific results you want to create
- **Current Reality**: Honest assessment of where you are now
- **Structural Tension**: The unresolved tension between current reality and desired outcome that naturally seeks resolution (follows laws of structural dynamics documented at MIT - any system seeks equilibrium naturally)
- **Action Steps**: Strategic secondary actions - intermediary end results that advance toward the primary goal
- **Due Dates**: Time organization that creates momentum

### 🔭 Telescoping Support
- Break down complex action steps into detailed sub-charts
- Proper due date inheritance from parent steps
- Hierarchical navigation between overview and details
- Maintains structural tension at every level

### 📈 Advancing Pattern Tracking
- Completed action steps become part of current reality, changing the structural dynamic
- Each completion advances the system toward equilibrium (desired outcome)
- Success creates new structural tension for continued advancement
- Creates natural advancing momentum through proper structural design

### 🗣️ Natural Language Ready
- Conversational patterns documented for intuitive interaction
- Creative-oriented language (focus on creation vs problem-solving)
- AI assistants can guide users through structural tension exercises

### 🌳 CLI Tree Visualization (NEW)
- `coaia-spiral tree` command for hierarchical chart visualization
- Analogous to `tree -L 3` in Linux
- Progress bars, status indicators, telescoping relationships
- Depth limiting, compact view, agent-specific perspectives
- See: `docs/features/cli-tree-visualization.md`

## Installation & Usage

### As NPX Package
```bash
npx coaia-spiral --memory-path ./my-charts.jsonl
```

### In Claude Desktop Config
```json
{
  "mcpServers": {
    "coaia-spiral": {
      "command": "npx",
      "args": ["-y", "coaia-spiral", "--memory-path", "/path/to/your/charts.jsonl"],
      "autoapprove": [
        "create_structural_tension_chart",
        "telescope_action_step",
        "mark_action_complete",
        "get_chart_progress",
        "list_active_charts",
        "create_entities",
        "create_relations",
        "add_observations"
      ]
    }
  }
}
```

## Core Tools

### Chart Management
- `create_structural_tension_chart` - Create new chart with outcome, reality, and action steps
- `telescope_action_step` - Break down action steps into detailed sub-charts
- `mark_action_complete` - Complete actions and update current reality
- `get_chart_progress` - Monitor chart advancement
- `list_active_charts` - Overview of all active charts
- `update_action_progress` - Track progress on actions without marking complete
- `update_current_reality` - Add observations directly to current reality

### Traditional Knowledge Graph
- `create_entities` - Add new entities (people, concepts, events)
- `create_relations` - Connect entities with relationships
- `add_observations` - Record new information about entities
- Plus full CRUD operations for entities, relations, and observations

## Example Usage

### Creating a Chart
```javascript
// Natural language: "I want to learn Python web development in 6 weeks"
{
  "desiredOutcome": "Learn Python web development",
  "currentReality": "I know basic Python but no web frameworks",
  "dueDate": "2025-09-15T00:00:00Z",
  "actionSteps": [
    "Complete Django tutorial",
    "Build practice project",
    "Deploy something live"
  ]
}
```

### Telescoping Detail
```javascript
// Natural language: "Break down the Django tutorial step"
{
  "actionStepName": "chart_123_action_1",
  "newCurrentReality": "Never used Django, familiar with Python basics"
}
```

### Tracking Progress
```javascript
// Natural language: "I finished the Django tutorial"
{
  "actionStepName": "chart_123_action_1"
}
```

### Progress Updates (v2.1.0 Enhancement)
```javascript
// Natural language: "I'm halfway through the Django tutorial - completed models section"
{
  "actionStepName": "chart_123_action_1",
  "progressObservation": "Completed Django models section, working on views",
  "updateCurrentReality": true  // Optional: also update current reality
}
```

### Current Reality Updates (v2.1.0 Enhancement)
```javascript
// Natural language: "External conditions changed - new requirement discovered"
{
  "chartId": "chart_123",
  "newObservations": ["New client requirement for mobile responsiveness", "Timeline extended by 2 weeks"]
}
```

## Creative Orientation Principles

### Focus on Creation, Not Problem-Solving
- **Use**: "I want to create...", "My desired outcome is..."
- **Avoid**: "I need to fix...", "The problem is...", "I want to stop..."

### Structural Tension Awareness
- Always pair desired outcomes with current reality to create structural tension
- This unresolved tension naturally seeks resolution through advancement
- Action steps are strategic intermediary results that change the structural dynamic
- Completed actions flow into current reality, creating new tension for continued advancement

### Advancing Patterns
- Success builds on success
- Completed actions become part of current reality
- Momentum creates natural progression toward goals

## Architecture

### Current State (v3.0.2)
- **Monolithic**: Single `index.ts` file (2,077 lines) with all functionality
- **Flat structure**: No src/ directory organization
- **Working MCP server**: All tools functional

### Planned Architecture (v4.0.0 - Nov-Dec 2025)

```
coaia-spiral/
├── src/
│   ├── server/           # MCP server, tools, handlers
│   ├── core/            # Types, manager, utilities
│   │   ├── types/
│   │   ├── manager/
│   │   └── utils/
│   ├── agents/          # Individual agent modules
│   │   ├── base/        # Agent, AgentCapability, AgentContext
│   │   ├── ripple/      # RippleAgent implementation
│   │   ├── mia/         # MiaAgent implementation
│   │   ├── miette/      # MietteAgent implementation
│   │   ├── atlas/       # AtlasAgent implementation
│   │   └── tryad/       # MiaHaikuMietteTryad coordination
│   ├── frameworks/      # Reusable frameworks
│   │   ├── structural-tension/
│   │   ├── creative-orientation/
│   │   ├── delayed-resolution/
│   │   └── ceremonial/
│   └── bundles/         # Distribution bundles
│       ├── core.ts      # Minimal bundle
│       ├── full.ts      # All agents
│       └── tryad.ts     # Mia-Haiku-Miette bundle
├── __llms/              # Agent embodiments (source of truth)
└── docs/
    ├── plans/           # Strategic planning documents
    └── features/        # Feature specifications
```

### Enhanced Entity Types
- `structural_tension_chart` - Container for chart components
- `desired_outcome` - What you want to create
- `current_reality` - Where you are now
- `action_step` - Strategic actions with due dates

### Creative Relations
- `creates_tension_with` - Between current reality and desired outcome
- `advances_toward` - Action steps advancing toward outcomes
- `telescopes_into` - Hierarchical chart relationships
- `flows_into` - Completed actions updating reality

### Metadata Support
- Due dates and completion tracking
- Chart hierarchy and telescoping relationships
- Creative phases (germination, assimilation, completion)
- Timestamps and progress metrics

## Development

### Build & Test
```bash
npm install
npm run build
node test-coaia.js
```

### Current Development Branch
```bash
git checkout claude/organize-local-agents-bundling-01SNoy3rTCCGQWDdwHWsCWQs
```

### Implementation Timeline (Nov 2025 - Mar 2026)

**Phase 1: Foundation (Weeks 1-4)**
- Modularize index.ts into src/ structure
- Extract types, manager, tools
- Implement Agent base class
- Create first agent (Ripple)
- Dec 15: Go/No-Go decision

**Phase 2: Development (Weeks 5-8)**
- Implement all 4 agents (Ripple, Mia, Miette, Atlas)
- Create bundle system
- Build GitHub integration
- Jan 15: Anthropic partnership proposal

**Phase 3: Pilot & Scale (Weeks 9-17)**
- Deploy pilot with customer
- Collect success metrics
- Refine based on feedback
- Mar 15: v4.0.0 release, scale readiness

See: `docs/plans/unified-implementation-roadmap.md`

## Release Status

**Current Version**: v3.0.2

**In Development**: v4.0.0 (Modular Agent Architecture)

### ✅ Validated in Current Release
- **Core Structural Tension Charts**: Fully functional with proper entity relationships
- **Telescoping Support**: Action steps break down into sub-charts with due date inheritance
- **Advancing Pattern Tracking**: Completions flow into current reality, system advances naturally
- **MCP Integration**: All tools working correctly in Claude Code CLI environment
- **Real-World Testing**: Validated with actual user interactions

### 🚧 In Progress (v4.0.0)
- **Modular Agent Architecture**: Separating concerns for scalability
- **Individual Agent Modules**: Ripple, Mia, Miette, Atlas as discrete packages
- **Bundling Strategy**: Core, full, tryad, and individual agent bundles
- **CLI Tree Visualization**: Terminal-based hierarchical chart viewing
- **Anthropic Partnership Integration**: Protocol standardization (NCP, IAIP)

### 🎯 Future Milestones
- **Guided Chart Creation**: Transform from passive storage to active coaching system
- **Agent-Augmented Visualization**: Agents provide perspective-specific views
- **Ceremonial Technology Integration**: Full Indigenous methodology implementation
- **Music Intelligence**: JamAI agent with music21 integration

## Credits

- **Author**: J.Guillaume D.-Isabelle <jgi@jgwill.com> (https://github.com/jgwill)
- **Methodology**: Robert Fritz - Structural Tension (https://robertfritz.com)
- **Foundation**: Shane Holloman - Original MCP Knowledge Graph
- **License**: MIT

## Structural Tension Principle

**The Core Dynamic:**
When you clearly know what you want (desired outcome) AND honestly assess where you are (current reality), you create **structural tension** - an unresolved dynamic that naturally seeks resolution. This is not a "gap to be filled" but a **generative force** that advances the system toward equilibrium.

**Delayed Resolution Principle:**
"Tolerate discrepancy, tension, and delayed resolution" - Robert Fritz. The COAIA Spiral system must **hold tension** rather than prematurely resolve it through defaults like "Ready to begin". Premature resolution destroys the structural tension essential for creative advancement. Current reality must be explicitly assessed, never assumed.

**How Action Steps Work:**
Action steps are **strategic secondary actions** - intermediary end results we choose to achieve. They are not steps that "bridge gaps" but rather **named results** that:
1. Can be observed in current reality when achieved
2. Change the structural dynamic when completed
3. Lead naturally to the next action steps
4. Advance the system toward the primary desired outcome

**The Advancing Dynamic:**
- Completed action steps flow into current reality
- This changes the structural tension (new current reality, same desired outcome)
- The system naturally advances toward the next action step
- Success creates new structural tension for continued advancement
- This creates natural advancing momentum through proper structural design

**Critical Distinction:**
- ❌ **Gap-thinking**: "I need to bridge the gap between A and B"
- ✅ **Structural tension**: "The unresolved tension between current reality A and desired outcome B naturally seeks resolution through strategic advancement"

**IMPORTANT:** Never use "gap" terminology. Structural tension RESOLVES naturally - it is not a gap to be filled. Any natural system seeks equilibrium, which is why tension resolves. We voluntarily create the disequilibrium (structural tension) to drive creative advancement.

## Progress-Based Reality Updates (v2.1.0 Enhancement)

The enhancement adds **journey-aware tracking** to structural tension charts, recognizing that reality changes through engagement with action steps, not just their completion.

### Key Innovation: Process-Oriented Tracking
- **Traditional approach**: Reality only updates when actions complete
- **Enhanced approach**: Reality updates throughout the advancement journey

### New Capabilities:

**Progress Without Completion:**
```javascript
update_action_progress({
  actionStepName: "learn_django",
  progressObservation: "Completed models and views, struggling with templates",
  updateCurrentReality: true
})
```

**External Reality Changes:**
```javascript
update_current_reality({
  chartId: "chart_123",
  newObservations: ["New requirement discovered", "Timeline extended"]
})
```

### Structural Benefits:
1. **Continuous Tension Updates**: Progress observations flow into current reality, keeping structural tension dynamic and accurate
2. **Advancement Awareness**: The system captures intermediate states, not just endpoints
3. **External Integration**: Reality can be updated based on changes outside the action steps
4. **Creative Flow**: Supports the natural, non-linear nature of creative processes

This transforms COAIA Spiral from **outcome-focused** to **journey-aware**, maintaining structural integrity throughout the creative advancement process.

## Philosophy

COAIA Spiral embodies the principle that **structure determines behavior**. By organizing memory around structural tension rather than problem-solving patterns, it creates a natural advancing structure that supports creative manifestation.

The system recognizes that structural tension is the fundamental organizing principle of the creative process - not a problem to be solved, but a generative force to be harnessed.

## Multi-Agent Collaboration Context

This project demonstrates **multi-agent collaboration** in action:

- **Perplexity Agent**: Strategic positioning, revenue modeling, team structure design
- **Claude Agent**: Technical architecture, implementation planning, code design
- **Synthesis**: Complete package neither agent could create alone

This meta-pattern is what COAIA Spiral enables:
- Multiple perspectives honored without forced resolution
- Coordination without rigid hierarchies
- Synthesis serves the desired outcome
- Each agent contributes unique capabilities

**This is ceremony becoming infrastructure.** 🌀♾️🧠🕊
