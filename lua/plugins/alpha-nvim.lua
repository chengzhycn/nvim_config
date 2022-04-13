--------------------------------------------------
-- Startup interface configuration file
--------------------------------------------------

-- Plugin: alpha-nvim
-- url: https://github.com/goolord/alpha-nvim

-- For configuration examples see: https://github.com/goolord/alpha-nvim/discussions/16

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Banner
local banner = {
--    "                                                    ",
--    " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
--    " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
--    " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
--    " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
--    " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
--    " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
--    "                                                    ",
    "                                                                                                ",
    "                     ',                                                        ;c.              ",
    "                 ...           ';.                          ..           .;dk:                  ",
    "                      ....     .:xo:..'..,;::::;;;:::'....,lo;      ..;coxxkd,                  ",
    "                      .:oxdc;'.  ,x0kodd:lOKK0000OOOo;llcdOx;  ..,,cxkkOkxol;                   ",
    "                     . .codk0Okdc::oxdoxdld0000000Odcodloxd:;coxkOOkddxoc,.;'                   ",
    "                   ..''.;odooxOOkxdxOO000OkO0000O00OO0OkkOkddk0Oxxxxl;,,;',,                    ",
    "                   .''lo:,,;cdoc:oOO00OxkOOOkxkkxxkkkxxxO000xlcoddc;,:od;,'                     ",
    "                     .'lkko,.';lxxxkkkkxxkO0kxkkxk0Oddddkkkxxxo;'.,lkOo;,.                      ",
    "             ..,;;,.  ..'lkx' ,::lxkkxxkOkxOOxxxxOOkkOkxxxkxo:;' .dOd::;. .:l:;'.               ",
    "             .';:,;:,   ..,:;lkl'..ckkkkkkdxOxddxOkdxxxkkko...cko::;,;'  'ldoc;'.               ",
    "                    .. .'::lxOOxoc..;;,;cdxxOkdoxOxxdc,';;'.:lx00Oo::,. ...                     ",
    "                  ..;coxkOxldxxxxxdc;,..':odOkooxOxoc'..';coxkkkxxdoxOkdl:'.                    ",
    "             .';coxkO0000O00OxoddxxkkkxdxkxxOkolx0xdxxdxkkkxxkkkO0Ok0000000kdl:,.               ",
    "        ..,:ldkkkxkxxxkkkxxxxddoodolldkOkxkO0Okxk0OkxkOOdooodxxkkxdoxkxxkkddxxkkxoc,..          ",
    "         ............................ .cl:cdkOOOkkxl:ll. .............................          ",
    "                           ..,:cllolc;..lo,........,ll..;odddol:,..                             ",
    "                      .,;cokO000O0Oxc' .ckxl;,'',;lxko. 'cx00000OOdc;:,.                        ",
    "                    .ckO00000000kl,.    .::'''''''';:.    .'cxO0OOOkkkOkl.                      ",
    "                   'd00000000kl,.       .oo,'.....,lo.       .,cxkx::okOkd,                     ",
    "                  ;k000000kl;.       .  .l:,;,;,,;,;l.  .       .''.'okOO0x;.                   ",
    "                .cO0000ko;.       'cdc.  .          .. .cdl'        .:ddokxdl.                  ",
    "               .o000ko;.       .;okOl.                  .ckd:'.       .':xOOOx,                 ",
    "              ;dkko;.        .cx00O:.   .:...    ...;'    ;do,,,.        .,lxOk:.               ",
    "            .;ol;.          .x000k;     .o::xl;;cxc;o'     .;..cl.          .,lxl.              ",
    "           .,'.             :O00d'      .l::kOkkOO:;l.         .,.             .;:.             ",
    "           .               .d00o.       .;;,dOOOOx;;:.           .                .             ",
    "                           ;OOc.         ''.,cllc;..,.            .                             ",
    "                          .ok;           .'        .'                                           ",
    "                          ,o,            .l,      'l'                                           ",
    "                          '.             .od:,,,,;dd'                                           ",
    "                                         .:c,,,,,,:c.                                           ",
    "                                          ,lllcclll;.                                           ",
    "                                          'ooddddoo,                                            ",
}

dashboard.section.header.val = banner

-- Menu
dashboard.section.buttons.val = {
    dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
    dashboard.button('f', '  Find file', ':LeaderfFile<CR>'),
    dashboard.button('r', '  Recent', ":LeaderfMruCwd<CR>"),
    dashboard.button('s', '  Settings', ':e $MYVIMRC<CR>'),
    dashboard.button('u', '  Update plugins', ':PackerUpdate<CR>'),
    dashboard.button('q', '  Quit', ':qa<CR>'),
}

-- Footer
local function footer()
	local version = vim.version()
	local print_version = "v" .. version.major .. '.' .. version.minor .. '.' .. version.patch
	local datetime = os.date('%Y/%m/%d %H:%M:%S')

	return print_version .. ' ' .. datetime
end

dashboard.section.footer.val = footer()


alpha.setup(dashboard.opts)
