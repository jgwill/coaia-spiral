# COAIA Memory - Creative-Oriented AI Assistant Memory System

> MCP server implementing structural tension charts and advancing pattern support based on Robert Fritz's creative methodology

## What is COAIA Memory?

COAIA Memory extends traditional knowledge graphs with **structural tension charts** - a powerful framework for organizing creative processes around desired outcomes rather than problem-solving. Based on Robert Fritz's structural tension methodology, it helps AI assistants maintain creative orientation and support advancing patterns.

## Key Features

### 🎯 Structural Tension Charts
- **Desired Outcomes**: Clear, specific results you want to create
- **Current Reality**: Honest assessment of where you are now  
- **Structural Tension**: The unresolved tension between current reality and desired outcome that naturally seeks resolution follows the laws of structural dynamics well documented at the MIT (any system seeks equilibriem naturally )
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
- Prevents oscillating patterns through proper structural design

### 🗣️ Natural Language Ready
- Conversational patterns documented for intuitive interaction
- Creative-oriented language (focus on creation vs problem-solving)
- AI assistants can guide users through structural tension exercises

## Installation & Usage

### As NPX Package
```bash
npx coaia-spiral --memory-path ./my-charts.jsonl
```

### In Claude Desktop Config
```json
{
  "mcpServers": {
    "my-spiral-project": {
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

### Progress Updates (NEW Enhancement)
```javascript
// Natural language: "I'm halfway through the Django tutorial - completed models section"
{
  "actionStepName": "chart_123_action_1",
  "progressObservation": "Completed Django models section, working on views",
  "updateCurrentReality": true  // Optional: also update current reality
}
```

### Current Reality Updates (NEW Enhancement)
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

## Release Status

**Current Version**: v2.2.3

### ✅ Validated in RC
- **Core Structural Tension Charts**: Fully functional with proper entity relationships
- **Telescoping Support**: Action steps break down into sub-charts with due date inheritance
- **Advancing Pattern Tracking**: Completions flow into current reality, system advances naturally
- **MCP Integration**: All tools working correctly in Claude Code CLI environment
- **Real-World Testing**: Validated with actual user interactions in test environment

### Next Milestone
**Guided Chart Creation**: Transform from passive storage to active coaching system that helps users create meaningful structural tension charts with proper creative orientation validation.

## Credits

- **Author**: J.Guillaume D.-Isabelle <jgi@jgwill.com> (https://github.com/jgwill)
- **Methodology**: Robert Fritz - Structural Tension (https://robertfritz.com)  
- **Foundation**: Shane Holloman - Original MCP Knowledge Graph
- **License**: MIT

## Structural Tension Principle

**The Core Dynamic:**
When you clearly know what you want (desired outcome) AND honestly assess where you are (current reality), you create **structural tension** - an unresolved dynamic that naturally seeks resolution. This is not a "gap to be filled" but a **generative force** that advances the system toward equilibrium.

**Delayed Resolution Principle:**
"Tolerate discrepancy, tension, and delayed resolution" - Robert Fritz. The COAIA Memory system must **hold tension** rather than prematurely resolve it through defaults like "Ready to begin". Premature resolution destroys the structural tension essential for creative advancement. Current reality must be explicitly assessed, never assumed.

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
- # COAIA Spiral - Creative-Oriented AI Assistant Memory System

> MCP server implementing structural tension charts and advancing spiral patterns based on Robert Fritz's creative methodology

## What is COAIA Spiral?

COAIA Spiral extends traditional knowledge graphs with **structural tension charts** - a powerful framework for organizing creative processes around desired outcomes rather than problem-solving. Based on Robert Fritz's structural tension methodology, it helps AI assistants maintain creative orientation and support advancing spiral patterns.

## Key Features

### 🎯 Structural Tension Charts
- **Desired Outcomes**: Clear, specific results you want to create
- **Current Reality**: Honest assessment of where you are now  
- **Structural Tension**: The unresolved tension between current reality and desired outcome that naturally seeks resolution follows the laws of structural dynamics well documented at the MIT (any system seeks equilibriem naturally )
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
- Prevents oscillating patterns through proper structural design

### 🗣️ Natural Language Ready
- Conversational patterns documented for intuitive interaction
- Creative-oriented language (focus on creation vs problem-solving)
- AI assistants can guide users through structural tension exercises

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

### Progress Updates (NEW Enhancement)
```javascript
// Natural language: "I'm halfway through the Django tutorial - completed models section"
{
  "actionStepName": "chart_123_action_1",
  "progressObservation": "Completed Django models section, working on views",
  "updateCurrentReality": true  // Optional: also update current reality
}
```

### Current Reality Updates (NEW Enhancement)
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

## Release Status

**Current Version**: v2.2.3

### ✅ Validated in RC
- **Core Structural Tension Charts**: Fully functional with proper entity relationships
- **Telescoping Support**: Action steps break down into sub-charts with due date inheritance
- **Advancing Pattern Tracking**: Completions flow into current reality, system advances naturally
- **MCP Integration**: All tools working correctly in Claude Code CLI environment
- **Real-World Testing**: Validated with actual user interactions in test environment

### Next Milestone
**Guided Chart Creation**: Transform from passive storage to active coaching system that helps users create meaningful structural tension charts with proper creative orientation validation.

## Credits

- **Author**: J.Guillaume D.-Isabelle <jgi@jgwill.com> (https://github.com/jgwill)
- **Methodology**: Robert Fritz - Structural Tension (https://robertfritz.com)  
- **Foundation**: Shane Holloman - Original MCP Knowledge Graph
- **License**: MIT

## Structural Tension Principle

**The Core Dynamic:**
When you clearly know what you want (desired outcome) AND honestly assess where you are (current reality), you create **structural tension** - an unresolved dynamic that naturally seeks resolution. This is not a "gap to be filled" but a **generative force** that advances the system toward equilibrium.

**Delayed Resolution Principle:**
"Tolerate discrepancy, tension, and delayed resolution" - Robert Fritz. The COAIA Memory system must **hold tension** rather than prematurely resolve it through defaults like "Ready to begin". Premature resolution destroys the structural tension essential for creative advancement. Current reality must be explicitly assessed, never assumed.

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
- This prevents oscillation and creates genuine momentum (NOTE: Claude used "PREVENTS" which in itself, this whole usage of words like that makes it scary and potentially dangerous, we are not preventing anything, we are creating a natural system that wants to be in equilibrium, therefore, we volontarily create the desequilibrium. Saying we prevent 'oscillation' is like saying that problem-solving doesn't have its place, it does, it is just not creating....Also, the addition of 'genuine' is useless and does not add any values, it is just fluff, question yourself: 'is there a forward momentum that is not genuine?')

**Critical Distinction:**
- ❌ **Gap-thinking**: "I need to bridge the gap between A and B"
- ✅ **Structural tension**: "The unresolved tension between current reality A and desired outcome B naturally seeks resolution through strategic advancement".

* SO DONT FUCKIN use any variations of "gap thinking" god damn it !  In fact, never fuckin use the word "gap".  Any natural system will want to be in a state of equilibrium, that is why the tension resolve, it is not a gap that gets filled, it is RESOLVED.

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
  newObservations: ["New client requirement for mobile responsiveness", "Timeline extended"]
})
```

### Structural Benefits:
1. **Continuous Tension Updates**: Progress observations flow into current reality, keeping structural tension dynamic and accurate
2. **Advancement Awareness**: The system captures intermediate states, not just endpoints
3. **External Integration**: Reality can be updated based on changes outside the action steps
4. **Creative Flow**: Supports the natural, non-linear nature of creative processes

This transforms COAIA Memory from **outcome-focused** to **journey-aware**, maintaining structural integrity throughout the creative advancement process.

## Philosophy

COAIA Memory embodies the principle that **structure determines behavior**. By organizing memory around structural tension rather than problem-solving patterns, it creates a natural advancing structure that supports creative manifestation.

The system recognizes that structural tension is the fundamental organizing principle of the creative process - not a problem to be solved, but a generative force to be harnessed.

**Critical Distinction:**
- ❌ **Gap-thinking**: "I need to bridge the gap between A and B"
- ✅ **Structural tension**: "The unresolved tension between current reality A and desired outcome B naturally seeks resolution through strategic advancement".

* SO DONT FUCKIN use any variations of "gap thinking" god damn it !  In fact, never fuckin use the word "gap".  Any natural system will want to be in a state of equilibrium, that is why the tension resolve, it is not a gap that gets filled, it is RESOLVED.

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

This transforms COAIA Memory from **outcome-focused** to **journey-aware**, maintaining structural integrity throughout the creative advancement process.

## Philosophy

COAIA Memory embodies the principle that **structure determines behavior**. By organizing memory around structural tension rather than problem-solving patterns, it creates a natural advancing structure that supports creative manifestation.

The system recognizes that structural tension is the fundamental organizing principle of the creative process - not a problem to be solved, but a generative force to be harnessed.
