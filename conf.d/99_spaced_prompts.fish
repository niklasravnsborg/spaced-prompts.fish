# This is used to not add a blank line before the prompt, when it's the first prompt visible on the screen
set -g first_prompt true

function fish_postexec --on-event fish_postexec
    # set `first_prompt` false only if last command wasn't clear
    if test "$argv[1]" != clear
        set first_prompt false
    end
end

bind \cl "set first_prompt true; commandline -f clear-screen"
