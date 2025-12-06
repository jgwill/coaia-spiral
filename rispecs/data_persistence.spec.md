# Data Persistence Layer Specification

## Desired Outcome Definition

**Primary Creation Goal**: Enable reliable, efficient, and scalable storage of structural tension charts with complete history preservation while supporting real-time collaborative access and automatic recovery from data corruption.

**Specific Manifestation**: Users experience seamless data reliability through:
- Instant chart access across all contexts and sessions
- Complete history preservation for pattern learning
- Automatic backup and recovery without data loss
- Concurrent access support for multi-user environments

## Natural Language Description

### What the Data Persistence Layer Enables

The Data Persistence Layer transforms structural tension charts from ephemeral conversation elements into permanent advancement assets. It enables users to build long-term advancement patterns by reliably storing, organizing, and retrieving their structural tension history while supporting the complex relationships between telescoped charts and context-based organization.

### Core Persistence Capabilities

**JSONL-Based Storage Architecture**:
The system uses JSON Lines format for optimal data integrity:
- **Append-Only Logging**: Complete history preservation with no data loss
- **Atomic Operations**: Consistent state during concurrent modifications
- **Human-Readable Format**: Direct file inspection and debugging capability
- **Corruption Recovery**: Automatic detection and recovery from data issues

**Entity-Relationship Storage Model**:
Charts are stored as connected entities enabling flexible querying:
- **Entity Storage**: Charts, outcomes, realities, and action steps as discrete entities
- **Relationship Mapping**: Connections between chart components and hierarchies
- **Metadata Preservation**: Complete context, timing, and relationship information
- **Query Optimization**: Efficient access patterns for common operations

**Context-Aware File Organization**:
Data organization matches user mental models:
- **Context Separation**: Independent files for different life domains
- **Project Integration**: Automatic integration with existing project structures
- **Flexible Routing**: Dynamic file selection based on context and configuration
- **Migration Support**: Easy reorganization and data movement between contexts

### Creative Advancement Scenarios

**Scenario 1: Multi-Session Chart Development**
- **User Intent**: Build complex structural tension chart over multiple conversation sessions
- **Current Structural Reality**: Chart development spans days or weeks with incremental progress
- **Natural Progression Steps**:
  1. Initial chart creation persisted with complete structure and metadata
  2. Progressive action step additions stored with proper relationship preservation
  3. Completion events automatically update parent chart current reality
  4. Session-spanning progress accumulates naturally without data loss
- **Achieved Outcome**: Seamless long-term chart development with complete history
- **Supporting Features**: Relationship integrity, progress accumulation, session continuity

**Scenario 2: Context-Based Data Organization**
- **User Intent**: Maintain separate advancement tracking for work, personal, and learning contexts
- **Current Structural Reality**: Multiple life domains with different chart collections and advancement patterns
- **Natural Progression Steps**:
  1. Context-specific files automatically created for different life domains
  2. Chart operations automatically route to appropriate context storage
  3. Cross-context queries provide unified view when needed
  4. Context isolation prevents interference between life domains
- **Achieved Outcome**: Natural domain separation with unified access capability
- **Supporting Features**: Automatic routing, context isolation, cross-context querying

**Scenario 3: Data Corruption Recovery**
- **User Intent**: Continue advancement tracking despite file system issues or data corruption
- **Current Structural Reality**: Storage corruption threatens chart data integrity
- **Natural Progression Steps**:
  1. System detects data corruption through integrity checks
  2. Automatic recovery attempts using append-only log reconstruction
  3. Backup systems provide alternative data sources for recovery
  4. User experiences transparent recovery with minimal data loss
- **Achieved Outcome**: Maintained advancement continuity despite technical failures
- **Supporting Features**: Corruption detection, automatic recovery, backup integration

### Storage Architecture Patterns

**JSONL Entity Format**:
```jsonl
{"type":"entity","name":"chart_123_desired_outcome","entityType":"desired_outcome","observations":["Build comprehensive Django web application"],"metadata":{"dueDate":"2025-12-01","chartId":"chart_123","context":"learning"}}
{"type":"entity","name":"chart_123_current_reality","entityType":"current_reality","observations":["Completed Python fundamentals","Never used Django framework"],"metadata":{"chartId":"chart_123","context":"learning"}}
{"type":"relation","from":"chart_123_desired_outcome","to":"chart_123_current_reality","relationType":"has_tension","metadata":{"createdAt":"2025-11-17T10:30:00Z"}}
```

**File Organization Structure**:
```
.coaia/
├── charts.jsonl                 # Default context
├── charts-work.jsonl            # Professional context
├── charts-personal.jsonl        # Personal development
├── charts-health.jsonl          # Wellness tracking
├── completed-charts.jsonl       # Cross-context archive
├── .backup/                     # Automatic backups
│   ├── charts-backup-daily.jsonl
│   └── charts-backup-weekly.jsonl
└── .recovery/                   # Recovery logs
    └── recovery-2025-11-17.log
```

**Relationship Mapping Patterns**:
- **Chart Hierarchies**: Parent-child relationships for telescoped action steps
- **Progress Flows**: Completion events connected to current reality updates
- **Context Associations**: Charts linked to organizational contexts
- **Temporal Sequences**: Time-based relationships for pattern analysis

### Concurrent Access and Integrity

**Atomic Operation Design**:
```typescript
class AtomicFileOperations {
  async appendToFile(filepath: string, data: string): Promise<void> {
    // Write to temporary file, then atomic rename
    // Ensures no partial writes during concurrent access
  }
  
  async safeReadFile(filepath: string): Promise<string> {
    // Read with retry logic and corruption detection
    // Automatic fallback to backup if primary corrupted
  }
}
```

**Concurrency Control**:
- **File Locking**: Prevent simultaneous writes from multiple processes
- **Optimistic Updates**: Fast reads with conflict detection on writes
- **Queue Management**: Serialize write operations for consistency
- **Deadlock Prevention**: Timeout mechanisms for hung operations

**Data Integrity Validation**:
- **Format Validation**: JSON structure verification on read operations
- **Relationship Consistency**: Verify all entity references remain valid
- **Timeline Logic**: Ensure temporal consistency in chart progression
- **Corruption Detection**: Checksum validation for critical data integrity

## Implementation Requirements for Another LLM

### Core Storage Engine

**JSONL File Management**:
```typescript
interface StorageEngine {
  appendEntity(entity: Entity): Promise<void>;
  appendRelation(relation: Relation): Promise<void>;
  readGraph(context?: string): Promise<KnowledgeGraph>;
  searchEntities(query: string, context?: string): Promise<Entity[]>;
  validateIntegrity(context?: string): Promise<ValidationReport>;
}

class JsonlStorageEngine implements StorageEngine {
  private async getStoragePath(context?: string): Promise<string>;
  private async ensureFileExists(filepath: string): Promise<void>;
  private async atomicAppend(filepath: string, data: string): Promise<void>;
}
```

**Context Routing Logic**:
```typescript
class ContextRouter {
  determineStoragePath(context?: string, operation?: string): string {
    // Priority: configured path > project .coaia > default
    // Support for context-specific file routing
    // Automatic context creation when needed
  }
  
  listAvailableContexts(): ContextInfo[] {
    // Scan for existing context files
    // Return metadata about each context
    // Support for dynamic context discovery
  }
}
```

**Entity-Relationship Mapping**:
```typescript
interface Entity {
  name: string;           // Unique identifier
  entityType: string;     // Type classification
  observations: string[]; // Content storage
  metadata?: {
    dueDate?: string;
    chartId?: string;
    phase?: 'germination' | 'assimilation' | 'completion';
    completionStatus?: boolean;
    parentChart?: string;
    parentActionStep?: string;
    level?: number;
    context?: string;
    createdAt?: string;
    updatedAt?: string;
  };
}

interface Relation {
  from: string;          // Source entity name
  to: string;            // Target entity name  
  relationType: string;  // Relationship classification
  metadata?: {
    createdAt?: string;
    strength?: number;
  };
}
```

### Performance Optimization

**Caching Strategy**:
```typescript
class CacheManager {
  private entityCache: Map<string, Entity>;
  private relationCache: Map<string, Relation[]>;
  private contextCache: Map<string, KnowledgeGraph>;
  
  async getCachedEntity(name: string): Promise<Entity | null>;
  async invalidateContext(context: string): Promise<void>;
  async preloadContext(context: string): Promise<void>;
}
```

**Lazy Loading Implementation**:
- **On-Demand Context Loading**: Load context files only when accessed
- **Progressive Chart Loading**: Load chart hierarchies as needed
- **Search Result Streaming**: Stream large result sets for memory efficiency
- **Background Prefetching**: Anticipate likely data needs for faster access

**Index Management**:
- **Entity Name Indexing**: Fast entity lookup by name or pattern
- **Context Indexing**: Rapid context switching and discovery
- **Relationship Indexing**: Efficient hierarchy traversal
- **Temporal Indexing**: Time-based queries and pattern analysis

### Backup and Recovery

**Automatic Backup Strategy**:
```typescript
class BackupManager {
  async createDailyBackup(context: string): Promise<string>;
  async createWeeklyBackup(): Promise<string>;
  async rotateOldBackups(maxAge: number): Promise<void>;
  async verifyBackupIntegrity(backupPath: string): Promise<boolean>;
}
```

**Recovery Mechanisms**:
- **Corruption Detection**: Automatic identification of corrupted data
- **Partial Recovery**: Recover valid data from corrupted files
- **Backup Restoration**: Seamless fallback to backup data sources
- **Transaction Reconstruction**: Rebuild state from append-only logs

**Migration Support**:
- **Data Format Evolution**: Handle schema changes gracefully
- **Context Reorganization**: Move charts between contexts safely
- **Export/Import**: Portable data formats for sharing and backup
- **Merge Operations**: Combine data from multiple sources

### Error Handling and Resilience

**Graceful Degradation**:
```typescript
class ErrorRecovery {
  async handleFileCorruption(filepath: string): Promise<RecoveryResult>;
  async handleConcurrencyConflict(operation: Operation): Promise<void>;
  async handleDiskSpaceIssues(): Promise<StorageOptimization>;
  async handlePermissionErrors(filepath: string): Promise<AlternativePath>;
}
```

**Monitoring and Alerting**:
- **Health Checks**: Regular validation of data integrity
- **Performance Monitoring**: Track operation latency and success rates
- **Capacity Planning**: Monitor storage growth and predict needs
- **User Notifications**: Alert users to data issues requiring attention

**Transaction Safety**:
- **Atomic Commits**: All-or-nothing data operations
- **Rollback Capability**: Undo operations that fail midway
- **Consistency Checks**: Verify data state after operations
- **Idempotent Operations**: Safe operation retry for transient failures

## Success Criteria

A successful implementation would demonstrate:

1. **Zero Data Loss**: Complete chart history preservation across all usage scenarios
2. **Transparent Performance**: Storage operations invisible to users during normal usage
3. **Automatic Recovery**: Self-healing capabilities for common data integrity issues
4. **Scalable Growth**: Performance maintained as chart collections grow to hundreds or thousands
5. **Context Reliability**: Consistent behavior across all context-based organization patterns

The persistence layer should feel invisible to users while providing rock-solid reliability for their long-term advancement tracking and pattern development.