/**
 * Tree visualization types for structural tension charts
 */

export interface TreeNode {
  id: string;
  type: 'chart' | 'action';
  name: string;
  status: 'active' | 'completed' | 'pending';
  progress: number; // 0-100
  dueDate?: Date;
  completedDate?: Date;
  startedDate?: Date;
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
    chart: string;
    action: string;
    telescoped: string;
    completed: string;
    inProgress: string;
    pending: string;
    active: string;
  };
  colors: {
    completed: string;
    inProgress: string;
    pending: string;
    overdue: string;
  };
  progressBar: {
    filled: string;
    empty: string;
    length: number;
  };
}

export interface TreeStats {
  totalCharts: number;
  rootCharts: number;
  telescopedCharts: number;
  activeCharts: number;
  completedCharts: number;
  pendingCharts: number;
  totalActions: number;
  completedActions: number;
  inProgressActions: number;
  pendingActions: number;
  overallProgress: number;
}
