  
# Namespace: CoaiaMemoryCrossSession06710449-32ff-43b6-9b4d-9bd4e109865d 
session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221=a7d90b64-22ca-4a36-a356-a8400ef1b749
alias cdCoaiaMemoryCrossSession06710449-32ff-43b6-9b4d-9bd4e109865d="cd /src/_sessiondata/a7d90b64-22ca-4a36-a356-a8400ef1b749 && ls -ltra && . session_bash_func_aliases.sh&>/dev/null" 
alias cdPlansCoaiaMemoryCrossSession06710449-32ff-43b6-9b4d-9bd4e109865d='cd /src/_sessiondata/a7d90b64-22ca-4a36-a356-a8400ef1b749/plans 2>/dev/null || echo "No plans directory found."; ls -ltra; echo "Enter plan filename to open:"; read planfile; if [ -f "$planfile" ]; then nano "$planfile"; else echo "File does not exist."; fi' 
session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221__MCP_CONFIG="/src/coaia-memory/.gemini/settings.json"
session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221__ADD_DIR="/src/coaia-memory/ /a/src/coaia-memory/ /src/_sessiondata/06710449-32ff-43b6-9b4d-9bd4e109865d /a/src/_sessiondata/06710449-32ff-43b6-9b4d-9bd4e109865d /src/Miadi-18/stories/multiverse_3act_2512012121/"
alias resume_CoaiaMemoryCrossSession06710449-32ff-43b6-9b4d-9bd4e109865d="claude --mcp-config $session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221__MCP_CONFIG --add-dir $session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221__ADD_DIR --resume $session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221" 
alias fork_CoaiaMemoryCrossSession06710449-32ff-43b6-9b4d-9bd4e109865d="claude --mcp-config $session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221__MCP_CONFIG --add-dir $session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221__ADD_DIR --resume $session_id__CoaiaMemoryCrossSession06710449_32ff_43b6_9b4d_9bd4e109865d_2512102221 --fork-session" 
  
