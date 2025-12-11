# COAIA Spiral - Application Specification

**Status**: RISE Framework v1.0 Compliant  
**Last Updated**: 2025-12-11  
**Implementation Language**: TypeScript / Node.js  
**Server Type**: Model Context Protocol (MCP)

---

## Overview

COAIA Spiral is a creative-oriented Memory Management System that transforms how AI assistants and users approach goal achievement through structural tension dynamics. Rather than reactive problem-solving, the system enables users to create their desired futures by maintaining honest structural tension between "where they are" and "where they want to be."

## Desired Outcome Definition

**What Users Create Through COAIA Spiral:**

Users manifest advancing creative patterns toward their desired outcomes through:

1. **Structural Clarity** - Explicit definition of desired outcomes paired with honest current reality assessments
2. **Natural Progression** - Strategic action steps that naturally resolve structural tension toward desired states
3. **Advancing Momentum** - Completion of actions flows automatically into current reality, building inevitable progression
4. **Nested Complexity Management** - Breaking complex goals into detailed sub-charts (telescoping) without losing strategic focus
5. **Organized Context Awareness** - Maintaining multiple goal hierarchies across life/work areas while preserving structural dynamics

## Current Reality

**System's Starting Point:**

- Users navigate between multiple goal domains (work, personal, health, learning)
- Complex goals require breakdown into manageable action steps
- Progress tracking often disconnects from strategic advancement
- Knowledge must be persistent across sessions and accessible to multiple AI agents
- Traditional documentation creates oscillating patterns (solve problem → problem returns)

## Natural Progression - How Structural Tension Creates Advancement

The system progresses from current reality toward desired outcomes through these natural dynamics:

### Phase 1: Germination - Vision Formation
- User articulates what they want to CREATE (not problems to eliminate)
- Honest assessment of current reality establishes productive tension
- System validates creative orientation - rejects problem-solving language
- Initial structural tension chart created as foundational container

### Phase 2: Assimilation - Building Structure
- User identifies strategic action steps that advance toward outcome
- Each action becomes a telescoped structural tension chart (nested complexity)
- Completed actions automatically flow into current reality
- Progress observations accumulate to show advancing patterns
- Multiple contexts organize charts by life area (work, personal, learning, etc.)

### Phase 3: Completion - Manifestation
- Strategic actions and sub-charts converge toward desired outcome
- Current reality progressively transforms through completed actions
- System recognizes outcome achievement and enables archival as learning pattern
- Completed charts become templates for future similar goals

## Feature Inventory - Advancing Pattern Support

### Core Creative Features
- **Structural Tension Chart Creation** - Establishes productive tension between reality and vision
- **Action Step Telescoping** - Breaks complex goals into detailed sub-charts maintaining hierarchy
- **Progress Tracking** - Accumulates observations showing advancement without requiring manual updates
- **Automatic Reality Updates** - Completed actions flow into current reality, advancing structural tension
- **Delayed Resolution Validation** - Prevents premature tension resolution that would block advancement

### Context-Aware Organization
- **Multi-Context Storage** - Separate chart databases for work, personal, health, learning, etc.
- **Project Detection** - Automatic identification of project boundaries for chart organization
- **Flexible Context Creation** - Users define meaningful categories for their goal areas
- **Context Switching** - Easy navigation between different goal hierarchies

### Knowledge Graph Foundation
- **Entity-Relation Storage** - Flexible knowledge representation supporting chart structures
- **Observation Accumulation** - Rich descriptive data about chart components
- **Search and Navigation** - Find charts and observations across all contexts
- **Persistent Memory** - Session-independent storage accessible to multiple AI agents

### Integration Features
- **MCP Server Protocol** - Seamless integration with Claude, Gemini, and other AI assistants
- **LLM Guidance System** - Embedded methodology training preventing common creative orientation mistakes
- **Command-Line Flexibility** - Custom memory paths for workspace integration

## Supporting Features - What Makes Natural Progression Inevitable

### Structural Dynamics
- **Productive Tension** - System enforces tension between honest current reality and clear desired outcomes
- **Advancing Language** - Validates that desired outcomes describe creation, not elimination
- **Reality Assessment Requirements** - Prevents "ready to begin" language that prematurely resolves tension
- **Automatic Tension Updates** - Completed actions reshape current reality, generating new productive tension

### Telescoping Architecture
- **Hierarchical Relationships** - Action steps maintain parentage, enabling navigation between overview and detail
- **Inherited Due Dates** - Automatic distribution of due dates through action step hierarchy
- **Level Tracking** - System understands chart depth (master charts vs nested action steps)
- **Reverse Telescoping** - Completed sub-charts flow achievements back into parent chart's current reality

### Progress Accumulation
- **Observation Pattern** - All progress stored as observations creating historical record of advancement
- **Optional Current Reality Flow** - Progress can optionally feed into current reality for dynamic tension updates
- **Completion Detection** - System recognizes when action steps are complete and triggers automatic updates
- **Progress Calculation** - Real-time percentage completion based on action step status

### Multi-Agent Memory
- **Persistent JSONL Storage** - Charts survive across sessions and agent conversations
- **Flexible Storage Paths** - Support for project-local (.coaia), configured (--memory-path), and default locations
- **File-Based Locking Prevention** - Simple append-only storage model prevents race conditions
- **Context Isolation** - Separate context files prevent context bleed while enabling cross-context navigation

## Structural Pattern Analysis

### Advancing Patterns the System Supports
1. **Linear Progression** - Straightforward goal achievement through sequential action steps
2. **Parallel Advancement** - Multiple independent sub-charts contributing to master outcome
3. **Cascading Completion** - Nested telescoped charts completing in layers, each updating parent reality
4. **Context Momentum** - Success in one area (work context) informing patterns in another (personal)
5. **Recurring Cycles** - Archived completed charts providing templates for similar future goals

### Avoided Oscillating Patterns
- System explicitly prevents "problem-solving" framing that creates back-and-forth patterns
- Rejects readiness assumptions that create false resolution of structural tension
- Maintains distinction between desired outcomes and current reality to prevent premature resolution
- Encourages honest assessment that prevents hopeful assumptions from blocking advancement

## Architectural Organization

### Tool Categories by Functional Role

**Structural Tension Chart Management** (Primary Workflow)
- `create_structural_tension_chart` - Establish tension between desired outcome and current reality
- `list_active_charts` - Overview of all charts and their advancement
- `add_action_step` - Add strategic actions (creates telescoped chart)
- `telescope_action_step` - Zoom into action step detail
- `update_current_reality` - Add observations showing advancement
- `update_desired_outcome` - Reframe desired outcome as understanding evolves
- `mark_action_complete` - Complete actions, trigger automatic reality updates

**Progress Tracking** (Supporting Advancement)
- `get_chart_progress` - Detailed metrics on how close action steps are to completion
- `update_action_progress` - Track work without marking completion
- `update_action_step_title` - Refine action step description

**Project Organization** (Context-Aware Persistence)
- `initialize_coaia_project` - Set up multi-context chart organization
- `list_coaia_projects` - View project status and context summary
- `create_chart_in_context` - Create charts in specific life/work areas
- `list_charts_in_context` - View all charts for a context

**Knowledge Graph Foundation** (Advanced Integration)
- `create_entities` - Add knowledge entities (rarely used for chart work)
- `create_relations` - Connect knowledge (rarely used for chart work)
- `search_nodes` - Find information across all stored knowledge
- `open_nodes` - Access specific chart components directly

**System Guidance** (Methodology Support)
- `init_llm_guidance` - Access COAIA Memory methodology training

## Quality Criteria for Advancing Patterns

Each feature is evaluated on:

- ✅ **Creative Enablement** - Does it help users CREATE their desired outcomes?
- ✅ **Structural Dynamics** - Does it maintain honest tension between reality and vision?
- ✅ **Natural Progression** - Does advancement flow naturally or require forced effort?
- ✅ **Advancing Pattern Support** - Does it move users forward or create back-and-forth movement?
- ✅ **Delayed Resolution** - Does it honor the principle of tolerating productive tension?

## Implementation Independence

This specification is completely autonomous from the current TypeScript implementation. Another team implementing these specifications would:

1. Understand the system enables **creative goal manifestation through structural tension**
2. Recognize core dynamics: **desired outcome + honest reality + strategic actions = natural progression**
3. Implement **persistent, multi-context chart storage** with automatic progression
4. Build **hierarchical telescoping support** for breaking complex goals into manageable pieces
5. Create **automatic reality updates** when action steps complete, maintaining productive tension
6. Provide **validation and guidance** to prevent problem-solving language that blocks advancement

The specification describes **what the system does and why**, not how it's currently coded, ensuring any capable development team could re-implement its full power.

---

## Related Specifications

- **[Structural Tension Chart Component](./structural_tension_chart.spec.md)** - Core chart entity and dynamics
- **[Context-Aware Storage](./context_aware_storage.spec.md)** - Multi-context persistence and organization
- **[Telescoping Action Steps](./telescoping_action_steps.spec.md)** - Hierarchical complexity management
- **[LLM Integration & Guidance](./llm_guidance.spec.md)** - AI assistant methodology training
- **[Progress Tracking & Dynamics](./progress_tracking.spec.md)** - Advancement monitoring and updates

---

## Success Metrics

A successful COAIA Spiral implementation produces:

1. **Users Manifest Advancing Patterns** - Charts show clear progression from current reality toward desired outcomes
2. **Creative Orientation Preserved** - System language consistently reflects creation focus, never problem-solving
3. **Structural Tension Maintained** - Honest assessment prevents premature resolution that would block advancement
4. **Multi-Context Organization** - Users effectively manage goals across different life/work areas
5. **Telescoping Effectiveness** - Complex goals decompose naturally into action step detail levels
6. **Persistent Progress** - Charts survive sessions, accessible to multiple AI agents
7. **Automatic Advancement** - Completed actions automatically flow into current reality, creating new productive tension

---

## Evolution Path

Future enhancements maintaining creative orientation:

- **Collaborative Tension Charts** - Multiple users maintaining shared structural tension
- **Pattern Recognition** - System identifying recurring advancing patterns across completed charts
- **Outcome Refinement** - Dynamic desired outcome updating as understanding evolves
- **Cross-Context Advancement** - Recognizing how success in one area enables progress in others
- **Guided Decomposition** - AI-assisted telescoping suggesting natural action step breakdowns
- **Recovery Patterns** - Recognizing when structural tension becomes unhealthy and suggesting reframes

---

**Document Compliance**: RISE Framework v1.0 Compliant  
**Last Review**: 2025-12-11  
**Next Review**: Quarterly or upon major feature addition
