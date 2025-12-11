# LLM Guidance and Methodology Support Specification

**Component**: Embedded Creative Orientation Training and Validation  
**Purpose**: Teach and enforce structural tension principles through real-time guidance and validation  
**RISE Phase**: Implementation Independence - Codebase Agnostic

---

## Desired Outcome Definition

**What Users and LLMs Create:**

Users and AI assistants manifest understanding of creative orientation principles while:
- Naturally avoiding problem-solving language that creates oscillation
- Maintaining productive structural tension through honest assessment
- Recognizing when goals or statements need reframing
- Building intuition for creative vs reactive approaches
- Teaching other LLMs the proper methodology
- Preventing common mistakes that would block advancement

## Current Reality

**The Challenge Without Guidance:**

Users and LLMs naturally default to:
- Problem-solving language ("fix", "eliminate", "solve")
- Readiness assumptions ("ready to begin", "prepared to start")
- Reactive approaches ("I need to stop procrastinating")
- Forced connections ("bridge the gap")
- Artificial deadlines without creative vision
- Circular reasoning that doesn't resolve toward outcomes

## Natural Progression - How Embedded Guidance Creates Understanding

### The Core Principle: Real-Time Education Through Validation

Rather than separate training, guidance is embedded in the tool usage itself:

**User Makes a Mistake**:
```
User: "I want to fix communication problems in my team"
System: ❌ ERROR + EDUCATION
```

**System Response** (not just error, but teaching moment):
1. **Identifies the Problem**: "Contains problem-solving language: 'fix'"
2. **Explains Why It Matters**: Links to Robert Fritz principle about oscillation
3. **Shows Examples**: Good vs problematic framings
4. **Enables Correction**: User immediately understands how to reframe
5. **Guides Next Step**: Helps user craft creative-oriented statement

**User Can Then**:
- Reframe: "Establish clear, effective team communication"
- Try again: System accepts, chart is created
- Remember next time: Has pattern to follow
- Teach others: Understands principle, not just rule

### Why This Creates Understanding (Not Compliance)

**Compliance Approach**: "Just follow the rules"
- Users follow rules without understanding
- When frustrated, abandon the system
- Don't help other LLMs learn

**Understanding Approach**: "Here's why this matters"
- Users understand creative orientation principle
- Naturally avoid mistakes
- Can teach methodology to other assistants
- Build advancing patterns in their thinking

## Feature Inventory - Guidance and Validation Systems

### Validation Checkpoints (Where Guidance Happens)

**1. Desired Outcome Validation**

System checks for problem-solving language in desired outcomes:

**Flagged Words**:
- "fix", "solve", "eliminate", "prevent", "stop", "avoid", "reduce", "remove"

**When Detected**:
- Error thrown with educational message
- Message includes principle explanation
- Shows examples (wrong vs right)
- Guides user to creative reframing

**Example Error Message**:
```
🌊 CREATIVE ORIENTATION REQUIRED

Desired Outcome: "Fix communication problems"

❌ Problem: Contains problem-solving language: "fix"
📚 Principle: Structural Tension Charts use creative orientation - focus on what 
   you want to CREATE, not what you want to eliminate.

🎯 Reframe Your Outcome:
Instead of elimination → Creation focus

✅ Examples:
- Instead of: "Fix communication problems"
- Use: "Establish clear, effective communication practices"

- Instead of: "Reduce website loading time"  
- Use: "Achieve fast, responsive website performance"

Why This Matters: Problem-solving creates oscillating patterns. Creative 
orientation creates advancing patterns toward desired outcomes.

💡 Tip: Run 'init_llm_guidance' for complete methodology overview.
```

**2. Current Reality Validation**

System checks for readiness assumptions in current reality:

**Flagged Phrases**:
- "ready to", "prepared to", "all set", "ready for", "set to"

**When Detected**:
- Error thrown with educational message about Delayed Resolution principle
- Explains why readiness assumptions break structural tension
- Shows examples of good vs problematic assessments
- Guides user to honest assessment

**Example Error Message**:
```
🌊 DELAYED RESOLUTION PRINCIPLE VIOLATION

Current Reality: "Ready to learn Python"

❌ Problem: Contains readiness assumptions: "ready to"
📚 Principle: "Tolerate discrepancy, tension, and delayed resolution" - Robert Fritz

🎯 What's Needed: Factual assessment of your actual current state (not readiness).

✅ Examples:
- Instead of: "Ready to learn Python"
- Use: "Never programmed before, interested in web development"

- Instead of: "Prepared to start the project"
- Use: "Have project requirements, no code written yet"

Why This Matters: Readiness assumptions prematurely resolve the structural 
tension needed for creative advancement.

💡 Tip: Run 'init_llm_guidance' for complete methodology overview.
```

### Embedded Guidance Content

**init_llm_guidance Tool** provides methodology at three levels:

**Format: "quick"** (Essential Principles)
- Core tools and workflow
- Most common mistakes with examples
- Quick reference for new LLMs
- ~5-10 minute read

**Format: "full"** (Complete Methodology)
- All COAIA Memory principles
- Detailed philosophy and psychology
- All tools with usage patterns
- Common pitfalls and solutions
- ~20-30 minute read

**Format: "save_directive"** (Session Memory)
- Instructions for saving guidance to project files
- Recommendations for Claude.md, GEMINI.md, etc.
- How to maintain continuity across agent sessions
- Guidance on creating project-specific instructions

### Methodology Content Areas

**1. Creative Orientation Principles**
- What does creative orientation mean?
- How does it differ from problem-solving?
- Why it creates advancing vs oscillating patterns
- Examples from various life domains

**2. Structural Tension Dynamics**
- Current reality + Desired outcome = Productive tension
- Why tension should be maintained (not resolved prematurely)
- How tension drives natural action
- Role of honest assessment

**3. Delayed Resolution Principle**
- Why premature resolution blocks advancement
- Role of "readiness assumptions"
- How to maintain healthy tension
- When resolution is actually achievement

**4. Action Step Telescoping**
- Action steps as structural tension charts
- How telescoping maintains focus through complexity
- Parent-child relationships and how they work
- Completion cascade and automatic updates

**5. Context-Aware Organization**
- Organizing goals by life areas
- How context isolation prevents goal bleed
- Cross-context pattern recognition
- Momentum building in specific domains

**6. Tool Usage Patterns**
- Which tools to use and when
- Common workflows
- Avoiding anti-patterns
- How tools support methodology

### Educational Approach for Different Learners

**For Users (Non-Technical)**:
- Focus on creative vs problem-solving examples
- Concrete scenarios they recognize
- Practical benefits (advancement vs frustration)
- Emotional resonance of structural tension

**For LLMs (Technical Agents)**:
- Architectural understanding of why things work
- How to guide users toward creative orientation
- Recognizing when validation needed
- Teaching other agents the methodology

**For Developers (Implementers)**:
- How structure enables creative orientation
- Why validation is educational, not just restrictive
- How to extend guidance for new features
- How to add guidance for new error conditions

## Supporting Features - Making Guidance Accessible

### Guidance in Tool Documentation

Each tool includes:
- **What it does**: Capability description
- **Why it works**: Methodology explanation
- **Common mistakes**: Anti-patterns to avoid
- **Examples**: Correct vs incorrect usage

**Example Tool Documentation**:
```
Tool: create_structural_tension_chart

Description: Create a new structural tension chart with desired outcome, 
current reality, and optional action steps.

Creative Orientation: Use creative orientation (what you want to CREATE) 
not problem-solving (what you want to fix/solve). Current reality must be 
factual assessment, never 'ready to begin'.

Common Mistakes:
❌ Desired Outcome: "Fix team communication"
✅ Desired Outcome: "Establish clear communication practices"

❌ Current Reality: "Ready to start the project"
✅ Current Reality: "Have requirements, no implementation started"

Why This Matters: Structural tension requires honest gap between where 
you are and where you want to be. Problem-solving language creates 
oscillation instead of advancement.
```

### Error-Based Learning

**When Validation Fails** (user gives problematic input):

1. System doesn't just reject—explains why
2. Provides principle behind validation rule
3. Shows concrete examples of good vs bad
4. Enables user to reframe and succeed
5. User learns the principle, not just the rule

**This Creates**:
- Fewer repeat mistakes
- User understanding, not just compliance
- Confidence to help other LLMs understand
- Natural language that prevents problems

### Guidance Availability

**Multiple Access Patterns**:

1. **Proactive in Error Messages** - When user makes mistake, guidance appears
2. **On-Demand via Tool** - `init_llm_guidance` for any methodology refresher
3. **In Project Files** - CLAUDE.md, GEMINI.md, saved for continuity
4. **In Tool Descriptions** - Every tool has guidance built into its description
5. **In Comments** - Code examples show creative orientation patterns

## Quality Criteria for Guidance System

✅ **Teaches Principles** - Doesn't just enforce rules, explains why  
✅ **Accessible at Moment of Need** - Guidance appears when relevant  
✅ **Enables Correction** - User can reframe and succeed  
✅ **Transferable to Others** - Knowledge spreads to other LLMs  
✅ **Clear Examples** - Good vs bad patterns explicitly shown  
✅ **Respectful** - Error messages teach, not shame  
✅ **Continuous Learning** - Multiple levels available as user deepens understanding  

## Creative Advancement Scenario - Guidance in Practice

**New LLM Agent Starts Working on Project**:

**Interaction 1**: User asks LLM to help with goal
```
User: "I need to fix my poor time management"
LLM: (Educated by guidance) ❌ Error response explaining creative orientation
     Guides user to reframe: "Develop effective time management practices"
```

**Interaction 2**: LLM helps user create first chart
```
LLM uses `create_structural_tension_chart` 
User provides: 
  - Outcome: "Establish productive morning routine" ✅ (creative, not problem-solving)
  - Reality: "Currently wake up at 7:45, no structured start" ✅ (honest, not "ready")
  - Due: "2025-12-25"
```

**Interaction 3**: LLM helps breakdown into action steps
```
LLM: "Let's break this into strategic actions"
LLM uses `add_action_step` with:
  - Action: "Define ideal morning routine"
  - Current Reality: "Know what I want, haven't written it down" ✅
```

**Interaction 4**: Different LLM Joins Conversation**
```
Experienced LLM: Shows new LLM the guidance files
New LLM: Reads CLAUDE.md or saved guidance
Understands: Methodology principles, not just syntax
Can now teach users properly
```

**Result**: Methodology spreads through LLM community, all supporting creative advancement.

## Specification Independence

To implement guidance system:

1. **Create validation logic** checking for problem-solving and readiness language
2. **Build error messaging** that educates, not just rejects
3. **Design guidance content** at multiple understanding levels
4. **Implement guidance tool** providing on-demand methodology
5. **Create tool descriptions** with embedded guidance
6. **Build saving mechanism** for project-local guidance files
7. **Design error response patterns** showing examples
8. **Implement guidance levels** (quick, full, save_directive)
9. **Create learning paths** from basic to advanced understanding
10. **Build transferability** so guidance spreads to other agents

The specification shows **what guidance achieves** (shared understanding of methodology), **how it works** (validation with education), and **why it matters** (enables advancing patterns across multiple agents and domains).

---

## Related Specifications

- **[Structural Tension Chart](./structural_tension_chart.spec.md)** - Principles being taught
- **[Context-Aware Storage](./context_aware_storage.spec.md)** - Where guidance saved
- **[App Specification](./app.spec.md)** - How guidance integrates throughout system

---

**RISE Framework**: v1.0 Compliant  
**Methodology**: Robert Fritz Creative Orientation Principles  
**Last Updated**: 2025-12-11
