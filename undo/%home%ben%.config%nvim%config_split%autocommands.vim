Vim�UnDo� &��~��6��)�+�!͇?M�t�?����%   )           +                       _�#�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             _�*    �       "          ,autocmd bufwritepost *.html :%s/ü/\&uuml;/g�      !          ,autocmd bufwritepost *.html :%s/ö/\&ouml;/g�                 ,autocmd bufwritepost *.html :%s/ä/\&auml;/g�                -autocmd bufwritepost *.html :%s/ß/\&szlig;/g�                ,autocmd bufwritepost *.html :%s/Ö/\&Ouml;/g�                ,autocmd bufwritepost *.html :%s/Ä/\&Auml;/g�                ,autocmd bufwritepost *.html :%s/Ü/\&Uuml;/g5�_�                            ����                                                                                                                                                                                                                                                                                                                                       !           V        _��    �       "          3autocmd bufwritepost *.html silent :%s/ü/\&uuml;/g�      !          3autocmd bufwritepost *.html silent :%s/ö/\&ouml;/g�                 3autocmd bufwritepost *.html silent :%s/ä/\&auml;/g�                4autocmd bufwritepost *.html silent :%s/ß/\&szlig;/g�                3autocmd bufwritepost *.html silent :%s/Ö/\&Ouml;/g�                3autocmd bufwritepost *.html silent :%s/Ä/\&Auml;/g�                3autocmd bufwritepost *.html silent :%s/Ü/\&Uuml;/g5�_�                    )   %    ����                                                                                                                                                                                                                                                                                                                                                             _� �     �   (              %autocmd BufEnter *.md TableModeEnable5�_�                    -   +    ����                                                                                                                                                                                                                                                                                                                            -   +       -   >       v���    _�!}     �   ,              >autocmd BufWritePre *.html, *.html silent! %s/$ICHBINDASDATUM/�   -            5�_�                    -   "    ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              _autocmd BufWritePre *.html, *.html silent! silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -   "    ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�    �   ,              Xautocmd BufWritePre *.html, *.html! silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�      	              -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Wautocmd BufWritePre *.html, *.html silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�      
           	   -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Vautocmd BufWritePre *.html *.html silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�   	              
   -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Uautocmd BufWritePre *.html*.html silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�   
                 -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Tautocmd BufWritePre *.html.html silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Sautocmd BufWritePre *.htmlhtml silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Rautocmd BufWritePre *.htmltml silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�     �   ,              Qautocmd BufWritePre *.htmlml silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�    �   ,              Pautocmd BufWritePre *.htmll silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -   L    ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�!�    �   ,              Oautocmd BufWritePre *.html silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d)/g5�_�                    -        ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�#�     �   ,   -          Pautocmd BufWritePre *.html silent! %s/$ICHBINDASDATUM/\=strftime("%Y\/%m\/%d")/g5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                            -   +       -   ^       v���    _�#�     �   +   ,          *" Aktuelles Datum in revised Tag schreiben5�_�                    +        ����                                                                                                                                                                                                                                                                                                                            ,   +       ,   ^       v���    _�#�     �   *   +          " HTML5�_�                     *        ����                                                                                                                                                                                                                                                                                                                            +   +       +   ^       v���    _�#�    �   )   *           5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�*     �         )      3autocmd bufwritepost *.html silent :%s/Ü/\&Uuml;/g5��