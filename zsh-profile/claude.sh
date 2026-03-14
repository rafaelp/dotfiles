# alias claude="npx @anthropic-ai/claude-code"
export PATH="$HOME/.local/bin:$PATH"
alias linear-key="op signin --account 6FVZDE5XPVGPLEKTLHWHK6L7DI && export LINEAR_API_KEY=\"\`op read op://CLI/LINEAR_API_KEY/password\`\""
alias claude-safe="claude --dangerously-skip-permissions"