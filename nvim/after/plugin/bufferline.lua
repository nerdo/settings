local present, bufferline = pcall(require, "bufferline")

if not present then
	return
end

-- You can change the appearance of the bufferline separators by setting the
-- `separator_style`. The available options are:
-- * `slant` - Use slanted/triangular separators
-- * `padded_slant` - Same as `slant` but with extra padding which some terminals require.
--   If `slant` does not render correctly for you try padded this instead.
-- * `thick` - Increase the thickness of the separator characters
-- * `thin` - (default) Use thin separator characters
-- * finally you can pass in a custom list containing 2 characters which will be
--   used as the separators e.g. `{"|", "|"}`, the first is the left and the
--   second is the right separator
bufferline.setup({
	options = {
		indicator = {
			icon = "▌▏",
		},
		separator_style = { " ", " " },
	},
})
