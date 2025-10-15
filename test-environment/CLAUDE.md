# coaia-spiral Test Environment

Welcome! You are now testing the coaia-spiral system - a creative-oriented MCP knowledge graph based on Robert Fritz's structural tension methodology.

## Available Tools

You have access to these COAIA Memory tools through MCP:

### COAIA Project and Context Management
- `initialize_coaia_project` - Set up a flexible .coaia directory structure for multi-context chart management.
- `list_coaia_projects` - Show COAIA project status and all available chart contexts.

### Structural Tension Charts (Context-Aware)
- `create_chart_in_context` - Create a structural tension chart in a specific context (e.g., 'work', 'personal').
- `list_charts_in_context` - List all structural tension charts within a specified context.
- `telescope_action_step` - Break action steps into detailed sub-charts
- `mark_action_complete` - Complete actions and update current reality
- `get_chart_progress` - Monitor chart advancement
- `list_active_charts` - Overview of all active charts (Note: This tool might need to be updated to be context-aware, or replaced by `list_charts_in_context` for specific contexts).

### Traditional Knowledge Graph
- `create_entities` - Add entities (people, concepts, events)
- `create_relations` - Connect entities with relationships
- `add_observations` - Record information about entities

## Test Scenarios

Try these natural language interactions:

### 1. Initialize COAIA Project
"Initialize a COAIA project in this directory."

### 2. List COAIA Projects
"Show me the status of my COAIA projects and available contexts."

### 3. Create a Chart in a Specific Context
"Create a structural tension chart in the 'learning' context. My desired outcome is to master advanced Python concepts by November 30, 2025. My current reality is I'm comfortable with Python basics but need to deepen my understanding of advanced topics. I'll start by completing an advanced async/await course."

### 4. List Charts in a Context
"List all charts in the 'learning' context."

### 5. Create Your First Chart (Default Context)
"I want to create a structural tension chart to learn guitar in 3 months. My current reality is I've never played an instrument before."

### 6. Add Action Steps
"For my guitar learning chart, I need to: buy a guitar, find a teacher, practice daily scales, and learn 5 songs."

### 7. Break Down Complex Steps
"Break down the 'find a teacher' step into more detail."

### 8. Track Progress
"I completed buying a guitar yesterday."

### 9. Monitor Charts
"Show me the progress on all my charts."

## Creative Orientation Guidelines

When creating charts, focus on:
- **What you want to CREATE** (not what you want to fix)
- **Specific desired outcomes** (not vague wishes)
- **Honest current reality** (not what you think you should be)
- **Action steps that bridge the gap** (not just busy work)

## Memory File

Your charts are saved to `.coaia/charts.jsonl` in this directory. You can examine this file to see how the structural tension data is stored.

## Philosophy

Remember: Structure determines behavior. By organizing memory around structural tension rather than problem-solving patterns, COAIA Memory naturally supports creative advancement patterns.

Focus on creation, not elimination. Ask "What do I want to create?" rather than "What problem do I need to solve?"