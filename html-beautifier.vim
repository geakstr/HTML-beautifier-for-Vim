function! s:HTMLBeautifier ()
        :w!
        let l:fileName = expand("%:t")
        :silent! execute "!" . "sudo htmlbeautifier < " . l:fileName . " > /tmp/" . l:fileName
        :silent! execute "!" . "sudo rm " . l:fileName
        :silent! execute "!" . "sudo cp /tmp/" . l:fileName . " ./" . l:fileName
        :redraw!
        :edit!
endfunction

command HTMLBeautifier call s:HTMLBeautifier()
