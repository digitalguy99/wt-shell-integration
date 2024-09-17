function my_custom_prompt {
    PROMPT=$'%{\e]133;D;\007%}%{\e]133;A;\007%}'"$PS1"$'%{\e]133;B;\007%}'
}

precmd_functions+=(my_custom_prompt)