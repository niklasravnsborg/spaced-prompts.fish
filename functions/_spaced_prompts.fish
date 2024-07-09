# NOTE: Maybe this all can be better done in fish directly, see:
# https://github.com/fish-shell/fish-shell/blob/5ba21cd29085003a33e1cf3508a76b55d963f550/src/reader.rs#L3139

function _spaced_prompts
    eval "
# save preexisting `fish_prompt` to new function
functions -c fish_prompt _original_fish_prompt

function _insert_newline
    set -l original_status \$status
    if test \$first_prompt != true
        echo
    end
    return \$original_status
end

function fish_prompt
    _insert_newline
    _original_fish_prompt
end"
end
