# Context Management System Specification

## Desired Outcome Definition

**Primary Creation Goal**: Enable seamless organization of structural tension charts across multiple life domains and project contexts without overwhelming users while maintaining advancing patterns within each context.

**Specific Manifestation**: Users effortlessly manage multiple life areas through:
- Automatic context detection and organization
- Flexible context creation without rigid hierarchies
- Cross-context visibility when needed
- Preserved momentum within each life domain

## Natural Language Description

### What the Context Management System Enables

The Context Management System transforms COAIA Spiral from a single-domain tool into a comprehensive life advancement platform. It enables users to create and maintain structural tension across all areas of life - work, personal growth, health, learning, relationships - while keeping each domain organized and preventing overwhelm through intelligent separation.

### Core Context Capabilities

**Flexible Context Architecture**:
The system supports dynamic context creation and management through:
- **Automatic Context Detection**: Recognition of project boundaries and life domains
- **Dynamic Context Creation**: New contexts emerge naturally as users define them
- **Context Separation**: Isolated chart collections preventing cross-contamination
- **Context Integration**: Visibility and coordination across contexts when beneficial

**Project-Aware Organization**:
The system adapts to existing project structures through:
- **Project Root Detection**: Automatic identification of common project markers
- **`.coaia` Directory Management**: Project-local vs global chart organization
- **Template Systems**: Context-specific templates for common desired outcomes
- **Completed Chart Archives**: Learning repository organized by context

**Multi-Domain Life Support**:
Users can naturally advance across multiple life areas simultaneously:
- **Domain Isolation**: Work charts don't interfere with personal growth charts
- **Progress Visibility**: Overview of advancement across all life domains
- **Context Switching**: Seamless movement between life areas without losing thread
- **Cross-Domain Learning**: Successful patterns can inform other contexts

### Creative Advancement Scenarios

**Scenario 1: Multi-Context Project Initialization**
- **User Intent**: Set up organized structural tension management for comprehensive life advancement
- **Current Structural Reality**: User has multiple life areas but no organized advancement structure
- **Natural Progression Steps**:
  1. System detects project environment and creates `.coaia` directory structure
  2. System establishes default contexts (work, personal, health, learning)
  3. System creates template collections for common desired outcomes in each context
  4. User can immediately begin creating context-specific charts
- **Achieved Outcome**: Comprehensive advancement infrastructure without complexity
- **Supporting Features**: Project detection, directory creation, template management

**Scenario 2: Dynamic Context Creation During Conversation**
- **User Intent**: Create structural tension chart for new life domain (e.g., "side-projects")
- **Current Structural Reality**: Context doesn't exist yet but user has specific advancement goal
- **Natural Progression Steps**:
  1. User mentions new context during chart creation conversation
  2. System automatically creates new context without interrupting flow
  3. System creates appropriate chart storage for new context
  4. Chart creation continues seamlessly in new context
- **Achieved Outcome**: Natural context expansion without administrative overhead
- **Supporting Features**: Dynamic context creation, automatic file management, seamless integration

**Scenario 3: Cross-Context Visibility and Coordination**
- **User Intent**: Review advancement across all life domains for integrated planning
- **Current Structural Reality**: Multiple active contexts with varying progress levels
- **Natural Progression Steps**:
  1. System provides unified view of all contexts with chart counts and progress
  2. System highlights advancing patterns across different life domains
  3. System identifies potential synergies between contexts
  4. User can make informed decisions about resource allocation across domains
- **Achieved Outcome**: Holistic life advancement perspective without losing domain focus
- **Supporting Features**: Cross-context reporting, progress aggregation, pattern recognition

### Context Organization Patterns

**Directory Structure Architecture**:
```
project-root/
├── .coaia/
│   ├── charts.jsonl              # Default context
│   ├── charts-work.jsonl         # Professional advancement
│   ├── charts-personal.jsonl     # Personal growth
│   ├── charts-health.jsonl       # Wellness and fitness
│   ├── charts-learning.jsonl     # Skill development
│   ├── charts-side-projects.jsonl # Creative pursuits
│   ├── completed-charts.jsonl    # Cross-context archives
│   └── templates/
│       ├── common-goals.txt      # Universal templates
│       ├── work-templates.txt    # Professional goal patterns
│       └── personal-templates.txt # Personal growth patterns
```

**Context Naming Conventions**:
- **Descriptive Names**: `work`, `personal`, `health`, `learning`, `side-projects`
- **Flexible Expansion**: User-defined contexts emerge naturally
- **No Rigid Hierarchy**: Flat structure preventing organizational complexity
- **Intuitive Organization**: Names reflect how users think about life domains

**Template Management**:
- **Context-Specific Templates**: Common desired outcomes for each life domain
- **Cross-Context Patterns**: Successful structural tension patterns that apply broadly
- **User Learning Integration**: Successful completions become future templates
- **Evolution Support**: Templates improve based on user advancement patterns

### File System Integration

**Project Detection Algorithm**:
```typescript
function findProjectRoot(startDir: string = process.cwd()): string | null {
  const projectMarkers = ['.git', 'package.json', 'pyproject.toml', 'Cargo.toml', 'go.mod'];
  // Traversal logic with maximum depth protection
  // Returns project root or null for global context usage
}
```

**Storage Path Resolution**:
1. **Configured Path Priority**: User-specified `--memory-path` takes precedence
2. **Project Context Priority**: `.coaia` directory within detected project root
3. **Global Fallback**: Installation directory for universal access

**Context File Management**:
- **Automatic Creation**: Context files created on first chart addition
- **Lazy Loading**: Context files loaded only when accessed
- **Atomic Operations**: Consistent state during concurrent context modifications
- **Backup Integration**: Context-aware backup and recovery strategies

## Implementation Requirements for Another LLM

### Context Detection and Management

**Project Environment Detection**:
```typescript
interface ProjectEnvironment {
  projectRoot: string | null;
  coaiaDirectory: string;
  availableContexts: string[];
  defaultContext: string;
}

class ContextManager {
  detectEnvironment(): ProjectEnvironment;
  createContext(contextName: string): void;
  listContexts(): ContextInfo[];
  getContextPath(contextName?: string): string;
}
```

**Dynamic Context Creation**:
- **Name Validation**: Ensure context names are filesystem-safe and meaningful
- **Automatic Directory Management**: Create necessary directory structures
- **Template Initialization**: Set up context-specific templates when appropriate
- **Integration Verification**: Ensure new context integrates with existing workflow

**Context Isolation Logic**:
- **Storage Separation**: Each context maintains independent chart collections
- **Cross-Contamination Prevention**: Context boundaries prevent accidental chart mixing
- **Independent Progress Tracking**: Context-specific advancement metrics
- **Selective Visibility**: Context awareness without constant exposure

### Multi-Context Operations

**Cross-Context Reporting**:
```typescript
interface ContextSummary {
  contextName: string;
  activeCharts: number;
  completedCharts: number;
  overallProgress: number;
  nextActions: string[];
  dueDatesApproaching: ChartSummary[];
}

function generateContextOverview(): ContextSummary[];
```

**Context Switching Logic**:
- **Current Context Tracking**: Maintain awareness of active context during conversations
- **Seamless Transitions**: Context switches without losing conversational thread
- **Context Inheritance**: Default context for new charts based on conversation context
- **Override Mechanisms**: Explicit context specification when needed

**Template Management System**:
- **Context-Specific Templates**: Templates organized by life domain
- **Template Discovery**: Easy access to relevant templates during chart creation
- **Template Evolution**: Learning from successful completions to improve templates
- **Cross-Context Application**: Templates that apply across multiple life domains

### File System Architecture

**Directory Management**:
- **Automatic Creation**: Create `.coaia` directories as needed
- **Permission Handling**: Appropriate file system permissions for multi-user environments
- **Path Resolution**: Robust path handling across different operating systems
- **Cleanup Operations**: Remove empty contexts and obsolete files

**Storage Optimization**:
- **Efficient Context Loading**: Load only necessary contexts for current operations
- **Caching Strategies**: Context metadata caching for improved performance
- **Index Management**: Fast context discovery and chart counting
- **Migration Support**: Context reorganization and data migration utilities

**Integration Points**:
- **Version Control Awareness**: `.gitignore` integration for project contexts
- **Backup Compatibility**: Context-aware backup and synchronization
- **Export Utilities**: Context-specific export for sharing and migration
- **Import Mechanisms**: Context import from other COAIA Spiral installations

### Quality Assurance and Validation

**Context Integrity Validation**:
- **Consistency Checks**: Ensure chart references remain valid across context operations
- **Orphan Detection**: Identify and handle orphaned charts and broken relationships
- **Corruption Recovery**: Automatic recovery from context file corruption
- **Migration Validation**: Verify data integrity during context reorganization

**Performance Monitoring**:
- **Context Size Tracking**: Monitor context growth and performance implications
- **Access Pattern Analysis**: Optimize based on user context usage patterns
- **Resource Usage**: Memory and disk usage optimization for large context collections
- **Scaling Strategies**: Handle contexts with hundreds or thousands of charts

## Success Criteria

A successful implementation would enable:

1. **Effortless Organization**: Users naturally organize charts across life domains without administrative burden
2. **Context Fluency**: Seamless switching between life areas during conversations and planning sessions
3. **Isolation Benefits**: Domain separation prevents overwhelm while maintaining advancement focus
4. **Integration Power**: Cross-context visibility when needed for holistic life planning
5. **Growth Support**: Context system scales naturally as user's advancement practice expands

The system should feel like a natural extension of how users already think about their lives - supporting the inherent organization of different life domains while enabling comprehensive advancement across all areas.