return {	
{
  "lervag/vimtex",
  lazy = false,
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
	vim.g.vimtex_view_method = 'zathura' 
	--- To Compile on Windows 11 using SumatraPDF, use below instead; 
	--- vim.g.vimtex_view_general_viewer = 'C:\\Users\\taufi\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe' 
	vim.g.vimtex_quickfix_open_on_error = 1 
	vim.g.vimtex_compiler_latexmk = { 
		build_dir = '_build',
		options = {'-pdf', '-interaction=nonstopmode'}
}
  end
},

}
