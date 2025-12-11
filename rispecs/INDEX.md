# COAIA Spiral - RISE-Based Specifications Index

**Document**: Comprehensive Specification Navigation Guide  
**Framework**: RISE v1.0 (Reverse-Engineer → Intent-Extract → Specify → Export)  
**Status**: Complete Application Specification Set  
**Last Updated**: 2025-12-11

---

## 🎯 How to Use These Specifications

### For Implementation Teams

If you're implementing COAIA Spiral from scratch:

1. **Start with [app.spec.md](./app.spec.md)** - Understand the complete system vision
   - What the system enables users to create
   - How structural tension drives natural advancement
   - Overall feature organization

2. **Read component specifications in this order**:
   - [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - Core entity
   - [telescoping_action_steps.spec.md](./telescoping_action_steps.spec.md) - Hierarchical complexity
   - [context_aware_storage.spec.md](./context_aware_storage.spec.md) - Persistence and organization
   - [progress_tracking.spec.md](./progress_tracking.spec.md) - Advancement monitoring
   - [llm_guidance.spec.md](./llm_guidance.spec.md) - Methodology enforcement

3. **Use specifications to guide implementation**
   - Each spec is completely independent of current TypeScript code
   - Implement based on "what the system does" not "how it's currently coded"
   - Validate implementation against quality criteria in each spec

### For Architecture Review

If you're evaluating the system design:

1. Review [app.spec.md](./app.spec.md) for overall architecture
2. Check each component spec for design principles
3. Verify quality criteria are met in implementation
4. Assess how features support creative advancement

### For LLM Agent Users

If you're using COAIA Spiral with AI assistants:

1. Read [llm_guidance.spec.md](./llm_guidance.spec.md) - Methodology principles
2. Understand [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - How charts work
3. Reference [app.spec.md](./app.spec.md) for tool overview
4. Use examples in each spec as patterns for your own goals

---

## 📋 Specification Organization

### Core Application Specification
- **[app.spec.md](./app.spec.md)** (13KB)
  - System overview and purpose
  - Desired outcomes, current reality, natural progression
  - Feature inventory organized by role
  - Supporting features creating advancement
  - Quality criteria and success metrics
  - READ THIS FIRST

### Component Specifications (Core to Supporting)

#### 1. Structural Tension Chart Component
- **[structural_tension_chart.spec.md](./structural_tension_chart.spec.md)** (12KB)
  - Core entity enabling creative orientation
  - Desired outcome and current reality validation
  - Structural dynamics maintaining productive tension
  - Metadata architecture
  - Validation rules with educational approach
  - Creative advancement scenarios

#### 2. Hierarchical Action Steps (Telescoping)
- **[telescoping_action_steps.spec.md](./telescoping_action_steps.spec.md)** (12KB)
  - Breaking complex goals into detail levels
  - Action steps as structural tension charts
  - Due date distribution and inheritance
  - Completion cascade (achievements flowing upward)
  - Parent-child navigation
  - Quality criteria for effective decomposition

#### 3. Multi-Context Storage
- **[context_aware_storage.spec.md](./context_aware_storage.spec.md)** (13KB)
  - Organizing charts across life/work domains
  - Project detection and initialization
  - File-based context isolation
  - Context switching and discovery
  - Momentum recognition within contexts
  - Cross-context pattern visibility

#### 4. Progress Tracking & Automatic Updates
- **[progress_tracking.spec.md](./progress_tracking.spec.md)** (13KB)
  - Completion percentage calculation
  - Automatic reality updates on action completion
  - Optional mid-step progress tracking
  - Observation accumulation showing advancement
  - Cascading updates through hierarchy
  - Visible advancement without manual effort

#### 5. LLM Guidance & Methodology Support
- **[llm_guidance.spec.md](./llm_guidance.spec.md)** (13KB)
  - Real-time validation with education
  - Problem-solving language detection
  - Readiness assumption prevention
  - Delayed Resolution principle enforcement
  - Multiple guidance levels (quick/full/save)
  - Error-based learning approach

---

## 🔄 Dependencies and Relationships

```
app.spec.md (System Overview)
├─ structural_tension_chart.spec.md (Core Entity)
│  └─ Depended on by all other components
│
├─ telescoping_action_steps.spec.md (Uses Structural Tension Charts)
│  ├─ Depends on: structural_tension_chart.spec.md
│  └─ Related to: progress_tracking.spec.md (completion cascade)
│
├─ context_aware_storage.spec.md (Where charts are stored)
│  ├─ Depends on: structural_tension_chart.spec.md
│  └─ Enables: Multi-context chart organization
│
├─ progress_tracking.spec.md (Monitoring advancement)
│  ├─ Depends on: structural_tension_chart.spec.md, telescoping_action_steps.spec.md
│  └─ Updates: Current reality automatically
│
└─ llm_guidance.spec.md (Methodology education)
   ├─ Validates: All structural_tension_chart principles
   └─ Teaches: Entire methodology to users and LLMs
```

---

## ✅ Quality Criteria - Evaluating Implementation

### Universal Criteria (All Specifications)

Every component must support:

**✅ Creative Enablement** - Helps users CREATE desired outcomes  
**✅ Structural Dynamics** - Maintains honest tension between reality and vision  
**✅ Natural Progression** - Advancement flows naturally, not through forced effort  
**✅ Advancing Patterns** - Moves forward vs creating back-and-forth oscillation  
**✅ Delayed Resolution** - Honors productive tension until strategic action resolves it  

### Component-Specific Criteria

**Structural Tension Chart**:
- Clear desired outcomes (specific, creative-oriented)
- Honest current reality (factual, no readiness assumptions)
- Productive tension maintained
- Validation prevents common mistakes

**Telescoping Action Steps**:
- Maintains creative orientation at each level
- Preserves structural tension at detail levels
- Natural progression through levels
- Completion cascades upward

**Context-Aware Storage**:
- Clear separation between contexts
- Easy discovery and switching
- Structural integrity per context
- Cross-context pattern visibility

**Progress Tracking**:
- Automatic updates on completion
- Visible advancement over time
- Historical record of progression
- Accurate percentage calculations

**LLM Guidance**:
- Teaches principles, not just rules
- Available at moment of need
- Enables correction and learning
- Transferable to other agents

---

## 📚 Key Concepts Across Specifications

### Structural Tension (Appears in All Specs)

**Definition**: Productive gap between current reality and desired outcome that drives natural creative action.

**How It Works**:
1. User articulates specific desired outcome
2. User honestly assesses current reality
3. Tension between these creates natural movement
4. Action resolves tension by moving reality toward outcome
5. When action completes, reality changes, new tension emerges
6. Cycle continues until outcome achieved

**Why It Matters**: Differs from problem-solving (which creates oscillation) by maintaining focus on what user wants to CREATE, not what to eliminate.

### Advancing vs Oscillating Patterns (Key Throughout)

**Advancing Patterns** (What COAIA Creates):
- Continuous movement toward desired outcomes
- Each completed action enables next action
- Reality transforms showing progress
- Momentum builds naturally
- Leads to manifestation of desired outcomes

**Oscillating Patterns** (What to Avoid):
- Back-and-forth movement without progress
- Solving problem → problem returns (back to square one)
- Effort without advancement
- Creates frustration despite hard work
- Typical of problem-solving approaches

### Creative Orientation (Foundation Principle)

**Creative Orientation** = Focus on what you want to CREATE
**Problem-Solving Orientation** = Focus on what you want to ELIMINATE

**COAIA Enforces Creative Orientation**:
- Validates desired outcomes (no "fix", "solve", "eliminate")
- Validates current reality (no "ready to", "prepared to")
- Teaches why it matters
- Guides users toward creative reframing

### Delayed Resolution Principle (From Robert Fritz)

**Principle**: "Tolerate discrepancy, tension, and delayed resolution"

**What It Means**:
- Productive tension should be maintained until strategic action resolves it
- Readiness assumptions ("I'm ready to start") prematurely resolve tension
- This premature resolution blocks creative advancement
- System prevents this with validation

**Examples**:
```
❌ Wrong: "Ready to learn Python" (premature resolution)
✅ Right: "Never programmed before, interested in web development" (maintains tension)

❌ Wrong: "Prepared to start the project" (assumes readiness)
✅ Right: "Have requirements, no architecture designed" (honest gap)
```

### Telescoping (Breaking Complexity While Maintaining Vision)

**What It Is**: Action steps become their own structural tension charts

**Why It Works**:
- Breaks overwhelming goals into manageable chunks
- Each chunk maintains productive tension
- Completion flows back up, showing master advancement
- User never disconnects detailed work from strategic vision

**Example**:
```
Master Goal: "Build production web application"
↓ (telescopes into)
Action 1: "Design system architecture"
  ↓ (can telescope further into)
    Sub-action: "Design database schema"
    Sub-action: "Design API architecture"
    (when both complete → "Architecture designed" updates master reality)
```

### Context-Aware Organization (Supporting Focus and Momentum)

**What It Is**: Organizing charts by life/work domains

**Why It Works**:
- Users can focus on one area (e.g., "work") without seeing other areas
- Progress within a context is visible
- Patterns across contexts become apparent
- Momentum in one area recognized separately

**Example**:
```
Work Context: 8 charts, 60% complete (strong momentum)
Personal Context: 2 charts, 15% complete (stalled)
Learning Context: 4 charts, 80% complete (nearly done)
→ User sees: "I should focus on personal goals, other momentum might sustain"
```

---

## 🎓 Reading Paths Based on Your Role

### Path 1: Understanding the Methodology (5-10 minutes)

For: Users wanting to understand how COAIA works

1. Read [app.spec.md](./app.spec.md) sections on:
   - Desired Outcome Definition
   - Natural Progression - How Structural Tension Creates Advancement
   - Feature Inventory overview

2. Read key sections from [structural_tension_chart.spec.md](./structural_tension_chart.spec.md):
   - The Core Structural Dynamic
   - What Makes Tension Productive

3. Skim: [llm_guidance.spec.md](./llm_guidance.spec.md) - Understand creative orientation principle

### Path 2: Complete System Understanding (30-45 minutes)

For: LLM agents, product managers, architects

Read in order:
1. [app.spec.md](./app.spec.md) - Complete reading
2. [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - Core entity
3. [telescoping_action_steps.spec.md](./telescoping_action_steps.spec.md) - Hierarchy
4. [context_aware_storage.spec.md](./context_aware_storage.spec.md) - Organization
5. Skim others as needed

### Path 3: Implementation Deep Dive (2-3 hours)

For: Development teams building COAIA Spiral

1. Read all specifications completely
2. Study Creative Advancement Scenarios in each
3. Review Quality Criteria sections
4. Study Specification Independence sections showing what to build
5. Create implementation plan based on architectural understanding

### Path 4: Learning the Methodology (1 hour)

For: Understanding how to use COAIA effectively

1. [llm_guidance.spec.md](./llm_guidance.spec.md) - Complete methodology
2. [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - Validation examples
3. All Creative Advancement Scenarios across all specs
4. Practice with the [app.spec.md](./app.spec.md) tool descriptions

---

## 🔍 Key Sections to Find What You Need

### "How do I create a chart?"
→ [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - Primary Components section
→ [app.spec.md](./app.spec.md) - Tool Categories section

### "What's the difference between problem-solving and creative orientation?"
→ [llm_guidance.spec.md](./llm_guidance.spec.md) - Validation Checkpoints section
→ [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - Validation Rules section

### "How do action steps work?"
→ [telescoping_action_steps.spec.md](./telescoping_action_steps.spec.md) - The Core Principle section
→ [app.spec.md](./app.spec.md) - Feature Inventory section

### "How does progress tracking work?"
→ [progress_tracking.spec.md](./progress_tracking.spec.md) - Progress Calculation and Completion Workflow sections

### "How do I organize my goals?"
→ [context_aware_storage.spec.md](./context_aware_storage.spec.md) - Project Detection and Context Selection Priority sections

### "Why does COAIA prevent readiness assumptions?"
→ [llm_guidance.spec.md](./llm_guidance.spec.md) - The Delayed Resolution Principle section
→ [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) - What Makes Tension Productive section

### "How should I teach another LLM the methodology?"
→ [llm_guidance.spec.md](./llm_guidance.spec.md) - Embedded Guidance Content section
→ [llm_guidance.spec.md](./llm_guidance.spec.md) - Educational Approach for Different Learners section

---

## 📊 Specification Statistics

| Specification | Size | Focus | Key Concept |
|---|---|---|---|
| app.spec.md | 13KB | System Overview | Creative Orientation |
| structural_tension_chart.spec.md | 12KB | Core Entity | Productive Tension |
| telescoping_action_steps.spec.md | 12KB | Hierarchy | Complexity Management |
| context_aware_storage.spec.md | 13KB | Organization | Domain Separation |
| progress_tracking.spec.md | 13KB | Advancement | Automatic Updates |
| llm_guidance.spec.md | 13KB | Methodology | Education + Validation |
| **TOTAL** | **~76KB** | **Complete System** | **Creative Advancement** |

---

## 🚀 Next Steps

### For Implementers
1. Review [app.spec.md](./app.spec.md) for system overview
2. Study component specs in dependency order
3. Build implementation plan based on specifications
4. Validate against quality criteria

### For Users/LLMs
1. Read [llm_guidance.spec.md](./llm_guidance.spec.md) for methodology
2. Study [structural_tension_chart.spec.md](./structural_tension_chart.spec.md) examples
3. Review Creative Advancement Scenarios in all specs
4. Start creating charts following the principles

### For Reviewers
1. Check [app.spec.md](./app.spec.md) for feature coverage
2. Verify each component against its quality criteria
3. Review Creative Advancement Scenarios for real-world applicability
4. Assess methodology teaching effectiveness via [llm_guidance.spec.md](./llm_guidance.spec.md)

---

## 📝 Document Compliance

- **Framework**: RISE v1.0 Compliant
- **Methodology**: Robert Fritz Structural Tension Principles
- **Implementation Status**: Codebase-Agnostic Specifications
- **Use**: Reference architecture for implementation or review
- **Transferability**: Another team could re-implement entire system from these specifications

---

**Generated**: 2025-12-11  
**Framework Version**: RISE v1.0  
**Status**: Complete Specification Set  
**Last Review**: Initial Complete Specification Creation
