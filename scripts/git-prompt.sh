# ~/.zshrc 

# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "%b"
precmd() {
	MAX_CHARS=30
	vcs_info
	truncated_branch_name=${vcs_info_msg_0_:0:$MAX_CHARS}
	if [[ ${#truncated_branch_name} -eq $MAX_CHARS ]]
	then
	    truncated_branch_name="$truncated_branch_name..."
	fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for the prompt. PS1 synonym.
prompt='%F{cyan}%1/ %F{green}$truncated_branch_name%F{white}> '
