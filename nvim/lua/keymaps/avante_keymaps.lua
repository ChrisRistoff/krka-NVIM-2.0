-- Key mappings for Avante
local keymap = vim.keymap.set

-- Chat commands
keymap("n", "<leader>aa", "<cmd>AvanteAsk<CR>", { desc = "Open Avante" })
keymap("n", "<leader>ac", "<cmd>AvanteChat<CR>", { desc = "Open Avante Chat" })
keymap("n", "<leader>at", "<cmd>AvanteToggle<CR>", { desc = "Toggle Avante" })

-- Context and prompt commands
keymap("n", "<leader>ar", "<cmd>AvanteReset<CR>", { desc = "Reset Avante context" })
keymap("n", "<leader>ac", "<cmd>Avante context<CR>", { desc = "Clear context" })

keymap("n", "<leader>cxa", "<cmd>Avante context You are a general-purpose AI assistant.<CR>",
    { desc = "Reset to basic assistant" })

-- File operations
keymap("n", "<leader>ae", "<cmd>AvanteEdit<CR>", { desc = "Save Avante chat" })

-- History navigation
keymap("n", "<leader>ah", "<cmd>AvanteHistory<CR>", { desc = "View Avante chat history" })

-- Context switching commands
keymap("n", "<leader>cxb", [[<cmd>Avante context For this review, focus on bug detection and prevention:
                            1. Analyze for:
                               - Runtime errors and exceptions
                               - Logic flaws and edge cases
                               - Resource leaks and cleanup issues
                               - Race conditions and threading problems
                               - Input validation gaps
                            2. For each issue found:
                               - Explain the potential impact
                               - Provide a minimal reproduction case
                               - Suggest specific fixes with code examples
                               - Recommend testing approaches
                            3. Consider:
                               - Error handling completeness
                               - State management
                               - API contract compliance
                               - Type safety
                               - Exception paths<CR>]], { desc = "Switch to bug analysis context" })

keymap("n", "<leader>cxp", [[<cmd>Avante context For this review, focus on performance optimization:
                            1. Analyze for:
                               - Time complexity issues
                               - Memory usage patterns
                               - Resource utilization
                               - Bottlenecks and hot paths
                               - Unnecessary operations
                            2. For each issue found:
                               - Quantify the impact where possible
                               - Suggest specific optimizations
                               - Provide benchmarking approaches
                               - Consider trade-offs
                            3. Consider:
                               - Algorithmic efficiency
                               - Data structure choices
                               - Caching opportunities
                               - Async/parallel possibilities
                               - Resource pooling<CR>]], { desc = "Switch to performance context" })

keymap("n", "<leader>cxr", [[<cmd>Avante context For this review, focus on code readability and maintainability:
                            1. Analyze for:
                               - Code organization and structure
                               - Naming conventions and clarity
                               - Function and class responsibilities
                               - Documentation completeness
                               - Code duplication
                            2. For each issue found:
                               - Explain why it impacts maintainability
                               - Suggest specific improvements
                               - Provide before/after examples
                               - Consider team collaboration
                            3. Consider:
                               - SOLID principles
                               - Design patterns
                               - Documentation standards
                               - Testing implications
                               - Future maintainability<CR>]], { desc = "Switch to readability context" })

keymap("n", "<leader>cxs", [[<cmd>Avante context For this review, focus on security vulnerabilities:
                            1. Analyze for:
                               - Input validation vulnerabilities
                               - Authentication/authorization gaps
                               - Data exposure risks
                               - Injection possibilities
                               - Secure coding violations
                            2. For each issue found:
                               - Explain the security impact
                               - Provide attack scenarios
                               - Suggest secure fixes
                               - Recommend validation approaches
                            3. Consider:
                               - OWASP guidelines
                               - Data sanitization
                               - Access control
                               - Secure defaults
                               - Error message safety<CR>]], { desc = "Switch to security context" })

-- Specialized review keymaps (now just start the conversation after context is set)
keymap("n", "<leader>csb", "<cmd>Avante ask What code would you like me to review for bugs?<CR>",
    { desc = "Start bug analysis chat" })
keymap("n", "<leader>csp", "<cmd>Avante ask What code would you like me to review for performance?<CR>",
    { desc = "Start performance chat" })
keymap("n", "<leader>csr", "<cmd>Avante ask What code would you like me to review for readability?<CR>",
    { desc = "Start readability chat" })
keymap("n", "<leader>css", "<cmd>Avante ask What code would you like me to review for security?<CR>",
    { desc = "Start security chat" })
