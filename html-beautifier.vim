function! s:HTMLBeautifier ()
        :w!
        let l:fileName = expand("%:t")
        :silent! execute "!" . "htmlbeautifier < " . l:fileName . " > /tmp/" . l:fileName
        :silent! execute "!" . "rm " . l:fileName
        :silent! execute "!" . "cp /tmp/" . l:fileName . " ./" . l:fileName
        :redraw!
        :edit!
endfunction

command HTMLBeautifier call s:HTMLBeautifier()
