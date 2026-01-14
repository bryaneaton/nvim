#!/bin/bash

echo "=== LSP Health Check Script ==="
echo

echo "1. Checking if pyright is installed..."
if command -v pyright &> /dev/null; then
    echo "✓ pyright found: $(pyright --version)"
else
    echo "✗ pyright not found in PATH"
    echo "  Check Mason installation: :Mason in nvim"
fi
echo

echo "2. Checking if lua-language-server is available..."
if command -v lua-language-server &> /dev/null; then
    echo "✓ lua-language-server found"
else
    echo "✗ lua-language-server not found in PATH"
    echo "  This might be normal if Mason installs it in nvim's data directory"
fi
echo

echo "3. Checking Mason's tool directory..."
MASON_DIR="$HOME/.local/share/nvim/mason"
if [ -d "$MASON_DIR" ]; then
    echo "✓ Mason directory found at: $MASON_DIR"
    echo "  Installed packages:"
    ls -la "$MASON_DIR/packages/" 2>/dev/null || echo "  No packages directory found"
else
    echo "✗ Mason directory not found"
    echo "  Expected at: $MASON_DIR"
fi
echo

echo "4. To test LSP in nvim, run:"
echo "   nvim test_lsp.py"
echo "   Then try these commands:"
echo "   :LspInfo                 (check LSP status)"
echo "   :Mason                   (check installed tools)"
echo "   grd on a function name   (go to definition)"
echo "   K on a function name     (hover documentation)"
echo

echo "5. Test these keymaps in the test file:"
echo "   grd  - Go to definition"
echo "   grr  - Find references"
echo "   grn  - Rename symbol"
echo "   gra  - Code action"
echo "   K    - Hover documentation"
echo "   <leader>f - Format file"