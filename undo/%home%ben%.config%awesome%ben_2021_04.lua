Vim�UnDo� ������̷˞�� �fC]��|͇9��A2�z�   3                  B   B   B   B   @    `}n�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `}k�     �                   5�_�                       %    ����                                                                                                                                                                                                                                                                                                                                                             `}k�     �                -- �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `}l     �                 #-- Das hier muss ganz oben stehen ^5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `}l     �                -- �               �               �                 -- �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `}l     �                 -- �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `}l     �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `}l      �               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             `}l!     �                 --5�_�      
           	      !    ����                                                                                                                                                                                                                                                                                                                                                             `}l-     �                 !pcall(require, "luarocks.loader")5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             `}l]    �                  �               5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             `}le     �      	   	       �      	       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `}lr     �      	   	       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `}lr    �      	   
       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `}l     �      
       �      
          5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             `}l�     �      
             --5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            
           
           V        `}l�     �   	            
    -- }}}5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            
           
           V        `}l�     �   	            	   -- }}}5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            
           
           V        `}l�     �   	              -- }}}5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            
           
           V        `}l�    �   	             -- }}}5�_�                    	        ����                                                                                                                                                                                                                                                                                                                            
           
           V        `}l�     �                5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �   	            --5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �   	            local gears = require("gears")5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �   
            local awful = require("awful")5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               require("awful.autofocus")5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               --5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               local wibox = require("wibox"")5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               local wibox = require("wibox")5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               --5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               &local beautiful = require("beautiful")5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               --5�_�                        "    ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�     �               "local naughty = require("naughty")5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                  V        `}l�    �                �             �               4local hotkeys_popup = require("awful.hotkeys_popup")�               --�             5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m     �                �             5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m     �                5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                  V        `}m'     �              �               -- Error Han5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                  V        `}m-     �         !          --5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m/     �         !      
    -- }}}5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m/     �         !      	   -- }}}5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m/     �         !        -- }}}5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m/     �         !       -- }}}5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                  V        `}m3     �      $   !       �         !    5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                           )       v       `}m:     �      !   '      U        title   = "Oops, an error happened"..(startup and " during startup!" or "!"),5�_�   *   ,           +       7    ����                                                                                                                                                                                                                                                                                                                                           )       v       `}mA    �      !   '      P        title   = "Achtung! Fehler..."..(startup and " during startup!" or "!"),5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                            
                    V       `}m�     �   	      &      local gears = require("gears")�   
      &    �   
             local awful = require("awful")5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                            
                    V       `}m�     �                require("awful.autofocus")5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                            
                    V       `}m�     �                 5�_�   .   0           /   $        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}m�     �   #   %   '       �   #   %   &    5�_�   /   1           0   $        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n     �   #   &   '      -- 5�_�   0   2           1   %       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n     �   %   '   )    �   $   '   (      -- 5�_�   1   3           2   &       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n	     �   %   &              --5�_�   2   4           3   &       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n     �   %   '   )          -- }}} 5�_�   3   5           4   &        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n     �   %   '   )    5�_�   4   6           5   &       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n    �   %   '   *          --�   &   '   *    5�_�   5   7           6   (        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n:     �   (   +   +       �   (   *   *    5�_�   6   8           7   )        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n;     �   )   +   -    �   (   +   ,       5�_�   7   9           8   +       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}nI     �   *   ,   .      
    -- }}}5�_�   8   :           9   *        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}nI     �   )   +   .          --5�_�   9   ;           :   *        ����                                                                                                                                                                                                                                                                                                                            
                    V       `}nJ     �   )   +   .        --5�_�   :   <           ;   *       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}nS     �   )   ,   .      terminal = "kitty"5�_�   ;   =           <   +       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n]     �   *   ,   /      editor = os.getenv("EDITOR")5�_�   <   >           =   +   &    ����                                                                                                                                                                                                                                                                                                                            
                    V       `}ng    �   +   -   0       �   ,   -   0    �   *   -   /      &editor = os.getenv("EDITOR") or "nvim"5�_�   =   ?           >   *       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}no    �   *   ,   2       �   +   ,   2    �   )   ,   1          �   )   +   0    5�_�   >   @           ?   +       ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n{   	 �   +   -   2    5�_�   ?   B           @           ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n�    �                local ruled = require("ruled")5�_�   @       A       B           ����                                                                                                                                                                                                                                                                                                                                       "           V        `}n�    �                N-- naughty.connect_signal("request::display_error", function(message, startup)�                --     naughty.notification {�                 --         urgency = "critical",�                 U--         title   = "Achtung! Fehler..."..(startup and " während startup!" or "!"),�      !          --         message = message�       "          --     }�   !   #          -- end)5�_�   @           B   A           ����                                                                                                                                                                                                                                                                                                                            
                    V       `}n�     �                ERROR HANDLING {{{5��