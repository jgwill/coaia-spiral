# CLI Tree Visualization for Structural Tension Charts

**Feature:** `coaia-spiral tree` - Terminal-based hierarchical visualization of charts and telescoping
**Analogous to:** `tree -L 3 myfolder` in Linux
**Purpose:** Visualize structural tension chart hierarchy, telescoping relationships, and advancement status

---

## Command Design

### Basic Usage

```bash
# View all charts in current project
coaia-spiral tree

# View with depth limit (like tree -L 3)
coaia-spiral tree -L 2
coaia-spiral tree --depth 2

# View specific chart and its telescoped children
coaia-spiral tree <chart-id>

# View with status indicators
coaia-spiral tree --status

# View with dates
coaia-spiral tree --dates

# View with completion percentage
coaia-spiral tree --progress

# Compact view (less detail)
coaia-spiral tree --compact

# Show only active charts (exclude completed)
coaia-spiral tree --active

# Agent-based views (future enhancement)
coaia-spiral tree --view ripple    # Ripple's structural distillation view
coaia-spiral tree --view mia       # Mia's strategic analysis view
coaia-spiral tree --view atlas     # Atlas's cartography view
```

---

## Visualization Format

### Example Output

```
🌀 COAIA Spiral - Structural Tension Charts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 Project: Ceremony Spiral Development
   Location: /home/user/projects/ceremony-spiral/.coaia/

🎯 chart_2025110101 [▓▓▓▓▓▓▓▓▓░] 85% ⚡ ACTIVE
│  Desired: Complete Ceremony Spiral pilot deployment
│  Reality: Technical architecture designed, pilot customer identified
│  Due: 2026-03-15
│
├─── 📌 action_1: Design agent system architecture [✓] COMPLETED
│    │  Due: 2025-12-15 | Completed: 2025-12-10
│    │
│    └─── 🔭 chart_2025110102 [▓▓▓▓▓▓▓▓▓▓] 100% ✓ COMPLETED
│         Telescoped from: action_1
│         Desired: Create base Agent class and capability interfaces
│         Reality: TypeScript interfaces designed and tested
│
├─── 📌 action_2: Implement Ripple agent [▓▓▓▓▓▓░░░░] 60% 🔄 IN PROGRESS
│    │  Due: 2025-12-20 | Started: 2025-12-11
│    │
│    └─── 🔭 chart_2025110103 [▓▓▓▓▓▓░░░░] 60% ⚡ ACTIVE
│         Telescoped from: action_2
│         Desired: Functional RippleAgent with structural distillation
│         Reality: Embodiment extracted, implementation 60% complete
│
├─── 📌 action_3: Build GitHub integration [░░░░░░░░░░] 0% ⏳ PENDING
│    │  Due: 2026-01-10
│    │
│    └─── (No telescoping yet)
│
└─── 📌 action_4: Deploy pilot [░░░░░░░░░░] 0% ⏳ PENDING
     Due: 2026-02-15

🎯 chart_2025110104 [▓▓▓▓▓░░░░░] 50% ⚡ ACTIVE
│  Desired: Finalize Anthropic partnership proposal
│  Reality: Strategic positioning complete, technical appendix in progress
│  Due: 2026-01-15
│
├─── 📌 action_1: Draft strategic positioning [✓] COMPLETED
│    Due: 2025-11-20 | Completed: 2025-11-14
│
├─── 📌 action_2: Create technical appendix [▓▓▓▓▓░░░░░] 50% 🔄 IN PROGRESS
│    Due: 2025-12-30 | Started: 2025-11-15
│
└─── 📌 action_3: Prepare pilot success metrics [░░░░░░░░░░] 0% ⏳ PENDING
     Due: 2026-01-10

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📈 Summary:
   Total Charts: 4 (2 root + 2 telescoped)
   Active: 3 | Completed: 1 | Pending: 0
   Total Actions: 9
   Completed: 3 | In Progress: 2 | Pending: 4
   Overall Progress: 58%
```

### Compact View (`--compact`)

```
🌀 Ceremony Spiral Development
├─ 🎯 chart_2025110101 [85%] Complete pilot deployment
│  ├─ ✓ action_1: Design agent system
│  │  └─ 🔭 chart_2025110102 [100%] Create base Agent class
│  ├─ 🔄 action_2: Implement Ripple agent [60%]
│  │  └─ 🔭 chart_2025110103 [60%] Functional RippleAgent
│  ├─ ⏳ action_3: Build GitHub integration
│  └─ ⏳ action_4: Deploy pilot
└─ 🎯 chart_2025110104 [50%] Finalize Anthropic proposal
   ├─ ✓ action_1: Draft strategic positioning
   ├─ 🔄 action_2: Create technical appendix [50%]
   └─ ⏳ action_3: Prepare pilot success metrics
```

### Depth-Limited View (`-L 2`)

```
🌀 Ceremony Spiral Development
├─ 🎯 chart_2025110101 [85%] Complete pilot deployment
│  ├─ ✓ action_1: Design agent system
│  ├─ 🔄 action_2: Implement Ripple agent [60%]
│  ├─ ⏳ action_3: Build GitHub integration
│  └─ ⏳ action_4: Deploy pilot
└─ 🎯 chart_2025110104 [50%] Finalize Anthropic proposal
   ├─ ✓ action_1: Draft strategic positioning
   ├─ 🔄 action_2: Create technical appendix [50%]
   └─ ⏳ action_3: Prepare pilot success metrics

(2 telescoped charts hidden - use -L 3 to see them)
```

---

## Implementation Design

### Type Definitions

```typescript
// src/core/types/tree-view.ts

export interface TreeNode {
  id: string;
  type: 'chart' | 'action';
  name: string;
  status: 'active' | 'completed' | 'pending';
  progress: number; // 0-100
  dueDate?: Date;
  completedDate?: Date;
  children: TreeNode[];
  metadata: Record<string, any>;
}

export interface TreeViewOptions {
  depth?: number;          // Max depth to display (-L flag)
  compact?: boolean;       // Compact view
  showDates?: boolean;     // Show due dates
  showProgress?: boolean;  // Show progress bars
  showStatus?: boolean;    // Show status indicators
  activeOnly?: boolean;    // Only show active charts
  chartId?: string;        // Start from specific chart
  view?: string;           // Agent view (ripple, mia, atlas)
}

export interface TreeViewConfig {
  symbols: {
    chart: string;       // 🎯
    action: string;      // 📌
    telescoped: string;  // 🔭
    completed: string;   // ✓
    inProgress: string;  // 🔄
    pending: string;     // ⏳
    active: string;      // ⚡
  };
  colors: {
    completed: string;
    inProgress: string;
    pending: string;
    overdue: string;
  };
  progressBar: {
    filled: string;      // ▓
    empty: string;       // ░
    length: number;      // 10 characters
  };
}
```

### Core Tree Builder

```typescript
// src/core/tree-builder.ts

import { KnowledgeGraphManager } from './manager/index.js';
import { TreeNode, TreeViewOptions } from './types/tree-view.js';

export class TreeBuilder {
  constructor(private manager: KnowledgeGraphManager) {}

  /**
   * Build tree structure from knowledge graph
   */
  async buildTree(options: TreeViewOptions = {}): Promise<TreeNode[]> {
    const graph = this.manager.getGraph();

    // Find root charts (those without parentChart)
    const rootCharts = graph.entities.filter(
      e => e.entityType === 'structural_tension_chart'
        && !e.metadata?.parentChart
    );

    // If specific chart requested, start from there
    if (options.chartId) {
      const chart = graph.entities.find(e => e.name === options.chartId);
      if (!chart) throw new Error(`Chart not found: ${options.chartId}`);
      return [this.buildChartNode(chart, graph, options, 0)];
    }

    // Build tree for all root charts
    return rootCharts.map(chart =>
      this.buildChartNode(chart, graph, options, 0)
    );
  }

  private buildChartNode(
    chartEntity: Entity,
    graph: KnowledgeGraph,
    options: TreeViewOptions,
    currentDepth: number
  ): TreeNode {
    const chartId = chartEntity.name;

    // Calculate progress
    const progress = this.calculateChartProgress(chartEntity, graph);

    // Get action steps
    const actions = this.getChartActions(chartEntity, graph);

    // Build action nodes (and their telescoped charts if within depth)
    const children: TreeNode[] = actions.map(action => {
      const actionNode: TreeNode = {
        id: action.name,
        type: 'action',
        name: this.getActionDescription(action),
        status: this.getActionStatus(action),
        progress: action.metadata?.progress || 0,
        dueDate: action.metadata?.dueDate ? new Date(action.metadata.dueDate) : undefined,
        completedDate: action.metadata?.completedDate ? new Date(action.metadata.completedDate) : undefined,
        children: [],
        metadata: action.metadata || {}
      };

      // Check for telescoped chart (if within depth limit)
      if (!options.depth || currentDepth < options.depth) {
        const telescopedChart = this.getTelescopedChart(action, graph);
        if (telescopedChart) {
          const telescopedNode = this.buildChartNode(
            telescopedChart,
            graph,
            options,
            currentDepth + 1
          );
          actionNode.children.push(telescopedNode);
        }
      }

      return actionNode;
    });

    return {
      id: chartId,
      type: 'chart',
      name: this.getChartDesiredOutcome(chartEntity),
      status: this.getChartStatus(chartEntity, graph),
      progress,
      dueDate: chartEntity.metadata?.dueDate ? new Date(chartEntity.metadata.dueDate) : undefined,
      children,
      metadata: chartEntity.metadata || {}
    };
  }

  private calculateChartProgress(chartEntity: Entity, graph: KnowledgeGraph): number {
    const actions = this.getChartActions(chartEntity, graph);
    if (actions.length === 0) return 0;

    const totalProgress = actions.reduce((sum, action) => {
      if (action.metadata?.completionStatus) return sum + 100;
      return sum + (action.metadata?.progress || 0);
    }, 0);

    return Math.round(totalProgress / actions.length);
  }

  private getChartActions(chartEntity: Entity, graph: KnowledgeGraph): Entity[] {
    const chartId = chartEntity.name;

    // Find action steps that advance toward this chart
    const actionRelations = graph.relations.filter(
      r => r.relationType === 'advances_toward' && r.to === chartId
    );

    return actionRelations
      .map(r => graph.entities.find(e => e.name === r.from))
      .filter((e): e is Entity => e !== undefined)
      .sort((a, b) => {
        // Sort by action step order if available
        const orderA = a.metadata?.order || 0;
        const orderB = b.metadata?.order || 0;
        return orderA - orderB;
      });
  }

  private getTelescopedChart(actionEntity: Entity, graph: KnowledgeGraph): Entity | null {
    const actionId = actionEntity.name;

    // Find chart that telescopes from this action
    const telescopedChart = graph.entities.find(
      e => e.entityType === 'structural_tension_chart'
        && e.metadata?.parentActionStep === actionId
    );

    return telescopedChart || null;
  }

  private getChartStatus(chartEntity: Entity, graph: KnowledgeGraph): 'active' | 'completed' | 'pending' {
    if (chartEntity.metadata?.completionStatus) return 'completed';

    const actions = this.getChartActions(chartEntity, graph);
    const hasInProgressActions = actions.some(a =>
      a.metadata?.progress && a.metadata.progress > 0 && !a.metadata.completionStatus
    );

    return hasInProgressActions ? 'active' : 'pending';
  }

  private getActionStatus(actionEntity: Entity): 'active' | 'completed' | 'pending' {
    if (actionEntity.metadata?.completionStatus) return 'completed';
    if (actionEntity.metadata?.progress && actionEntity.metadata.progress > 0) return 'active';
    return 'pending';
  }

  private getChartDesiredOutcome(chartEntity: Entity): string {
    const desiredOutcome = chartEntity.observations.find(obs =>
      obs.toLowerCase().includes('desired outcome:')
    );
    return desiredOutcome
      ? desiredOutcome.replace(/desired outcome:\s*/i, '').trim()
      : chartEntity.name;
  }

  private getActionDescription(actionEntity: Entity): string {
    // Extract meaningful action description
    return actionEntity.observations[0] || actionEntity.name;
  }
}
```

### Tree Renderer

```typescript
// src/core/tree-renderer.ts

import { TreeNode, TreeViewOptions, TreeViewConfig } from './types/tree-view.js';

export class TreeRenderer {
  private config: TreeViewConfig = {
    symbols: {
      chart: '🎯',
      action: '📌',
      telescoped: '🔭',
      completed: '✓',
      inProgress: '🔄',
      pending: '⏳',
      active: '⚡'
    },
    colors: {
      completed: '\x1b[32m',    // Green
      inProgress: '\x1b[33m',   // Yellow
      pending: '\x1b[90m',      // Gray
      overdue: '\x1b[31m'       // Red
    },
    progressBar: {
      filled: '▓',
      empty: '░',
      length: 10
    }
  };

  private reset = '\x1b[0m';
  private bold = '\x1b[1m';
  private dim = '\x1b[2m';

  render(trees: TreeNode[], options: TreeViewOptions = {}): string {
    const lines: string[] = [];

    // Header
    lines.push('');
    lines.push(`🌀 ${this.bold}COAIA Spiral - Structural Tension Charts${this.reset}`);
    lines.push('━'.repeat(60));
    lines.push('');

    // Render each root chart
    trees.forEach((tree, index) => {
      this.renderNode(tree, '', index === trees.length - 1, lines, options, 0);
      if (index < trees.length - 1) {
        lines.push('');
      }
    });

    // Summary
    lines.push('');
    lines.push('━'.repeat(60));
    lines.push(this.renderSummary(trees));
    lines.push('');

    return lines.join('\n');
  }

  private renderNode(
    node: TreeNode,
    prefix: string,
    isLast: boolean,
    lines: string[],
    options: TreeViewOptions,
    depth: number
  ): void {
    // Check depth limit
    if (options.depth && depth >= options.depth) return;

    const connector = isLast ? '└─── ' : '├─── ';
    const symbol = node.type === 'chart'
      ? (node.metadata.parentActionStep ? this.config.symbols.telescoped : this.config.symbols.chart)
      : this.config.symbols.action;

    const statusSymbol = this.getStatusSymbol(node.status);
    const color = this.getStatusColor(node.status);

    // Main line
    let line = `${prefix}${connector}${symbol} ${this.bold}${node.name}${this.reset}`;

    if (!options.compact) {
      // Add progress bar
      if (options.showProgress !== false) {
        line += ` ${this.renderProgressBar(node.progress)}`;
      }

      // Add status
      if (options.showStatus !== false) {
        line += ` ${statusSymbol} ${color}${node.status.toUpperCase()}${this.reset}`;
      }
    } else {
      // Compact: just progress percentage and status symbol
      line += ` [${node.progress}%] ${statusSymbol}`;
    }

    lines.push(line);

    // Additional details (only if not compact)
    if (!options.compact && node.type === 'chart') {
      const childPrefix = prefix + (isLast ? '     ' : '│    ');

      if (node.metadata.desiredOutcome) {
        lines.push(`${childPrefix}Desired: ${this.dim}${node.metadata.desiredOutcome}${this.reset}`);
      }
      if (node.metadata.currentReality) {
        lines.push(`${childPrefix}Reality: ${this.dim}${node.metadata.currentReality}${this.reset}`);
      }
      if (options.showDates && node.dueDate) {
        lines.push(`${childPrefix}Due: ${this.dim}${this.formatDate(node.dueDate)}${this.reset}`);
      }
      if (node.metadata.parentActionStep) {
        lines.push(`${childPrefix}${this.dim}Telescoped from: ${node.metadata.parentActionStep}${this.reset}`);
      }
      lines.push('');
    }

    // Render children
    const newPrefix = prefix + (isLast ? '     ' : '│    ');
    node.children.forEach((child, index) => {
      this.renderNode(
        child,
        newPrefix,
        index === node.children.length - 1,
        lines,
        options,
        depth + 1
      );
    });
  }

  private renderProgressBar(progress: number): string {
    const { filled, empty, length } = this.config.progressBar;
    const filledCount = Math.round((progress / 100) * length);
    const emptyCount = length - filledCount;

    return `[${filled.repeat(filledCount)}${empty.repeat(emptyCount)}] ${progress}%`;
  }

  private getStatusSymbol(status: string): string {
    switch (status) {
      case 'completed': return this.config.symbols.completed;
      case 'active': return this.config.symbols.inProgress;
      case 'pending': return this.config.symbols.pending;
      default: return '';
    }
  }

  private getStatusColor(status: string): string {
    switch (status) {
      case 'completed': return this.config.colors.completed;
      case 'active': return this.config.colors.inProgress;
      case 'pending': return this.config.colors.pending;
      default: return '';
    }
  }

  private formatDate(date: Date): string {
    return date.toISOString().split('T')[0];
  }

  private renderSummary(trees: TreeNode[]): string {
    const stats = this.calculateStats(trees);

    return `📈 ${this.bold}Summary:${this.reset}
   Total Charts: ${stats.totalCharts} (${stats.rootCharts} root + ${stats.telescopedCharts} telescoped)
   Active: ${stats.activeCharts} | Completed: ${stats.completedCharts} | Pending: ${stats.pendingCharts}
   Total Actions: ${stats.totalActions}
   Completed: ${stats.completedActions} | In Progress: ${stats.inProgressActions} | Pending: ${stats.pendingActions}
   Overall Progress: ${stats.overallProgress}%`;
  }

  private calculateStats(trees: TreeNode[]) {
    let totalCharts = 0;
    let rootCharts = 0;
    let telescopedCharts = 0;
    let activeCharts = 0;
    let completedCharts = 0;
    let pendingCharts = 0;
    let totalActions = 0;
    let completedActions = 0;
    let inProgressActions = 0;
    let pendingActions = 0;
    let totalProgress = 0;

    const traverse = (node: TreeNode, isRoot: boolean = false) => {
      if (node.type === 'chart') {
        totalCharts++;
        if (isRoot) rootCharts++;
        else if (node.metadata.parentActionStep) telescopedCharts++;

        totalProgress += node.progress;

        if (node.status === 'active') activeCharts++;
        else if (node.status === 'completed') completedCharts++;
        else if (node.status === 'pending') pendingCharts++;
      } else if (node.type === 'action') {
        totalActions++;
        if (node.status === 'completed') completedActions++;
        else if (node.status === 'active') inProgressActions++;
        else if (node.status === 'pending') pendingActions++;
      }

      node.children.forEach(child => traverse(child, false));
    };

    trees.forEach(tree => traverse(tree, true));

    return {
      totalCharts,
      rootCharts,
      telescopedCharts,
      activeCharts,
      completedCharts,
      pendingCharts,
      totalActions,
      completedActions,
      inProgressActions,
      pendingActions,
      overallProgress: totalCharts > 0 ? Math.round(totalProgress / totalCharts) : 0
    };
  }
}
```

### CLI Integration

```typescript
// src/core/utils/cli.ts (extend existing)

import { TreeBuilder } from '../tree-builder.js';
import { TreeRenderer } from '../tree-renderer.js';
import { TreeViewOptions } from '../types/tree-view.js';

export function handleTreeCommand(args: any, manager: KnowledgeGraphManager): void {
  const options: TreeViewOptions = {
    depth: args.L || args.depth,
    compact: args.compact || false,
    showDates: args.dates || false,
    showProgress: args.progress !== false, // Default true
    showStatus: args.status !== false,     // Default true
    activeOnly: args.active || false,
    chartId: args._[1], // First positional arg after 'tree'
    view: args.view
  };

  // Build tree structure
  const builder = new TreeBuilder(manager);
  const trees = builder.buildTree(options);

  // Apply agent view if specified
  if (options.view) {
    applyAgentView(trees, options.view);
  }

  // Render and display
  const renderer = new TreeRenderer();
  const output = renderer.render(trees, options);

  console.log(output);
}

function applyAgentView(trees: TreeNode[], view: string): void {
  // Future enhancement: Apply agent-specific transformations
  switch (view) {
    case 'ripple':
      // Ripple's structural distillation view
      // Emphasize structural elements, hide narrative details
      break;
    case 'mia':
      // Mia's strategic analysis view
      // Show strategic relationships, highlight dependencies
      break;
    case 'atlas':
      // Atlas's cartography view
      // Show chart relationships, pattern recognition
      break;
    default:
      console.warn(`Unknown view: ${view}. Using default view.`);
  }
}
```

### Update Main Index

```typescript
// index.ts (add to CLI handler)

if (args.help || args.h) {
  // ... existing help text ...
  console.log('  coaia-spiral tree [options]');
  console.log('    View structural tension charts in tree format');
  console.log('    Options:');
  console.log('      -L, --depth <n>     Limit depth (like tree -L)');
  console.log('      --compact           Compact view');
  console.log('      --dates             Show due dates');
  console.log('      --progress          Show progress bars (default: true)');
  console.log('      --status            Show status indicators (default: true)');
  console.log('      --active            Show only active charts');
  console.log('      --view <agent>      Agent view (ripple|mia|atlas)');
  console.log('');
  console.log('    Examples:');
  console.log('      coaia-spiral tree');
  console.log('      coaia-spiral tree -L 2');
  console.log('      coaia-spiral tree --compact');
  console.log('      coaia-spiral tree chart_123');
  console.log('      coaia-spiral tree --view ripple');
  process.exit(0);
}

// Add tree command handler
if (args._[0] === 'tree') {
  handleTreeCommand(args, manager);
  process.exit(0);
}
```

---

## Testing

### Test Data Setup

```typescript
// test-tree-view.js

import { KnowledgeGraphManager } from './dist/core/manager/index.js';
import { TreeBuilder } from './dist/core/tree-builder.js';
import { TreeRenderer } from './dist/core/tree-renderer.js';

// Create test data
const manager = new KnowledgeGraphManager('./test-tree.jsonl');

// Create root chart
const chart1 = await manager.createStructuralTensionChart({
  desiredOutcome: 'Complete Ceremony Spiral pilot deployment',
  currentReality: 'Technical architecture designed, pilot customer identified',
  actionSteps: [
    'Design agent system architecture',
    'Implement Ripple agent',
    'Build GitHub integration',
    'Deploy pilot'
  ],
  dueDate: '2026-03-15T00:00:00Z'
});

// Mark first action complete
await manager.markActionComplete(
  'chart_1_action_1',
  'Agent base class and capability interfaces designed and tested'
);

// Telescope first action
const telescopedChart1 = await manager.telescopeActionStep(
  'chart_1_action_1',
  'TypeScript interfaces designed and tested'
);

// Add progress to second action
const graph = manager.getGraph();
const action2 = graph.entities.find(e => e.name === 'chart_1_action_2');
if (action2) {
  action2.metadata = { ...action2.metadata, progress: 60 };
  manager.saveGraph();
}

// Test tree view
const builder = new TreeBuilder(manager);
const trees = await builder.buildTree();
const renderer = new TreeRenderer();
console.log(renderer.render(trees));
```

---

## Future Enhancements

### 1. Agent-Specific Views

Different agents provide different perspectives on the tree:

**Ripple View (Structural Distillation):**
- Emphasizes structural elements (desired outcome, current reality, tension)
- Hides narrative details
- Shows only essential structure

**Mia View (Strategic Analysis):**
- Highlights strategic relationships and dependencies
- Shows critical path
- Emphasizes action step sequencing

**Atlas View (Cartography):**
- Shows chart relationships and connections
- Pattern recognition across charts
- Temporal visualization (timeline view)

**Miette View (Narrative Coherence):**
- Emphasizes narrative flow
- Shows emotional context
- Highlights human elements

### 2. Interactive Mode

```bash
# Interactive tree navigation
coaia-spiral tree --interactive

# Allows:
# - Arrow keys to navigate
# - Enter to expand/collapse nodes
# - 'e' to edit chart/action
# - 'c' to mark action complete
# - 't' to telescope action
# - 'q' to quit
```

### 3. Export Formats

```bash
# Export to different formats
coaia-spiral tree --format json > tree.json
coaia-spiral tree --format html > tree.html
coaia-spiral tree --format markdown > tree.md
coaia-spiral tree --format svg > tree.svg
```

### 4. Filtering

```bash
# Filter by various criteria
coaia-spiral tree --overdue          # Show only overdue actions
coaia-spiral tree --due-soon         # Due within 7 days
coaia-spiral tree --tag "important"  # By tag
coaia-spiral tree --search "pilot"   # Search in names
```

---

## Integration with Agent System

### Agent-Generated Tree Insights

```typescript
// Future: Agents can annotate tree nodes with insights

interface AgentTreeInsight {
  agentName: string;
  nodeId: string;
  insightType: 'observation' | 'suggestion' | 'warning';
  message: string;
}

// Example: Ripple observes structural tension weakening
{
  agentName: 'Ripple',
  nodeId: 'chart_123',
  insightType: 'observation',
  message: 'Structural tension low: Current reality may need reassessment'
}

// Example: Mia suggests strategic adjustment
{
  agentName: 'Mia',
  nodeId: 'action_2',
  insightType: 'suggestion',
  message: 'Consider telescoping this action - complexity warrants deeper breakdown'
}

// Example: Atlas identifies pattern
{
  agentName: 'Atlas',
  nodeId: 'chart_123',
  insightType: 'observation',
  message: 'Similar pattern detected in 3 other charts - possible recurring theme'
}
```

Display insights in tree view:

```
🎯 chart_123 [50%] Complete pilot deployment
   💡 Ripple: Structural tension low - reassess current reality
   ├─ 📌 action_1: Design system [✓]
   ├─ 📌 action_2: Implement agent [60%]
   │  💡 Mia: Consider telescoping - complexity warrants breakdown
   └─ 📌 action_3: Deploy [0%]
```

---

## Implementation Priority

### Phase 1 (Immediate - This Week)
- ✅ Design CLI tree visualization (THIS DOCUMENT)
- [ ] Implement TreeBuilder core logic
- [ ] Implement TreeRenderer with basic formatting
- [ ] Add tree command to CLI
- [ ] Test with example data

### Phase 2 (Next 2 Weeks)
- [ ] Add depth limiting (-L flag)
- [ ] Add compact view
- [ ] Add progress bars and status indicators
- [ ] Comprehensive testing

### Phase 3 (Month 2)
- [ ] Agent-specific views (Ripple, Mia, Atlas)
- [ ] Filtering options
- [ ] Export formats

### Phase 4 (Future)
- [ ] Interactive mode
- [ ] Agent-generated insights
- [ ] Advanced visualizations

---

## Success Criteria

✅ **Usability:** Users can quickly visualize chart hierarchy
✅ **Clarity:** Tree structure shows telescoping relationships clearly
✅ **Information density:** Balance between detail and readability
✅ **Performance:** Fast rendering even with 50+ charts
✅ **Consistency:** Analogous to `tree` command UX patterns
✅ **Extensibility:** Easy to add agent views and filtering

---

## Conclusion

The `coaia-spiral tree` command provides:

1. **Quick visualization** of structural tension chart hierarchy
2. **Telescoping clarity** - see how action steps break down into sub-charts
3. **Progress tracking** - visual progress bars and status indicators
4. **Flexible views** - depth limiting, compact mode, agent perspectives
5. **Familiar UX** - analogous to Linux `tree` command

This feature makes structural tension charts **tangible and navigable**, supporting both individual chart work and portfolio-level overview.

Integration with the agent system creates opportunity for **agent-augmented visualization**, where Ripple, Mia, Atlas, and Miette provide their unique perspectives on the chart hierarchy.

**Ready for implementation in Phase 1 (this week).**
