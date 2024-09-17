function my_custom_prompt {
  PS1=$'\e]133;D;\007 \e]133;A;\007'"$PS1"$'\e]133;B;\007'
}

# Preserve the existing PROMPT_COMMAND
if [[ -n "$PROMPT_COMMAND" ]]; then
  PROMPT_COMMAND="$PROMPT_COMMAND; my_custom_prompt"
else
  PROMPT_COMMAND="my_custom_prompt"
fi