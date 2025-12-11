# Telescoping Action Steps Specification

**Component**: Hierarchical Goal Decomposition  
**Purpose**: Break complex goals into detailed sub-charts while maintaining strategic focus and creative tension  
**RISE Phase**: Implementation Independence - Codebase Agnostic

---

## Desired Outcome Definition

**What Users Create:**

Users decompose complex goals into manageable action steps while:
- Maintaining connection between detailed work and strategic vision
- Keeping detailed action steps focused on advancement toward parent outcome
- Preventing "action step tasks" from becoming disconnected busywork
- Creating natural progression through levels of detail
- Understanding exactly how detailed work contributes to strategic goals

## Current Reality

**The Challenge Without Telescoping:**

- Complex goals feel overwhelming without breakdown
- Action steps lack detail, leaving users uncertain how to actually execute
- Detailed task management disconnects from strategic vision
- Users complete tasks without understanding advancement toward goals
- No natural way to track how sub-goals contribute to master outcomes

## Natural Progression - How Telescoping Creates Advancing Patterns

### The Core Principle: Action Steps ARE Structural Tension Charts

The breakthrough insight: **An action step doesn't describe a task—it describes a GOAL at the next level of detail.**

When users add an action step to a chart:

1. **The action step title becomes a NEW desired outcome** at the telescoped level
2. **A new structural tension chart is created** at that detail level
3. **Current reality is assessed specifically for that action step**
4. **The telescoped chart inherits the parent's due date** and distributes it appropriately
5. **Completion of the telescoped chart** automatically updates the parent's current reality

```
MASTER CHART (Level 0)
├─ Desired: "Build production web application"
├─ Reality: "Have requirements, no architecture"
└─ Action Steps (become Level 1 charts):
    ├─ TELESCOPED CHART 1 (Level 1)
    │  ├─ Desired: "Design scalable system architecture"
    │  ├─ Reality: "Know requirements, no design yet"
    │  ├─ Actions: (become Level 2 charts if needed)
    │  └─ When complete → Updates master reality
    ├─ TELESCOPED CHART 2 (Level 1)
    │  ├─ Desired: "Implement core API endpoints"
    │  ├─ Reality: "Architecture done, no code yet"
    │  └─ When complete → Updates master reality
```

### Why This Creates Natural Advancement

**Traditional Task Approach (Oscillating)**:
- Master goal → break into tasks → complete tasks → did we really achieve goal?
- Disconnect between task completion and strategic progress
- No automatic connection between levels

**Telescoping Approach (Advancing)**:
- Master goal → break into outcome-level sub-goals → complete sub-goals → reality transforms
- Each telescoped chart maintains structural tension at its level
- Completion naturally flows back up, showing master chart advancement
- Each level preserves creative orientation—sub-goals are what users want to CREATE at that level

### The Three Levels of Natural Decomposition

**Level 0: Master Chart** (Strategic Vision)
- User's primary desired outcome
- Honest assessment of current state relative to vision
- Due date for achieving entire vision
- Action steps that, when completed, make the vision real

**Level 1: Action Step Charts** (Strategic Actions)
- Each action from master chart becomes its own structural tension chart
- Desired outcome = the action (at more detail than master level)
- Current reality = honest assessment relative to this specific action
- Due dates distributed across timeline toward master due date
- Can telescope further if needed for complex actions

**Level 2+: Detailed Sub-Charts** (Tactical/Implementation Detail)
- Some Level 1 actions may require further decomposition
- Same principles apply—each level maintains productive tension
- Deep nesting possible but typically stops at Level 2-3 for practical clarity

## Feature Inventory - Telescoping Mechanics

### Automatic Telescoping on Action Step Addition

**When user adds an action step:**

1. **Create new Structural Tension Chart**
   - New chartId generated
   - Desired outcome = action step title
   - Current reality = user-provided assessment of actual state for this action

2. **Inherit Due Date Structure**
   - Gets parent's due date
   - Auto-distributes if multiple sibling action steps exist
   - Can be overridden by user for specific timing

3. **Establish Relationships**
   - Parent Chart ID stored in metadata
   - Parent Action Step reference stored
   - Level indicator set to parent level + 1
   - Relation created showing parentage

4. **Return Navigation Information**
   - User gets back: chartId of new telescoped chart, actionStepName for reference
   - Can immediately telescope further if action proves complex

### Reversing Telescoping - Accessing Overview

**When user wants to step back:**

1. **Parent Navigation**
   - Telescoped chart metadata contains parentChart reference
   - User can easily navigate to parent chart
   - See how this detailed work fits into larger goal

2. **Level Awareness**
   - Chart metadata includes level indicator
   - User understands their position in hierarchy
   - Can zoom out to see strategic context

3. **Progress Contribution**
   - Telescoped chart completion automatically updates parent reality
   - Parent sees: "Completed: [action step title]"
   - Shows how detail-level work advances parent goal

### Completion Cascade - How Achievements Propagate Upward

**When a telescoped chart is marked complete:**

1. **Completion Status Updated**
   - Telescoped chart marked complete
   - All child entities marked complete

2. **Parent Reality Updated**
   - Parent chart's current reality receives new observation
   - Format: "Completed: [action step title]"
   - Prevents duplication: same observation not added twice

3. **Parent Tension Re-Evaluated**
   - Parent's current reality now includes achievement
   - Structural tension remains (current reality changed, desired outcome same)
   - New productive tension emerges for remaining action steps

4. **Cascading Further Up** (if parent itself telescoped)
   - If parent is itself a telescoped chart, its completion updates ITS parent
   - Multi-level advancement cascade
   - Creates visible trail of achievement flowing upward

**Example Cascade:**
```
Master Chart Progress: "Achieved vision milestone"
  ↑ Updated when...
Level 1 Chart 1: Mark "Architecture design" Complete
  ↑ Which updates...
  Level 2 Chart A: "API design patterns" Completed
  Level 2 Chart B: "Database schema" Completed
```

## Supporting Features - What Makes Telescoping Work

### Current Reality Extraction for Action Steps

The system helps users assess current state for action steps:

**Pattern Matching** for common reality statements in user input:
- "currently [assessment]"
- "right now [state]"
- "at present [situation]"
- "I am [state]"
- "I have [capability]"
- "there is [situation]"

**Validation** ensures honest assessment:
- ❌ Rejects: "ready to begin", "prepared to start", "all set"
- ✅ Requires: Factual assessment of actual current state

**Educational Guidance** when reality assessment missing:
- System explains why honest assessment is required
- Shows examples of good vs problematic current reality statements
- Emphasizes: Structural tension requires honest gap assessment

### Due Date Distribution

**Automatic Distribution** when multiple action steps added:

1. Calculate time from now to parent's due date
2. Divide time into intervals for each action step
3. Earlier steps get earlier due dates
4. Later steps get later due dates
5. Creates natural progression through timeline

**Manual Override** available:
- User can specify specific due date for particular action step
- System respects user's timing judgment
- Other steps auto-distribute around manually-specified dates

**Inheritance Pattern**:
- Action step due date ≤ parent chart's due date
- System prevents action step being due AFTER parent outcome
- Maintains temporal coherence

### Parent-Child Navigation

**Forward Navigation** (from parent to children):
- Master chart shows all Level 1 action step charts
- Can click through to detail level
- See how each action step is progressing

**Backward Navigation** (from child to parent):
- Telescoped chart shows parentChart in metadata
- Can navigate up to see strategic context
- Understand how this detail contributes to larger goal

**Sibling Awareness**:
- Can see other action steps at same level
- Understand dependencies and sequencing
- See which siblings have completed

## Quality Criteria for Effective Telescoping

✅ **Maintains Creative Orientation** - Each level describes what user wants to CREATE, not problems to solve  
✅ **Preserves Structural Tension** - Each level has honest gap between reality and outcome  
✅ **Natural Progression** - Deeper levels support, don't distract from, master vision  
✅ **Completion Cascade** - Achievements flow upward, showing advancement at master level  
✅ **Avoiding Excessive Depth** - Typically 2-3 levels remain strategically useful  
✅ **Clear Relationships** - Parent-child connections transparent in both directions  

## Creative Advancement Scenario - Telescoping in Practice

**Master Chart**: "Build and launch minimum viable product (MVP) for SaaS application"

**Initial Reality**: "Have market research and business plan, no product built yet"

**Action Steps** (Level 1 Charts):

**Action 1 - "Establish development environment and tech stack"**
- Reality: "Know requirements, never set up production infrastructure before"
- When completed: Master reality becomes "Development environment ready, basic infrastructure established"

**Action 2 - "Design and implement core API"**
- Reality: "Understand architecture, building first API in chosen framework"
- Sub-telescoping (Level 2):
  - "Design API schema and endpoints"
  - "Implement authentication system"
  - "Build core business logic API"
- Each sub-action completion shows: "API design complete", "Authentication implemented", etc.
- When Level 2 completes, Level 1 current reality updates
- When Level 1 completes, Master reality shows: "Core API built and tested"

**Action 3 - "Build user-facing interface"**
- Reality: "Have API, new to chosen frontend framework"
- Telescopes to detail level for complex implementation

**Advancing Pattern**: As each action completes, master outcome comes into focus. User sees:
- Week 1: Reality → "Environment ready"
- Week 3: Reality → "Environment ready, API schema designed"
- Week 6: Reality → "Environment ready, API implemented, UI in progress"
- Week 10: Master outcome achieved → "MVP launched"

Telescoping shows user exactly how their detailed work contributes to the larger vision.

## Specification Independence

To implement telescoping from this specification:

1. **Design hierarchical chart relationships** where action steps become charts
2. **Implement level tracking** (master = 0, actions = 1, sub-actions = 2, etc.)
3. **Create parent references** in metadata to enable navigation
4. **Build due date distribution** logic for siblings with same parent
5. **Implement completion cascade** updating parent reality on child completion
6. **Create relationship linking** showing parent → child → grandchild progression
7. **Design observation formatting** for automatic reality updates ("Completed: [action]")
8. **Build navigation tools** for moving between hierarchy levels

The specification shows **what telescoping achieves** (manageable complexity), **how it maintains creative orientation** (each level creates toward outcomes), and **why it's advancing** (completion flows upward, showing progress).

---

## Related Specifications

- **[Structural Tension Chart](./structural_tension_chart.spec.md)** - Core chart entity that telescopes
- **[Progress Tracking](./progress_tracking.spec.md)** - Monitoring completion at all levels
- **[Context-Aware Storage](./context_aware_storage.spec.md)** - Persistent hierarchical storage

---

**RISE Framework**: v1.0 Compliant  
**Methodology**: Robert Fritz Structural Tension Principles  
**Last Updated**: 2025-12-11
