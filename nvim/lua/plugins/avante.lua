local ANTHROPIC_API_KEY = vim.fn.getenv("ANTHROPIC_API_KEY");

return
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = false,
        version = false,
        opts = {
            chat = {
                provider = "claude",
                auto_suggestions_provider = "claude",
                claude = {
                    api_key = ANTHROPIC_API_KEY,
                    model = "claude-3-5-sonnet-20241022",
                    temperature = 0.2,
                    max_tokens = 4096,
                },
--[[            openai = {
                    api_key = vim.fn.getenv("OPENAI_API_KEY"),
                    model = "gpt-4-turbo-preview",
                    temperature = 0.2,
                    max_tokens = 4096,
                }, ]]
                default_prompts = {
                    system = [[
                    You are an expert software developer and architect whose primary focus is on writing and reviewing production-grade code. Your responses must adhere to the following principles and quality standards without altering any current functionality.

                    Core Principles for All Interactions:
                    1. **Clean and Maintainable Code**: Write code that is simple, well-organized, and easy to understand.
                    2. **Industry Best Practices**: Follow proven design patterns and best practices.
                    3. **Balanced Solutions**: Consider both immediate requirements and long-term implications, balancing pragmatism with engineering excellence.
                    4. **Non-Disruptive**: Ensure that any changes or suggestions do not break or alter current functionality.

                    Response Guidelines for Code-Related Queries:
                    1. **Prioritize Key Points**: Begin with the most critical aspects.
                    2. **Explain Reasoning**: Clearly explain the reasoning behind significant choices.
                    3. **Highlight Risks and Trade-offs**: Identify potential risks or trade-offs.
                    4. **Include Error Handling**: Ensure relevant error handling is present.
                    5. **Maintain Backwards Compatibility**: Consider how changes might affect existing functionality.

                    Code Quality Standards:
                    - **Readability and Maintainability**: Use clear, self-documenting naming conventions.
                    - **Proper Error Handling and Logging**: Incorporate robust error handling and logging mechanisms.
                    - **Testable Code**: Write code that is easily testable with clear dependencies.
                    - **Resource Management**: Address proper resource management and cleanup.

                    Guidelines When Suggesting Solutions:
                    1. **Simplicity First**: Start with the simplest working approach.
                    2. **Alternative Approaches**: Mention other viable approaches when relevant.
                    3. **Assumptions**: Clearly state any assumptions made.
                    4. **Example Usage**: Provide example usage where it can clarify the solution.
                    5. **Broader System Context**: Consider the broader system environment, ensuring that changes do not affect existing functionality.

                    Additional Considerations:
                    - **Development Environment and Tooling**: Be aware of and work within the given development environment.
                    - **Build and Deployment Implications**: Consider how changes might impact build processes and deployment.
                    - **Debugging and Monitoring**: Ensure the solution supports effective debugging and monitoring.
                    - **Documentation Requirements**: Include or update documentation as needed.
                    - **Team Collaboration**: Consider the impact on team workflows and collaboration.

                    Your primary mandate is to produce production-grade code solutions that improve quality without breaking any existing functionality.
                    ]]
                },
            },

            dual_boost = {
                enabled = false,
                first_provider = "claude",
                second_provider = "openai",
                prompt = [[Review both responses and create a unified answer that:
                            1. Uses Claude's response for:
                               - Code examples and technical implementation
                               - Security considerations
                               - Architecture decisions
                            2. Uses OpenAI's response for:
                               - Alternative approaches
                               - Modern practices and patterns
                               - Performance optimizations
                            3. For any conflicts:
                               - Choose the more conservative/safer approach
                               - Explain the trade-offs if significant
                               - Preserve all important warnings
                            4. Ensure the final response:
                               - Maintains consistent code style
                               - Is production-ready
                               - Includes all critical insights

                            Reference Output 1: [{{provider1_output}}]
                            Reference Output 2: [{{provider2_output}}]

                            Create a single cohesive response that represents the best combination.]],
                timeout = 90000,
            },

            behaviour = {
                auto_suggestions = false,
                auto_set_highlight_group = true,
                auto_set_keymaps = true,
                auto_apply_diff_after_generation = false,
                support_paste_from_clipboard = false,
                minimize_diff = true,
            },

            mappings = {
                diff = {
                    ours = "co",
                    theirs = "ct",
                    all_theirs = "ca",
                    both = "cb",
                    cursor = "cc",
                    next = "]x",
                    prev = "[x",
                },

                suggestion = {
                    accept = "<M-l>",
                    next = "<M-]>",
                    prev = "<M-[>",
                    dismiss = "<C-]>",
                },

                jump = {
                    next = "]]",
                    prev = "[[",
                },

                submit = {
                    normal = "<CR>",
                    insert = "<C-s>",
                },

                sidebar = {
                    apply_all = "A",
                    apply_cursor = "a",
                    switch_windows = "<Tab>",
                    reverse_switch_windows = "<S-Tab>",
                },
            },

            hints = { enabled = true },

            windows = {
                position = "right",
                wrap = true,
                width = 30,
                sidebar_header = {
                    enabled = true,
                    align = "center",
                    rounded = true,
                },
                input = {
                    prefix = "> ",
                    height = 8,
                },
                edit = {
                    border = "rounded",
                    start_insert = true,
                },
                ask = {
                    floating = false,
                    start_insert = true,
                    border = "rounded",
                    focus_on_apply = "ours",
                },
            },

            highlights = {
                diff = {
                    current = "DiffText",
                    incoming = "DiffAdd",
                },
            },

            diff = {
                autojump = true,
                list_opener = "copen",
                override_timeoutlen = 500,
            },

            suggestion = {
                debounce = 600,
                throttle = 600,
            },

            file_selector = {
                provider = "telescope",
            },

            ui = {
                border = "rounded",
                width = 0.8,
                height = 0.8,
            },

            markdown = {
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            },

        },

        build = "make",
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "echasnovski/mini.pick",
            "nvim-telescope/telescope.nvim",
            "hrsh7th/nvim-cmp",
            "ibhagwan/fzf-lua",
            "nvim-tree/nvim-web-devicons",
            {
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        use_absolute_path = true,
                    },
                },
            },
            {
                'MeanderingProgrammer/render-markdown.nvim',
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    }
