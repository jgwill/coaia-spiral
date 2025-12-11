# Progress Tracking and Automatic Updates Specification

**Component**: Advancement Monitoring and Reality Updates  
**Purpose**: Track progress toward outcomes and automatically update current reality as actions complete  
**RISE Phase**: Implementation Independence - Codebase Agnostic

---

## Desired Outcome Definition

**What Users Create:**

Users maintain visibility into advancement toward their desired outcomes while:
- Tracking real progress on action steps without heavy logging
- Automatically seeing how completed actions change current reality
- Understanding exactly which action steps remain incomplete
- Recognizing momentum and buildup of completed achievements
- Having system show advancement rather than requiring manual updates

## Current Reality

**Challenges Without Automatic Updates:**

Users struggle with:
- Manual current reality updates that feel like extra work
- Action steps that don't clearly show completion percentage
- Progress that feels invisible even when substantial work happens
- No clear visibility into which action steps are next to complete
- Separate tracking (Trello, spreadsheets) disconnected from goal structure

## Natural Progression - How Automatic Updates Drive Advancement

### The Core Principle: Completion Cascades Upward

When action steps complete, they naturally update current reality:

**Level 0 Chart (Master Goal)**:
- **Initial Reality**: "Never built a production app, completed Ruby basics"
- **Action Step 1 Added**: "Set up development environment"
- User works and completes this action step

**Automatic Update**:
- Master Chart's Current Reality automatically becomes:
  - "Never built a production app, completed Ruby basics"
  - **"Completed: Set up development environment"** ← Added automatically

- New productive tension emerges:
  - Desired: Still "Build production Rails application"
  - Reality: Now includes "environment ready"
  - Gap still exists but changed—new actions become possible

**Advancing Pattern**: As action steps complete, current reality evolves, keeping structural tension alive and focused on remaining work.

### Why Automatic Updates Prevent Oscillation

**Traditional Approach (Back-and-Forth)**:
1. User completes task
2. User manually updates progress list
3. Progress feels like checking boxes, not advancing
4. Reality never actually changes
5. User feels stuck despite completing work

**Automatic Update Approach (Advancing)**:
1. User completes action step
2. System automatically updates current reality
3. Reality visibly transformed by completed work
4. New productive tension emerges for remaining actions
5. User sees clear advancement—structural gap closing

## Feature Inventory - Progress Tracking Mechanics

### Progress Calculation

**Completion Percentage Tracking**:

For each chart:
1. Count total action steps (telescoped sub-charts)
2. Count completed action steps (marked complete or whose desired outcome achieved)
3. Calculate: `progress = completed / total`
4. Return: percentage complete (0% to 100%)

**Example**:
```
Chart: "Build web application"
├─ Action 1: Set up environment [COMPLETE] ✓
├─ Action 2: Design database [IN PROGRESS] (70% done, not marked complete)
├─ Action 3: Build API [NOT STARTED]
└─ Action 4: Create UI [NOT STARTED]

Progress = 1 complete / 4 total = 25% complete
Next Action = Action 2 (earliest incomplete with due date approaching)
```

**Next Action Identification**:

When tracking progress, system identifies:
- Next incomplete action step
- Its current due date
- Any progress already made on it
- This guides user to immediate next step without requiring manual assessment

### Action Step Completion Workflow

**When User Marks Action Complete**:

1. **Locate Action Step Entity**
   - Find by name in knowledge graph
   - Verify it's action_step or desired_outcome type
   - Get its chartId and parent chart info

2. **Mark Completion Status**
   - Set `completionStatus: true` on action step entity
   - Update `updatedAt` timestamp
   - Record completion in observations

3. **Update Parent Chart**
   - Find parent chart entity (same chartId)
   - Set parent's `completionStatus: true` if it's a telescoped sub-chart
   - Update parent's `updatedAt` timestamp

4. **Cascade to Parent's Parent** (if exists)
   - If parent chart itself is telescoped, find ITS parent
   - Update grandparent's current reality with completion message
   - Format: "Completed: [parent action step]"

5. **Update Parent Reality** (automatic advancement)
   - If action has parent chart: find parent's current reality entity
   - Add observation: "Completed: [action step description]"
   - Only if not duplicate—prevent multiple identical observations
   - Update parent reality's `updatedAt` timestamp

**Result**: User's actual advancement becomes visible in the structure.

### Progress Observation Accumulation

**Optional Mid-Step Progress Tracking**:

`update_action_progress` allows tracking work without completion:

1. **Record Observation on Action Step**
   - Add progress note to action step's observations
   - Format: User's description of progress made
   - Examples: "Completed authentication schema", "Fixed validation bugs"

2. **Optional Current Reality Update** (controlled by parameter)
   - If user specifies `updateCurrentReality: true`
   - System adds to parent chart's current reality
   - Format: "Progress on [action]: [observation]"
   - Enables real-time reality adjustment as work happens

**Why Optional**:
- Some progress is internal (design thinking, research)—not ready to update reality yet
- Some progress should update parent reality (milestone reached, feature working)
- User controls when progress becomes "structural progress" vs internal work

**Example**:
```
Action Step: "Implement user authentication"

Progress updates (not marked complete):
1. "Designed JWT token strategy"
2. "Set up bcrypt password hashing"
3. "Built login endpoint, testing edge cases"

Optional: These feed into parent reality if user selects updateCurrentReality
Parent reality shows: "JWT strategy designed, bcrypt configured, login endpoint 80% done"

Only when action fully complete is "Completed: Implement user authentication" added to parent
```

### Observable Chart State

**What Users See in Progress Display**:

`list_active_charts` shows hierarchical view:

```
📋 Build production SaaS platform (Master Chart) (25% complete) [Due: 2026-06-30]
    ID: chart_1234567890
    ├── 🎯 Design system architecture (Action Step) (100%) [Completed]
    │   ID: chart_1111111111
    ├── 🎯 Implement core API (Action Step) (60%) [2026-04-15]
    │   ID: chart_2222222222
    ├── 🎯 Build user interface (Action Step) (0%) [2026-05-15]
    │   ID: chart_3333333333
    └── 🎯 Deploy to production (Action Step) (0%) [2026-06-15]
        ID: chart_4444444444
```

**Information Conveyed**:
- Master chart title and overall progress
- When it's due
- Each action step with its own progress
- Which actions completed (visual ✓)
- Which action is likely next (earliest incomplete)
- Can drill into any action to see its details

### Detailed Progress Information

**When user needs specifics about a chart**:

`get_chart_progress` returns:
```javascript
{
  chartId: "chart_1234567890",
  progress: 0.25,              // As decimal (0.0 to 1.0)
  completedActions: 1,         // How many done
  totalActions: 4,             // How many total
  nextAction: "chart_2222222222_desired_outcome",  // Which to work on
  dueDate: "2026-06-30"        // Master chart due date
}
```

User understands:
- Exactly what percentage complete
- How many more actions remain
- What to work on next
- Timeline pressure (days until due)

## Observation Accumulation - Creating Visible History

### Structure of Observations

**Observations preserve advancement history**:

```javascript
Current Reality Observations for chart_1234567890:
[
  "Never built a production app, completed Ruby basics",  // Initial assessment
  "Completed: Set up development environment",            // Auto-added
  "Progress on database design: Schema reviewed by mentor",// Optional progress
  "Completed: Design database schema",                    // Auto-added
  "Progress on API: Endpoints defined, implementing business logic" // Optional
]
```

**Three Types of Observations**:
1. **Initial Assessment** - The original current reality statement
2. **Completion Notifications** - "Completed: [action]" automatically added
3. **Progress Notes** - Optional mid-step tracking

**Why This Matters**:
- User can review the journey of advancement
- Shows exact moment when reality changed
- Creates record of what enabled forward progress
- Becomes learning pattern for future similar goals

### Observation Deduplication

**Prevent Duplicate Completion Messages**:

When marking action complete:
- System checks if observation already exists
- Only adds "Completed: [action]" if not present
- Handles cases where user marks same action complete multiple times
- Keeps observation history clean and readable

**Example Scenario**:
```
User marks "API development" complete
→ "Completed: Build API endpoints" added

(Later, if user marks same action complete again by accident)
→ System detects duplicate, doesn't add again
→ History stays clean: shows completion once
```

## Quality Criteria for Progress Tracking

✅ **Automatic Updates** - Reality changes without manual effort  
✅ **Visible Advancement** - Users see structural progress accumulating  
✅ **Accurate Percentages** - Progress calculations reflect true completion state  
✅ **Clear Next Steps** - Always know what action to work on  
✅ **Historical Record** - Can review how progress accumulated over time  
✅ **Cascading Updates** - Nested chart completions properly update parents  
✅ **Optional Detail** - Can track progress details without requiring completion updates  

## Creative Advancement Scenario - Progress Visibility

**Master Chart**: "Launch consultant practice by January 2026"

**Initial State**:
- Reality: "Have business plan, no systems built, no clients contacted"
- Actions: Set up business systems, build website, find initial clients
- Progress: 0%

**Week 1-2: System Setup**
- User works on business systems, updates progress
- Reality shows: "Systems partially set up, legal structure started"
- Parent recognizes: Action 1 maybe 40% done

**Week 3: Mark Action 1 Complete**
- "Set up business systems" marked complete
- Master chart's current reality AUTO-UPDATES: "Set up business systems" added
- New productive tension appears: "Systems ready, now need website"
- Progress shows: 33% complete (1 of 3 actions done)

**Week 6: Website Action Progress**
- User builds website, logs progress several times
- Reality shows evolution: "Domain registered", "Design in progress", "Pages drafted"
- Shows advancement without needing completion
- Can decide when action is "actually complete" vs "mostly done"

**Week 10: Website Complete**
- Mark action 2 complete
- Master reality shows: "Systems complete, website live"
- Progress: 66% complete (2 of 3 actions)
- New productive tension: "Infrastructure ready, now need clients"

**Week 16: Client Acquisition Complete**
- Mark action 3 complete
- Master reality shows: "Systems complete, website live, initial clients acquired"
- Progress: 100% complete
- Master goal achieved: "Consultant practice launched"

**Visible Advancement**: Reality transformed from "nothing built" to "fully operational practice" through visible completion cascade. User SAW the advancement, not just completed checklist items.

## Specification Independence

To implement progress tracking:

1. **Design completion status field** in action step entities
2. **Implement progress calculation** (completed / total actions)
3. **Build next-action identification** by due date and completion status
4. **Create completion cascade** updating parent entities
5. **Implement automatic reality updates** with "Completed:" format
6. **Build observation accumulation** without duplication
7. **Create progress display** showing percentages and next steps
8. **Implement optional progress tracking** with updateCurrentReality parameter
9. **Design observation history** showing timeline of advancement
10. **Build filtering and sorting** for chart status and progress

The specification shows **what progress tracking achieves** (visible advancement), **how it works automatically** (cascade on completion), and **why it matters** (structural tension stays alive as reality changes).

---

## Related Specifications

- **[Structural Tension Chart](./structural_tension_chart.spec.md)** - Entities that get updated
- **[Telescoping Action Steps](./telescoping_action_steps.spec.md)** - Where progress cascades through
- **[App Specification](./app.spec.md)** - How progress serves overall system

---

**RISE Framework**: v1.0 Compliant  
**Methodology**: Robert Fritz Structural Tension Principles  
**Last Updated**: 2025-12-11
