`fish_prompt.fish`:
function fish_prompt --description 'Informative prompt'
    # Save the return status of the previous command
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    
    # Git information function
    set -l git_info ""
    if git rev-parse --git-dir >/dev/null 2>&1
        set -l git_branch (git branch --show-current 2>/dev/null)
        if test -z "$git_branch"
            set git_branch (git rev-parse --short HEAD 2>/dev/null)
        end
        
        if test -n "$git_branch"
            set git_info (printf " %s(%s)%s" (set_color magenta) $git_branch (set_color normal))
        end
    end
    
    if functions -q fish_is_root_user; and fish_is_root_user
        printf '%s@%s %s%s%s%s# ' $USER (prompt_hostname) (set -q fish_color_cwd_root
                                                             and set_color $fish_color_cwd_root
                                                             or set_color $fish_color_cwd) \
                (prompt_pwd) $git_info (set_color normal)
    else
        set -l status_color (set_color $fish_color_status)
        set -l statusb_color (set_color --bold $fish_color_status)
        set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
        
        printf '[%s] %s%s@%s %s%s%s %s%s \n> ' (date "+%H:%M:%S") (set_color brblue) \
                $USER (prompt_hostname) (set_color $fish_color_cwd) $PWD $git_info $pipestatus_string \
                (set_color normal)
    end
end
