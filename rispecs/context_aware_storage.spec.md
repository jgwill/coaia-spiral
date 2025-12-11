# Context-Aware Storage Specification

**Component**: Multi-Context Chart Organization and Persistence  
**Purpose**: Organize structural tension charts across different life/work areas while maintaining creative dynamics  
**RISE Phase**: Implementation Independence - Codebase Agnostic

---

## Desired Outcome Definition

**What Users Create:**

Users organize their goals across meaningful life contexts (work, personal, health, learning) while:
- Maintaining separate structural tension for different goal areas
- Accessing any context immediately without disrupting others
- Understanding progress across all areas simultaneously
- Creating and recognizing patterns within specific contexts
- Preserving context-specific momentum across sessions

## Current Reality

**The Organization Challenge:**

Without context awareness, users struggle with:
- All goals mixed together without organizational structure
- Work goals interrupting personal goal tracking
- Learning goals sharing storage with immediate life goals
- No way to focus on one area without seeing everything
- No recognition of patterns within specific life domains

## Natural Progression - How Context-Aware Storage Enables Advancement

### The Core Principle: Contexts as Life Domains

Each context represents a meaningful area of user's life/work:

**Default Contexts** (provided automatically):
- **default** - General or uncategorized goals
- **work** - Professional development, career, job projects
- **personal** - Life goals, habits, relationships, household
- **learning** - Skill development, education, knowledge acquisition
- **health** - Physical health, mental wellness, fitness, nutrition

**User-Defined Contexts**:
- Users create any context meaningful to them
- Examples: "side-projects", "family", "financial", "spiritual", "community"
- Contexts emerge dynamically as needed
- Each has own separate storage file maintaining isolation

### How Context Awareness Creates Natural Progression

**Without Context Awareness**:
- All goals compete for attention
- Progress in one area doesn't feel distinct from others
- User can't see "I'm advancing well in work but stalled in health"
- Patterns within one domain get lost in overall noise

**With Context Awareness**:
- User can focus on "work" context: "Here's my professional advancement"
- Can then check "personal" context: "Here's my life goal progress"
- Can recognize: "Strong work momentum, need to focus on health"
- Each context maintains productive tension independently
- Cross-context patterns become visible (e.g., "success at work is affecting personal time")

### Storage Architecture - Separation Enabling Clarity

**File-Based Context Isolation**:

```
.coaia/
├─ charts.jsonl              (default context - no prefix)
├─ charts-work.jsonl         (work context)
├─ charts-personal.jsonl     (personal context)
├─ charts-learning.jsonl     (learning context)
├─ charts-health.jsonl       (health context)
├─ charts-side-projects.jsonl (user-defined context)
└─ templates/
   └─ common-goals.txt       (usage patterns)
```

**Why File Separation Works**:
1. **No File Locking Issues** - Each context has own file, multiple processes can work with different contexts
2. **Clear Organization** - Can manually inspect files, understand structure
3. **Context Isolation** - Bugs or issues in one context don't affect others
4. **Easy Backup** - Can back up specific context separately
5. **Natural Scaling** - Adding new contexts is just adding new file

## Feature Inventory - Context Management

### Project Detection and Initialization

**Automatic Project Root Detection**:

System looks for project markers (in order):
1. `.git` directory
2. `package.json` (Node.js project)
3. `pyproject.toml` (Python project)
4. `Cargo.toml` (Rust project)
5. `go.mod` (Go project)

**Initialization Process**:

When `initialize_coaia_project` called:

1. **Create .coaia directory** in project root
2. **Initialize default files**:
   - `charts.jsonl` - default context
   - `charts-work.jsonl` - work context
   - `charts-personal.jsonl` - personal context
   - `charts-learning.jsonl` - learning context
3. **Create templates directory** with usage patterns
4. **Add methodology guidance** explaining context usage

### Context Selection Priority

**User Can Store Charts In Three Ways**:

**Priority 1: Explicit Context Parameter**
- User specifies context when creating chart
- Chart stored in `charts-{context}.jsonl`
- Example: `create_chart_in_context(outcome, reality, dueDate, context="work")`

**Priority 2: Project-Local .coaia Directory**
- Project root has `.coaia` subdirectory (initialized)
- Charts stored in project-specific files
- Enables per-project goal organization
- Survives project cloning and moves

**Priority 3: Configured Memory Path**
- User starts server with `--memory-path` flag
- Charts stored at custom location
- Enables cloud sync, network locations, etc.
- Override for special use cases

**Priority 4: Default Fallback**
- Global default location (package directory)
- Used if none of above apply
- Enables quick start without setup

### Context Switching and Discovery

**List All Contexts**:

`list_coaia_projects` returns:
- Current project detection status
- All available contexts
- Chart count per context
- Directory locations
- Structure overview

**Example Response Structure**:
```json
{
  "current_project": "/path/to/my-project/.coaia",
  "project_contexts": {
    "default": {
      "file": "charts.jsonl",
      "charts": 5,
      "path": "/path/to/my-project/.coaia/charts.jsonl"
    },
    "work": {
      "file": "charts-work.jsonl",
      "charts": 12,
      "path": "/path/to/my-project/.coaia/charts-work.jsonl"
    },
    "personal": {
      "file": "charts-personal.jsonl",
      "charts": 3,
      "path": "/path/to/my-project/.coaia/charts-personal.jsonl"
    }
  },
  "total_project_charts": 20
}
```

**List Charts in Context**:

`list_charts_in_context("work")` shows:
- All charts in work context
- Desired outcomes, current reality, due dates
- Action step counts per chart
- Creation dates
- Organized for easy review of one context

### Context-Specific Chart Operations

**All chart operations support context parameter**:

```
create_chart_in_context(
  desiredOutcome: "Establish leadership presence",
  currentReality: "Individual contributor, no team management experience",
  dueDate: "2026-06-30",
  context: "work"  // Explicitly goes to work context
)

list_charts_in_context(context: "personal")  // Review personal goals only
```

### Metadata Context Tracking

**Chart Metadata Includes Context**:

Each chart entity has metadata:
```javascript
{
  chartId: "chart_1234567890",
  context: "work",           // Which context this chart belongs to
  dueDate: "...",
  level: 0,
  createdAt: "...",
  updatedAt: "..."
}
```

**Why Context in Metadata**:
1. **Portable Reference** - Chart carries context info
2. **Cross-Context Navigation** - Can understand broader context if needed
3. **Query Support** - Can find all charts from specific context
4. **Multi-Agent Access** - Different agents can respect context boundaries

## Supporting Features - Context-Enabled Advancement

### Momentum Recognition Within Contexts

**Pattern Within Single Context**:

User working in "work" context sees:
- Week 1: Created 3 leadership charts
- Week 3: Completed 1 leadership skill action, updated reality on 2 others
- Week 5: Second chart approaching completion
- Week 7: First chart completed, reality shows "3 team interactions completed"

User recognizes: **"I have strong momentum in work goal advancement this month"**

**Cross-Context Pattern Recognition**:

By viewing multiple contexts:
- Work: Strong momentum (5 charts, 60% average completion)
- Personal: Stalled (2 charts, 10% completion)
- Health: Building (3 charts, 45% completion)

User decides: **"Block time for personal goals, momentum building in other areas might let them stall"**

### Context-Specific Templates and Patterns

**Templates Directory** supports context-specific guidance:

```
.coaia/templates/
├─ common-goals.txt        # General patterns
├─ work-goals.txt          # Work-specific patterns
├─ personal-habits.txt     # Personal goal patterns
└─ learning-skills.txt     # Learning progression patterns
```

Templates show:
- Common goals in this context
- How similar goals were previously achieved
- Patterns specific to this life domain
- Estimated timelines and action steps

### Project-Local vs Global Charts

**Project-Local Benefits**:
- Goals specific to this project (not in global memory)
- Team can share project goals if collaborative
- Goals archived when project completes
- Clear separation: "project work" vs "personal growth"

**Global Benefits**:
- Long-term personal goals across many projects
- Career progression tracked across roles
- Health goals maintained regardless of work projects
- Life patterns visible across years

**Mixed Approach**:
- User can have both: global learning goals + project-specific work goals
- Each project gets `initialize_coaia_project` in its root
- User also maintains personal global charts
- Contexts keep them organized

## Quality Criteria for Context Management

✅ **Clear Separation** - Charts in one context don't bleed into another  
✅ **Easy Discovery** - User can quickly find which context contains which goal  
✅ **Flexible Creation** - Contexts emerge naturally as user needs them  
✅ **Structural Integrity** - Each context maintains independent productive tension  
✅ **Cross-Context Awareness** - User can see all contexts simultaneously for pattern recognition  
✅ **Session Independence** - Context organization survives across agent sessions  
✅ **Scalable** - Works whether user has 3 contexts or 30  

## Creative Advancement Scenario - Context-Enabled Success

**Initial State**:
```
Project: "Online Learning Platform"
├─ Context: work
│  └─ 8 charts: Platform features, team leadership, deadline management
├─ Context: learning  
│  └─ 3 charts: Python skills, React mastery, system design knowledge
├─ Context: personal
│  └─ 2 charts: Morning routine, fitness tracking (stalled)
└─ Context: health
   └─ 4 charts: Running program, sleep consistency, nutrition plan
```

**Progression Over 12 Weeks**:

**Week 4**: User reviews all contexts
- Work: 40% complete (platform progressing)
- Learning: 60% complete (skill advancement happening)
- Personal: 15% complete (realized goal commitment dropped)
- Health: 35% complete (fitness stalled, sleep improving)

**Recognition**: "Learning and work momentum is strong, but personal goals and health need attention"

**Week 8**: Context refocus
- Added 3 new personal habit charts in "personal" context
- Structured learning to support the main work project
- Health goals now driving morning routine personal goal
- Cross-context reinforcement emerges

**Week 12**: Completion patterns visible
- Work: 95% complete (platform launched)
- Learning: 100% complete (achieved skill goals)
- Personal: 70% complete (habits improving)
- Health: 80% complete (sustained fitness and sleep)

**Pattern Recognized**: "Completing work goals gave energy to other areas"

**Future Advantage**: Archives show when user completes projects in work, other areas naturally advance too—this becomes a planning principle.

## Specification Independence

To implement context-aware storage:

1. **Design file-based storage** with context in filename
2. **Implement project root detection** using marker files
3. **Create initialization process** setting up .coaia directory structure
4. **Build context parameter** support in all chart operations
5. **Implement metadata context field** in chart entities
6. **Design context discovery** showing available contexts and counts
7. **Build isolated file operations** per context (no cross-context read/write)
8. **Create template directory** for context-specific patterns
9. **Implement context switching** in chart operations
10. **Build reporting** showing progress across all contexts

The specification shows **what context-aware storage enables** (organized goal management), **how it maintains separation** (one file per context), and **why it drives advancement** (users recognize patterns within and across contexts).

---

## Related Specifications

- **[Structural Tension Chart](./structural_tension_chart.spec.md)** - Charts stored in contexts
- **[App Specification](./app.spec.md)** - Overall system using context storage
- **[LLM Guidance](./llm_guidance.spec.md)** - Methodology for using contexts effectively

---

**RISE Framework**: v1.0 Compliant  
**Methodology**: Robert Fritz Structural Tension Principles  
**Last Updated**: 2025-12-11
