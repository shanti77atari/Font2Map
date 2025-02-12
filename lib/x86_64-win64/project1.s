	.file "project1.ppr"
# Begin asmlist al_begin

.section .debug_line
.Ldebug_linesection0:
.Ldebug_line0:

.section .debug_abbrev
.Ldebug_abbrevsection0:
.Ldebug_abbrev0:

.section .text.b_DEBUGSTART_$P$PROJECT1,"ax"
.globl	DEBUGSTART_$P$PROJECT1
DEBUGSTART_$P$PROJECT1:
# End asmlist al_begin
# Begin asmlist al_procedures

.section .text.n_main,"ax"
	.balign 16,0x90
.globl	main
main:
.globl	PASCALMAIN
PASCALMAIN:
.Lc2:
.seh_proc main
.Ll1:
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
	movq	%rsp,%rbp
.Lc4:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_savereg %rbx, 32
.seh_savereg %rdi, 40
.seh_savereg %rsi, 48
.seh_endprologue
	call	fpc_initializeunits
.Ll2:
	movb	$1,TC_$FORMS_$$_REQUIREDERIVEDFORMRESOURCE(%rip)
.Ll3:
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rax
	movb	$1,584(%rax)
.Ll4:
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rsi
	movq	%rsi,%rdi
	testq	%rsi,%rsi
	jne	.Lj4
	call	fpc_objecterror
.Lj4:
	leaq	VMT_$FORMS_$$_TAPPLICATION(%rip),%rdx
	movq	(%rdi),%rbx
	movq	%rbx,%rcx
	call	fpc_check_object_ext
	movq	%rsi,%rcx
	call	*504(%rbx)
.Ll5:
	leaq	U_$UNIT1_$$_FORM1(%rip),%r8
	leaq	VMT_$UNIT1_$$_TFORM1(%rip),%rdx
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
.Ll6:
	leaq	U_$UNIT2_$$_FORM2(%rip),%r8
	leaq	VMT_$UNIT2_$$_TFORM2(%rip),%rdx
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
.Ll7:
	leaq	U_$UNIT3_$$_FORM3(%rip),%r8
	leaq	VMT_$UNIT3_$$_TFORM3(%rip),%rdx
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_CREATEFORM$TCOMPONENTCLASS$formal
.Ll8:
	movq	TC_$FORMS_$$_APPLICATION(%rip),%rcx
	call	FORMS$_$TAPPLICATION_$__$$_RUN
.Ll9:
	call	fpc_do_exit
.seh_endproc
.Lc1:
.Lt1:
.Ll10:

.section .fpc.n_links,"aw"
	.quad	DEBUGSTART_$P$PROJECT1
	.quad	DEBUGEND_$P$PROJECT1
	.quad	DEBUGSTART_$INTERFACES
	.quad	DEBUGEND_$INTERFACES
	.quad	DEBUGSTART_$FORMS
	.quad	DEBUGEND_$FORMS
	.quad	DEBUGSTART_$UNIT1
	.quad	DEBUGEND_$UNIT1
	.quad	DEBUGSTART_$UNIT2
	.quad	DEBUGEND_$UNIT2
	.quad	DEBUGSTART_$UNIT3
	.quad	DEBUGEND_$UNIT3
	.quad	DEBUGSTART_$LAZUTF8
	.quad	DEBUGEND_$LAZUTF8
	.quad	DEBUGSTART_$INTERFACEBASE
	.quad	DEBUGEND_$INTERFACEBASE
	.quad	DEBUGSTART_$FPCADDS
	.quad	DEBUGEND_$FPCADDS
	.quad	DEBUGSTART_$LCLPROC
	.quad	DEBUGEND_$LCLPROC
	.quad	DEBUGSTART_$LCLTYPE
	.quad	DEBUGEND_$LCLTYPE
	.quad	DEBUGSTART_$LMESSAGES
	.quad	DEBUGEND_$LMESSAGES
	.quad	DEBUGSTART_$LCLPLATFORMDEF
	.quad	DEBUGEND_$LCLPLATFORMDEF
	.quad	DEBUGSTART_$INTFGRAPHICS
	.quad	DEBUGEND_$INTFGRAPHICS
	.quad	DEBUGSTART_$THEMES
	.quad	DEBUGEND_$THEMES
	.quad	DEBUGSTART_$INTEGERLIST
	.quad	DEBUGEND_$INTEGERLIST
	.quad	DEBUGSTART_$LAZUTILITIES
	.quad	DEBUGEND_$LAZUTILITIES
	.quad	DEBUGSTART_$LAZLOGGERBASE
	.quad	DEBUGEND_$LAZLOGGERBASE
	.quad	DEBUGSTART_$GRAPHTYPE
	.quad	DEBUGEND_$GRAPHTYPE
	.quad	DEBUGSTART_$GRAPHMATH
	.quad	DEBUGEND_$GRAPHMATH
	.quad	DEBUGSTART_$LAZ_AVL_TREE
	.quad	DEBUGEND_$LAZ_AVL_TREE
	.quad	DEBUGSTART_$LAZFILEUTILS
	.quad	DEBUGEND_$LAZFILEUTILS
	.quad	DEBUGSTART_$LAZMETHODLIST
	.quad	DEBUGEND_$LAZMETHODLIST
	.quad	DEBUGSTART_$LAZTRACER
	.quad	DEBUGEND_$LAZTRACER
	.quad	DEBUGSTART_$LCLSTRCONSTS
	.quad	DEBUGEND_$LCLSTRCONSTS
	.quad	DEBUGSTART_$LAZUTILSSTRCONSTS
	.quad	DEBUGEND_$LAZUTILSSTRCONSTS
	.quad	DEBUGSTART_$LAZCLASSES
	.quad	DEBUGEND_$LAZCLASSES
	.quad	DEBUGSTART_$LCLVERSION
	.quad	DEBUGEND_$LCLVERSION
	.quad	DEBUGSTART_$ICNSTYPES
	.quad	DEBUGEND_$ICNSTYPES
	.quad	DEBUGSTART_$LAZVERSION
	.quad	DEBUGEND_$LAZVERSION
	.quad	DEBUGSTART_$GRAPHICS
	.quad	DEBUGEND_$GRAPHICS
	.quad	DEBUGSTART_$LCLINTF
	.quad	DEBUGEND_$LCLINTF
	.quad	DEBUGSTART_$LRESOURCES
	.quad	DEBUGEND_$LRESOURCES
	.quad	DEBUGSTART_$LCLRESCACHE
	.quad	DEBUGEND_$LCLRESCACHE
	.quad	DEBUGSTART_$WSREFERENCES
	.quad	DEBUGEND_$WSREFERENCES
	.quad	DEBUGSTART_$LAZCONFIGSTORAGE
	.quad	DEBUGEND_$LAZCONFIGSTORAGE
	.quad	DEBUGSTART_$DYNQUEUE
	.quad	DEBUGEND_$DYNQUEUE
	.quad	DEBUGSTART_$AVGLVLTREE
	.quad	DEBUGEND_$AVGLVLTREE
	.quad	DEBUGSTART_$LAZDBGLOG
	.quad	DEBUGEND_$LAZDBGLOG
	.quad	DEBUGSTART_$LAZUTF16
	.quad	DEBUGEND_$LAZUTF16
	.quad	DEBUGSTART_$FILEUTIL
	.quad	DEBUGEND_$FILEUTIL
	.quad	DEBUGSTART_$UTF8PROCESS
	.quad	DEBUGEND_$UTF8PROCESS
	.quad	DEBUGSTART_$LAZSYSUTILS
	.quad	DEBUGEND_$LAZSYSUTILS
	.quad	DEBUGSTART_$MAPS
	.quad	DEBUGEND_$MAPS
	.quad	DEBUGSTART_$TMSCHEMA
	.quad	DEBUGEND_$TMSCHEMA
	.quad	DEBUGSTART_$MASKS
	.quad	DEBUGEND_$MASKS
	.quad	DEBUGSTART_$WIN32INT
	.quad	DEBUGEND_$WIN32INT
	.quad	DEBUGSTART_$CONTROLS
	.quad	DEBUGEND_$CONTROLS
	.quad	DEBUGSTART_$BUTTONS
	.quad	DEBUGEND_$BUTTONS
	.quad	DEBUGSTART_$DIALOGS
	.quad	DEBUGEND_$DIALOGS
	.quad	DEBUGSTART_$STDCTRLS
	.quad	DEBUGEND_$STDCTRLS
	.quad	DEBUGSTART_$MENUS
	.quad	DEBUGEND_$MENUS
	.quad	DEBUGSTART_$COMCTRLS
	.quad	DEBUGEND_$COMCTRLS
	.quad	DEBUGSTART_$WIN32DEF
	.quad	DEBUGEND_$WIN32DEF
	.quad	DEBUGSTART_$SPIN
	.quad	DEBUGEND_$SPIN
	.quad	DEBUGSTART_$TRANSLATIONS
	.quad	DEBUGEND_$TRANSLATIONS
	.quad	DEBUGSTART_$IMGLIST
	.quad	DEBUGEND_$IMGLIST
	.quad	DEBUGSTART_$PROPERTYSTORAGE
	.quad	DEBUGEND_$PROPERTYSTORAGE
	.quad	DEBUGSTART_$ACTNLIST
	.quad	DEBUGEND_$ACTNLIST
	.quad	DEBUGSTART_$LCLCLASSES
	.quad	DEBUGEND_$LCLCLASSES
	.quad	DEBUGSTART_$UITYPES
	.quad	DEBUGEND_$UITYPES
	.quad	DEBUGSTART_$WSLCLCLASSES
	.quad	DEBUGEND_$WSLCLCLASSES
	.quad	DEBUGSTART_$WSIMGLIST
	.quad	DEBUGEND_$WSIMGLIST
	.quad	DEBUGSTART_$WSPROC
	.quad	DEBUGEND_$WSPROC
	.quad	DEBUGSTART_$WSFACTORY
	.quad	DEBUGEND_$WSFACTORY
	.quad	DEBUGSTART_$WSMENUS
	.quad	DEBUGEND_$WSMENUS
	.quad	DEBUGSTART_$LAZLOGGER
	.quad	DEBUGEND_$LAZLOGGER
	.quad	DEBUGSTART_$LAZSTRINGUTILS
	.quad	DEBUGEND_$LAZSTRINGUTILS
	.quad	DEBUGSTART_$CUSTOMTIMER
	.quad	DEBUGEND_$CUSTOMTIMER
	.quad	DEBUGSTART_$CLIPBRD
	.quad	DEBUGEND_$CLIPBRD
	.quad	DEBUGSTART_$HELPINTFS
	.quad	DEBUGEND_$HELPINTFS
	.quad	DEBUGSTART_$WSCONTROLS
	.quad	DEBUGEND_$WSCONTROLS
	.quad	DEBUGSTART_$WSFORMS
	.quad	DEBUGEND_$WSFORMS
	.quad	DEBUGSTART_$IMAGELISTCACHE
	.quad	DEBUGEND_$IMAGELISTCACHE
	.quad	DEBUGSTART_$TEXTSTRINGS
	.quad	DEBUGEND_$TEXTSTRINGS
	.quad	DEBUGSTART_$EXTENDEDSTRINGS
	.quad	DEBUGEND_$EXTENDEDSTRINGS
	.quad	DEBUGSTART_$WSSTDCTRLS
	.quad	DEBUGEND_$WSSTDCTRLS
	.quad	DEBUGSTART_$WSBUTTONS
	.quad	DEBUGEND_$WSBUTTONS
	.quad	DEBUGSTART_$BUTTONPANEL
	.quad	DEBUGEND_$BUTTONPANEL
	.quad	DEBUGSTART_$EXTCTRLS
	.quad	DEBUGEND_$EXTCTRLS
	.quad	DEBUGSTART_$LCLTASKDIALOG
	.quad	DEBUGEND_$LCLTASKDIALOG
	.quad	DEBUGSTART_$POPUPNOTIFIER
	.quad	DEBUGEND_$POPUPNOTIFIER
	.quad	DEBUGSTART_$WSEXTCTRLS
	.quad	DEBUGEND_$WSEXTCTRLS
	.quad	DEBUGSTART_$WSDIALOGS
	.quad	DEBUGEND_$WSDIALOGS
	.quad	DEBUGSTART_$TOOLWIN
	.quad	DEBUGEND_$TOOLWIN
	.quad	DEBUGSTART_$WSCOMCTRLS
	.quad	DEBUGEND_$WSCOMCTRLS
	.quad	DEBUGSTART_$WSTOOLWIN
	.quad	DEBUGEND_$WSTOOLWIN
	.quad	DEBUGSTART_$WSSPIN
	.quad	DEBUGEND_$WSSPIN
	.quad	DEBUGSTART_$LCONVENCODING
	.quad	DEBUGEND_$LCONVENCODING
	.quad	DEBUGSTART_$STRINGHASHLIST
	.quad	DEBUGEND_$STRINGHASHLIST
	.quad	DEBUGSTART_$CODEPAGESCOMMON
	.quad	DEBUGEND_$CODEPAGESCOMMON
	.quad	DEBUGSTART_$CODEPAGESASIAN
	.quad	DEBUGEND_$CODEPAGESASIAN
	.quad	DEBUGSTART_$WIN32PROC
	.quad	DEBUGEND_$WIN32PROC
	.quad	DEBUGSTART_$WIN32WSFACTORY
	.quad	DEBUGEND_$WIN32WSFACTORY
	.quad	DEBUGSTART_$WIN32WSCONTROLS
	.quad	DEBUGEND_$WIN32WSCONTROLS
	.quad	DEBUGSTART_$WIN32WSBUTTONS
	.quad	DEBUGEND_$WIN32WSBUTTONS
	.quad	DEBUGSTART_$WIN32WSMENUS
	.quad	DEBUGEND_$WIN32WSMENUS
	.quad	DEBUGSTART_$WIN32WSSTDCTRLS
	.quad	DEBUGEND_$WIN32WSSTDCTRLS
	.quad	DEBUGSTART_$WIN32WSDIALOGS
	.quad	DEBUGEND_$WIN32WSDIALOGS
	.quad	DEBUGSTART_$WIN32THEMES
	.quad	DEBUGEND_$WIN32THEMES
	.quad	DEBUGSTART_$WIN32EXTRA
	.quad	DEBUGEND_$WIN32EXTRA
	.quad	DEBUGSTART_$LCLMESSAGEGLUE
	.quad	DEBUGEND_$LCLMESSAGEGLUE
	.quad	DEBUGSTART_$CALENDAR
	.quad	DEBUGEND_$CALENDAR
	.quad	DEBUGSTART_$EXTDLGS
	.quad	DEBUGEND_$EXTDLGS
	.quad	DEBUGSTART_$CHECKLST
	.quad	DEBUGEND_$CHECKLST
	.quad	DEBUGSTART_$GRIDS
	.quad	DEBUGEND_$GRIDS
	.quad	DEBUGSTART_$SHELLCTRLS
	.quad	DEBUGEND_$SHELLCTRLS
	.quad	DEBUGSTART_$WSCALENDAR
	.quad	DEBUGEND_$WSCALENDAR
	.quad	DEBUGSTART_$CALCFORM
	.quad	DEBUGEND_$CALCFORM
	.quad	DEBUGSTART_$WSEXTDLGS
	.quad	DEBUGEND_$WSEXTDLGS
	.quad	DEBUGSTART_$WSCHECKLST
	.quad	DEBUGEND_$WSCHECKLST
	.quad	DEBUGSTART_$MASKEDIT
	.quad	DEBUGEND_$MASKEDIT
	.quad	DEBUGSTART_$DYNAMICARRAY
	.quad	DEBUGEND_$DYNAMICARRAY
	.quad	DEBUGSTART_$LAZ2_XMLCFG
	.quad	DEBUGEND_$LAZ2_XMLCFG
	.quad	DEBUGSTART_$LCSVUTILS
	.quad	DEBUGEND_$LCSVUTILS
	.quad	DEBUGSTART_$LAZFILECACHE
	.quad	DEBUGEND_$LAZFILECACHE
	.quad	DEBUGSTART_$LAZ2_DOM
	.quad	DEBUGEND_$LAZ2_DOM
	.quad	DEBUGSTART_$LAZ2_XMLREAD
	.quad	DEBUGEND_$LAZ2_XMLREAD
	.quad	DEBUGSTART_$LAZ2_XMLWRITE
	.quad	DEBUGEND_$LAZ2_XMLWRITE
	.quad	DEBUGSTART_$LAZ2_XMLUTILS
	.quad	DEBUGEND_$LAZ2_XMLUTILS
	.quad	DEBUGSTART_$WSGRIDS
	.quad	DEBUGEND_$WSGRIDS
	.quad	DEBUGSTART_$WSSHELLCTRLS
	.quad	DEBUGEND_$WSSHELLCTRLS
	.quad	DEBUGSTART_$WIN32WSCALENDAR
	.quad	DEBUGEND_$WIN32WSCALENDAR
	.quad	DEBUGSTART_$WIN32WSCHECKLST
	.quad	DEBUGEND_$WIN32WSCHECKLST
	.quad	DEBUGSTART_$WIN32WSCOMCTRLS
	.quad	DEBUGEND_$WIN32WSCOMCTRLS
	.quad	DEBUGSTART_$WIN32WSEXTCTRLS
	.quad	DEBUGEND_$WIN32WSEXTCTRLS
	.quad	DEBUGSTART_$WIN32WSEXTDLGS
	.quad	DEBUGEND_$WIN32WSEXTDLGS
	.quad	DEBUGSTART_$WIN32WSFORMS
	.quad	DEBUGEND_$WIN32WSFORMS
	.quad	DEBUGSTART_$WIN32WSGRIDS
	.quad	DEBUGEND_$WIN32WSGRIDS
	.quad	DEBUGSTART_$WIN32WSIMGLIST
	.quad	DEBUGEND_$WIN32WSIMGLIST
	.quad	DEBUGSTART_$WIN32WSSHELLCTRLS
	.quad	DEBUGEND_$WIN32WSSHELLCTRLS
	.quad	DEBUGSTART_$WIN32WSSPIN
	.quad	DEBUGEND_$WIN32WSSPIN
# End asmlist al_procedures
# Begin asmlist al_globals

.section .data.n_INITFINAL,"aw"
	.balign 8
.globl	INITFINAL
INITFINAL:
	.quad	84,0
	.quad	INIT$_$SYSTEM
	.quad	FINALIZE$_$SYSTEM
	.quad	INIT$_$HEAPTRC
	.quad	FINALIZE$_$HEAPTRC
	.quad	0
	.quad	FINALIZE$_$OBJPAS
	.quad	INIT$_$LNFODWRF
	.quad	FINALIZE$_$LNFODWRF
	.quad	INIT$_$FPINTRES
	.quad	0,0
	.quad	FINALIZE$_$WINDIRS
	.quad	INIT$_$SYSUTILS
	.quad	FINALIZE$_$SYSUTILS
	.quad	INIT$_$TYPINFO
	.quad	FINALIZE$_$TYPINFO
	.quad	INIT$_$CLASSES
	.quad	FINALIZE$_$CLASSES
	.quad	INIT$_$FPCADDS
	.quad	0,0
	.quad	FINALIZE$_$GETTEXT
	.quad	INIT$_$LAZUTF8
	.quad	FINALIZE$_$LAZUTF8
	.quad	INIT$_$FPIMAGE
	.quad	FINALIZE$_$FPIMAGE
	.quad	INIT$_$LAZ_AVL_TREE
	.quad	FINALIZE$_$LAZ_AVL_TREE
	.quad	INIT$_$VARIANTS
	.quad	FINALIZE$_$VARIANTS
	.quad	INIT$_$COMMCTRL
	.quad	FINALIZE$_$COMMCTRL
	.quad	INIT$_$LAZFILEUTILS
	.quad	FINALIZE$_$LAZFILEUTILS
	.quad	0
	.quad	FINALIZE$_$LAZLOGGERBASE
	.quad	0
	.quad	FINALIZE$_$LAZTRACER
	.quad	INIT$_$LCLTYPE
	.quad	FINALIZE$_$LCLTYPE
	.quad	INIT$_$LCLPROC
	.quad	FINALIZE$_$LCLPROC
	.quad	INIT$_$GRAPHTYPE
	.quad	0
	.quad	INIT$_$LCLPLATFORMDEF
	.quad	FINALIZE$_$LCLPLATFORMDEF
	.quad	INIT$_$FPIMGCMN
	.quad	0
	.quad	INIT$_$FPREADBMP
	.quad	0
	.quad	INIT$_$FPWRITEBMP
	.quad	0
	.quad	INIT$_$DOS
	.quad	0
	.quad	INIT$_$FPREADPNG
	.quad	0
	.quad	INIT$_$FPWRITEPNG
	.quad	0
	.quad	INIT$_$FPREADTIFF
	.quad	0
	.quad	INIT$_$FPWRITETIFF
	.quad	0
	.quad	INIT$_$LCLVERSION
	.quad	0
	.quad	INIT$_$FPCANVAS
	.quad	FINALIZE$_$FPCANVAS
	.quad	INIT$_$FPREADPNM
	.quad	0
	.quad	INIT$_$FPWRITEPNM
	.quad	0
	.quad	INIT$_$FPREADJPEG
	.quad	0
	.quad	INIT$_$FPWRITEJPEG
	.quad	0
	.quad	INIT$_$FPREADTGA
	.quad	0
	.quad	INIT$_$FPWRITETGA
	.quad	0
	.quad	INIT$_$FPREADGIF
	.quad	0
	.quad	INIT$_$LRESOURCES
	.quad	FINALIZE$_$LRESOURCES
	.quad	INIT$_$LAZUTF16
	.quad	0
	.quad	INIT$_$FILEUTIL
	.quad	FINALIZE$_$FILEUTIL
	.quad	INIT$_$THEMES
	.quad	FINALIZE$_$THEMES
	.quad	INIT$_$LCLINTF
	.quad	FINALIZE$_$LCLINTF
	.quad	INIT$_$GRAPHICS
	.quad	FINALIZE$_$GRAPHICS
	.quad	INIT$_$INTFGRAPHICS
	.quad	0
	.quad	INIT$_$MULTIMON
	.quad	0
	.quad	INIT$_$UNICODEDATA
	.quad	FINALIZE$_$UNICODEDATA
	.quad	INIT$_$FPPIXLCANV
	.quad	FINALIZE$_$FPPIXLCANV
	.quad	0
	.quad	FINALIZE$_$WSLCLCLASSES
	.quad	INIT$_$RTTIUTILS
	.quad	FINALIZE$_$RTTIUTILS
	.quad	INIT$_$ACTNLIST
	.quad	0
	.quad	INIT$_$LAZLOGGER
	.quad	0,0
	.quad	FINALIZE$_$WSMENUS
	.quad	INIT$_$CLIPBRD
	.quad	FINALIZE$_$CLIPBRD
	.quad	INIT$_$FORMS
	.quad	FINALIZE$_$FORMS
	.quad	INIT$_$MENUS
	.quad	FINALIZE$_$MENUS
	.quad	INIT$_$IMGLIST
	.quad	0
	.quad	INIT$_$CONTROLS
	.quad	FINALIZE$_$CONTROLS
	.quad	INIT$_$BUTTONS
	.quad	FINALIZE$_$BUTTONS
	.quad	INIT$_$EXTCTRLS
	.quad	FINALIZE$_$EXTCTRLS
	.quad	INIT$_$LCLTASKDIALOG
	.quad	FINALIZE$_$LCLTASKDIALOG
	.quad	INIT$_$DIALOGS
	.quad	FINALIZE$_$DIALOGS
	.quad	INIT$_$COMCTRLS
	.quad	FINALIZE$_$COMCTRLS
	.quad	INIT$_$JSONSCANNER
	.quad	FINALIZE$_$JSONSCANNER
	.quad	INIT$_$FPJSON
	.quad	FINALIZE$_$FPJSON
	.quad	INIT$_$JSONPARSER
	.quad	FINALIZE$_$JSONPARSER
	.quad	INIT$_$LCONVENCODING
	.quad	FINALIZE$_$LCONVENCODING
	.quad	INIT$_$STRINGHASHLIST
	.quad	0
	.quad	INIT$_$WIN32EXTRA
	.quad	FINALIZE$_$WIN32EXTRA
	.quad	INIT$_$WIN32PROC
	.quad	FINALIZE$_$WIN32PROC
	.quad	INIT$_$CALCFORM
	.quad	FINALIZE$_$CALCFORM
	.quad	INIT$_$HTMLDEFS
	.quad	FINALIZE$_$HTMLDEFS
	.quad	INIT$_$MASKEDIT
	.quad	0
	.quad	INIT$_$LAZFILECACHE
	.quad	0,0
	.quad	FINALIZE$_$LAZ2_XMLUTILS
	.quad	INIT$_$LAZ2_DOM
	.quad	FINALIZE$_$LAZ2_DOM
	.quad	INIT$_$LAZ2_XMLREAD
	.quad	FINALIZE$_$LAZ2_XMLREAD
	.quad	INIT$_$SHELLCTRLS
	.quad	FINALIZE$_$SHELLCTRLS
	.quad	INIT$_$UXTHEME
	.quad	FINALIZE$_$UXTHEME
	.quad	INIT$_$WIN32WSDIALOGS
	.quad	FINALIZE$_$WIN32WSDIALOGS
	.quad	INIT$_$WIN32INT
	.quad	FINALIZE$_$WIN32INT
	.quad	INIT$_$INTERFACES
	.quad	FINALIZE$_$INTERFACES

.section .data.n_FPC_THREADVARTABLES,"aw"
	.balign 8
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	4
	.byte	0,0,0,0
	.quad	THREADVARLIST_$SYSTEM$indirect
	.quad	THREADVARLIST_$HEAPTRC$indirect
	.quad	THREADVARLIST_$CLASSES$indirect
	.quad	THREADVARLIST_$DOS$indirect

.section .rodata.n_FPC_RESOURCESTRINGTABLES,"aw"
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	19
	.quad	RESSTR_$STRUTILS_$$_START$indirect
	.quad	RESSTR_$STRUTILS_$$_END$indirect
	.quad	RESSTR_$RTLCONSTS_$$_START$indirect
	.quad	RESSTR_$RTLCONSTS_$$_END$indirect
	.quad	RESSTR_$TYPINFO_$$_START$indirect
	.quad	RESSTR_$TYPINFO_$$_END$indirect
	.quad	RESSTR_$SYSCONST_$$_START$indirect
	.quad	RESSTR_$SYSCONST_$$_END$indirect
	.quad	RESSTR_$MATH_$$_START$indirect
	.quad	RESSTR_$MATH_$$_END$indirect
	.quad	RESSTR_$LCLSTRCONSTS_$$_START$indirect
	.quad	RESSTR_$LCLSTRCONSTS_$$_END$indirect
	.quad	RESSTR_$LAZUTILSSTRCONSTS_$$_START$indirect
	.quad	RESSTR_$LAZUTILSSTRCONSTS_$$_END$indirect
	.quad	RESSTR_$VARIANTS_$$_START$indirect
	.quad	RESSTR_$VARIANTS_$$_END$indirect
	.quad	RESSTR_$ZSTREAM_$$_START$indirect
	.quad	RESSTR_$ZSTREAM_$$_END$indirect
	.quad	RESSTR_$ZBASE_$$_START$indirect
	.quad	RESSTR_$ZBASE_$$_END$indirect
	.quad	RESSTR_$CONTNRS_$$_START$indirect
	.quad	RESSTR_$CONTNRS_$$_END$indirect
	.quad	RESSTR_$SYNCOBJS_$$_START$indirect
	.quad	RESSTR_$SYNCOBJS_$$_END$indirect
	.quad	RESSTR_$PROCESS_$$_START$indirect
	.quad	RESSTR_$PROCESS_$$_END$indirect
	.quad	RESSTR_$UNICODEDATA_$$_START$indirect
	.quad	RESSTR_$UNICODEDATA_$$_END$indirect
	.quad	RESSTR_$CUSTAPP_$$_START$indirect
	.quad	RESSTR_$CUSTAPP_$$_END$indirect
	.quad	RESSTR_$JSONSCANNER_$$_START$indirect
	.quad	RESSTR_$JSONSCANNER_$$_END$indirect
	.quad	RESSTR_$JSONPARSER_$$_START$indirect
	.quad	RESSTR_$JSONPARSER_$$_END$indirect
	.quad	RESSTR_$FPJSON_$$_START$indirect
	.quad	RESSTR_$FPJSON_$$_END$indirect
	.quad	RESSTR_$JSONREADER_$$_START$indirect
	.quad	RESSTR_$JSONREADER_$$_END$indirect

.section .data.n_FPC_WIDEINITTABLES,"aw"
	.balign 8
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	2
	.quad	WIDEINITS_$LCLINTF
	.quad	WIDEINITS_$WIN32WSEXTDLGS

.section .data.n_FPC_RESSTRINITTABLES,"aw"
	.balign 8
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0

.section .fpc.n_version,"aw"
	.balign 32
__fpc_ident:
	.ascii	"FPC 3.3.1 [2022/08/06] for x86_64 - Win64"

.section .data.n___heapsize,"aw"
	.balign 8
.globl	__heapsize
__heapsize:
	.quad	0

.section .data.n___fpc_valgrind,"aw"
	.balign 8
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
# End asmlist al_globals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc5:
	.long	.Lc7-.Lc6
.Lc6:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc7:
	.long	.Lc9-.Lc8
.Lc8:
	.secrel32	.Lc5
	.quad	.Lc2
	.quad	.Lc1-.Lc2
	.byte	7
	.uleb128	16
	.byte	2
	.byte	.Lc3-.Lc2
	.byte	14
	.uleb128	16
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	2
	.byte	.Lc4-.Lc3
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc9:
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info

.section .debug_info
.Ldebug_info0:
	.long	.Ledebug_info0-.Lf2
.Lf2:
	.short	2
	.secrel32	.Ldebug_abbrev0
	.byte	8
	.uleb128	1
	.ascii	"project1.ppr\000"
	.ascii	"Free Pascal 3.3.1 2022/08/06\000"
	.ascii	"C:/Users/Janusz/Documents/Typhon/edytor/\000"
	.byte	9
	.byte	3
	.secrel32	.Ldebug_line0
	.quad	DEBUGSTART_$P$PROJECT1
	.quad	DEBUGEND_$P$PROJECT1
# Syms - Begin Staticsymtable
# Symbol SYSTEM
# Symbol HEAPTRC
# Symbol LNFODWRF
# Symbol FPINTRES
# Symbol OBJPAS
# Symbol INTERFACES
# Symbol FORMS
# Symbol UNIT1
# Symbol UNIT2
# Symbol UNIT3
# Symbol PROJECT1
# Symbol main
# Symbol SYSINIT
# Syms - End Staticsymtable
# Procdef $main; Register;
	.uleb128	2
	.ascii	"main\000"
	.byte	1
	.byte	65
	.byte	1
	.quad	main
	.quad	.Lt1
	.byte	0
# Defs - Begin unit SYSTEM has index 1
# Defs - End unit SYSTEM has index 1
# Defs - Begin unit HEAPTRC has index 2
# Defs - End unit HEAPTRC has index 2
# Defs - Begin unit STRINGS has index 5
# Defs - End unit STRINGS has index 5
# Defs - Begin unit OBJPAS has index 7
# Defs - End unit OBJPAS has index 7
# Defs - Begin unit WINDOWS has index 6
# Defs - End unit WINDOWS has index 6
# Defs - Begin unit EXEINFO has index 4
# Defs - End unit EXEINFO has index 4
# Defs - Begin unit LNFODWRF has index 3
# Defs - End unit LNFODWRF has index 3
# Defs - Begin unit FPINTRES has index 8
# Defs - End unit FPINTRES has index 8
# Defs - Begin unit RTLCONSTS has index 20
# Defs - End unit RTLCONSTS has index 20
# Defs - Begin unit SYSCONST has index 24
# Defs - End unit SYSCONST has index 24
# Defs - Begin unit WINDIRS has index 25
# Defs - End unit WINDIRS has index 25
# Defs - Begin unit SYSUTILS has index 18
# Defs - End unit SYSUTILS has index 18
# Defs - Begin unit MATH has index 26
# Defs - End unit MATH has index 26
# Defs - Begin unit TYPES has index 21
# Defs - End unit TYPES has index 21
# Defs - Begin unit SORTBASE has index 22
# Defs - End unit SORTBASE has index 22
# Defs - Begin unit TYPINFO has index 23
# Defs - End unit TYPINFO has index 23
# Defs - Begin unit CLASSES has index 17
# Defs - End unit CLASSES has index 17
# Defs - Begin unit FPCADDS has index 16
# Defs - End unit FPCADDS has index 16
# Defs - Begin unit STRUTILS has index 19
# Defs - End unit STRUTILS has index 19
# Defs - Begin unit GETTEXT has index 27
# Defs - End unit GETTEXT has index 27
# Defs - Begin unit LAZUTF8 has index 14
# Defs - End unit LAZUTF8 has index 14
# Defs - Begin unit FPIMAGE has index 28
# Defs - End unit FPIMAGE has index 28
# Defs - Begin unit LAZ_AVL_TREE has index 40
# Defs - End unit LAZ_AVL_TREE has index 40
# Defs - Begin unit LAZUTILSSTRCONSTS has index 45
# Defs - End unit LAZUTILSSTRCONSTS has index 45
# Defs - Begin unit VARUTILS has index 52
# Defs - End unit VARUTILS has index 52
# Defs - Begin unit VARIANTS has index 50
# Defs - End unit VARIANTS has index 50
# Defs - Begin unit CTYPES has index 51
# Defs - End unit CTYPES has index 51
# Defs - Begin unit ACTIVEX has index 47
# Defs - End unit ACTIVEX has index 47
# Defs - Begin unit SHELLAPI has index 48
# Defs - End unit SHELLAPI has index 48
# Defs - Begin unit COMMCTRL has index 49
# Defs - End unit COMMCTRL has index 49
# Defs - Begin unit SHLOBJ has index 46
# Defs - End unit SHLOBJ has index 46
# Defs - Begin unit LAZFILEUTILS has index 41
# Defs - End unit LAZFILEUTILS has index 41
# Defs - Begin unit LAZUTILITIES has index 36
# Defs - End unit LAZUTILITIES has index 36
# Defs - Begin unit LAZMETHODLIST has index 42
# Defs - End unit LAZMETHODLIST has index 42
# Defs - Begin unit LAZCLASSES has index 53
# Defs - End unit LAZCLASSES has index 53
# Defs - Begin unit LAZLOGGERBASE has index 37
# Defs - End unit LAZLOGGERBASE has index 37
# Defs - Begin unit LAZTRACER has index 43
# Defs - End unit LAZTRACER has index 43
# Defs - Begin unit LCLSTRCONSTS has index 44
# Defs - End unit LCLSTRCONSTS has index 44
# Defs - Begin unit SYSTEM.UITYPES has index 54
# Defs - End unit SYSTEM.UITYPES has index 54
# Defs - Begin unit LCLTYPE has index 30
# Defs - End unit LCLTYPE has index 30
# Defs - Begin unit LCLPROC has index 29
# Defs - End unit LCLPROC has index 29
# Defs - Begin unit GRAPHTYPE has index 38
# Defs - End unit GRAPHTYPE has index 38
# Defs - Begin unit MESSAGES has index 55
# Defs - End unit MESSAGES has index 55
# Defs - Begin unit LMESSAGES has index 31
# Defs - End unit LMESSAGES has index 31
# Defs - Begin unit LCLPLATFORMDEF has index 32
# Defs - End unit LCLPLATFORMDEF has index 32
# Defs - Begin unit FPIMGCMN has index 66
# Defs - End unit FPIMGCMN has index 66
# Defs - Begin unit BMPCOMN has index 58
# Defs - End unit BMPCOMN has index 58
# Defs - Begin unit FPREADBMP has index 56
# Defs - End unit FPREADBMP has index 56
# Defs - Begin unit FPWRITEBMP has index 57
# Defs - End unit FPWRITEBMP has index 57
# Defs - Begin unit PNGCOMN has index 67
# Defs - End unit PNGCOMN has index 67
# Defs - Begin unit ZBASE has index 69
# Defs - End unit ZBASE has index 69
# Defs - Begin unit DOS has index 71
# Defs - End unit DOS has index 71
# Defs - Begin unit CRC has index 72
# Defs - End unit CRC has index 72
# Defs - Begin unit TREES has index 75
# Defs - End unit TREES has index 75
# Defs - Begin unit ADLER has index 76
# Defs - End unit ADLER has index 76
# Defs - Begin unit ZDEFLATE has index 73
# Defs - End unit ZDEFLATE has index 73
# Defs - Begin unit INFUTIL has index 78
# Defs - End unit INFUTIL has index 78
# Defs - Begin unit INFFAST has index 81
# Defs - End unit INFFAST has index 81
# Defs - Begin unit INFCODES has index 79
# Defs - End unit INFCODES has index 79
# Defs - Begin unit INFTREES has index 80
# Defs - End unit INFTREES has index 80
# Defs - Begin unit INFBLOCK has index 77
# Defs - End unit INFBLOCK has index 77
# Defs - Begin unit ZINFLATE has index 74
# Defs - End unit ZINFLATE has index 74
# Defs - Begin unit GZIO has index 70
# Defs - End unit GZIO has index 70
# Defs - Begin unit ZSTREAM has index 68
# Defs - End unit ZSTREAM has index 68
# Defs - Begin unit FPREADPNG has index 59
# Defs - End unit FPREADPNG has index 59
# Defs - Begin unit FPWRITEPNG has index 60
# Defs - End unit FPWRITEPNG has index 60
# Defs - Begin unit FPTIFFCMN has index 63
# Defs - End unit FPTIFFCMN has index 63
# Defs - Begin unit FPREADTIFF has index 61
# Defs - End unit FPREADTIFF has index 61
# Defs - Begin unit FPWRITETIFF has index 62
# Defs - End unit FPWRITETIFF has index 62
# Defs - Begin unit LAZVERSION has index 82
# Defs - End unit LAZVERSION has index 82
# Defs - Begin unit LCLVERSION has index 64
# Defs - End unit LCLVERSION has index 64
# Defs - Begin unit ICNSTYPES has index 65
# Defs - End unit ICNSTYPES has index 65
# Defs - Begin unit CONTNRS has index 85
# Defs - End unit CONTNRS has index 85
# Defs - Begin unit CLIPPING has index 97
# Defs - End unit CLIPPING has index 97
# Defs - Begin unit FPCANVAS has index 86
# Defs - End unit FPCANVAS has index 86
# Defs - Begin unit FPREADPNM has index 87
# Defs - End unit FPREADPNM has index 87
# Defs - Begin unit FPWRITEPNM has index 88
# Defs - End unit FPWRITEPNM has index 88
# Defs - Begin unit JDEFERR has index 103
# Defs - End unit JDEFERR has index 103
# Defs - Begin unit JMORECFG has index 102
# Defs - End unit JMORECFG has index 102
# Defs - Begin unit JPEGLIB has index 98
# Defs - End unit JPEGLIB has index 98
# Defs - Begin unit JINCLUDE has index 104
# Defs - End unit JINCLUDE has index 104
# Defs - Begin unit JCOMAPI has index 109
# Defs - End unit JCOMAPI has index 109
# Defs - Begin unit JERROR has index 105
# Defs - End unit JERROR has index 105
# Defs - Begin unit JUTILS has index 110
# Defs - End unit JUTILS has index 110
# Defs - Begin unit JMEMNOBS has index 111
# Defs - End unit JMEMNOBS has index 111
# Defs - Begin unit JMEMMGR has index 106
# Defs - End unit JMEMMGR has index 106
# Defs - Begin unit JDMARKER has index 107
# Defs - End unit JDMARKER has index 107
# Defs - Begin unit JDINPUT has index 108
# Defs - End unit JDINPUT has index 108
# Defs - Begin unit JDAPIMIN has index 99
# Defs - End unit JDAPIMIN has index 99
# Defs - Begin unit JDATASRC has index 100
# Defs - End unit JDATASRC has index 100
# Defs - Begin unit JDCOLOR has index 113
# Defs - End unit JDCOLOR has index 113
# Defs - Begin unit JDSAMPLE has index 114
# Defs - End unit JDSAMPLE has index 114
# Defs - Begin unit JDPOSTCT has index 115
# Defs - End unit JDPOSTCT has index 115
# Defs - Begin unit JDCT has index 124
# Defs - End unit JDCT has index 124
# Defs - Begin unit JIDCTFST has index 125
# Defs - End unit JIDCTFST has index 125
# Defs - Begin unit JIDCTINT has index 126
# Defs - End unit JIDCTINT has index 126
# Defs - Begin unit JIDCTFLT has index 127
# Defs - End unit JIDCTFLT has index 127
# Defs - Begin unit JIDCTRED has index 128
# Defs - End unit JIDCTRED has index 128
# Defs - Begin unit JDDCTMGR has index 116
# Defs - End unit JDDCTMGR has index 116
# Defs - Begin unit JDHUFF has index 118
# Defs - End unit JDHUFF has index 118
# Defs - Begin unit JDPHUFF has index 117
# Defs - End unit JDPHUFF has index 117
# Defs - Begin unit JDCOEFCT has index 119
# Defs - End unit JDCOEFCT has index 119
# Defs - Begin unit JQUANT2 has index 122
# Defs - End unit JQUANT2 has index 122
# Defs - Begin unit JDMAINCT has index 120
# Defs - End unit JDMAINCT has index 120
# Defs - Begin unit JQUANT1 has index 121
# Defs - End unit JQUANT1 has index 121
# Defs - Begin unit JDMERGE has index 123
# Defs - End unit JDMERGE has index 123
# Defs - Begin unit JDMASTER has index 112
# Defs - End unit JDMASTER has index 112
# Defs - Begin unit JDAPISTD has index 101
# Defs - End unit JDAPISTD has index 101
# Defs - Begin unit FPREADJPEG has index 89
# Defs - End unit FPREADJPEG has index 89
# Defs - Begin unit JCMARKER has index 134
# Defs - End unit JCMARKER has index 134
# Defs - Begin unit JCAPIMIN has index 130
# Defs - End unit JCAPIMIN has index 130
# Defs - Begin unit JCHUFF has index 136
# Defs - End unit JCHUFF has index 136
# Defs - Begin unit JCPHUFF has index 135
# Defs - End unit JCPHUFF has index 135
# Defs - Begin unit JCMASTER has index 137
# Defs - End unit JCMASTER has index 137
# Defs - Begin unit JCCOLOR has index 138
# Defs - End unit JCCOLOR has index 138
# Defs - Begin unit JCSAMPLE has index 139
# Defs - End unit JCSAMPLE has index 139
# Defs - Begin unit JCPREPCT has index 140
# Defs - End unit JCPREPCT has index 140
# Defs - Begin unit JFDCTINT has index 144
# Defs - End unit JFDCTINT has index 144
# Defs - Begin unit JFDCTFST has index 145
# Defs - End unit JFDCTFST has index 145
# Defs - Begin unit JFDCTFLT has index 146
# Defs - End unit JFDCTFLT has index 146
# Defs - Begin unit JCDCTMGR has index 141
# Defs - End unit JCDCTMGR has index 141
# Defs - Begin unit JCCOEFCT has index 142
# Defs - End unit JCCOEFCT has index 142
# Defs - Begin unit JCMAINCT has index 143
# Defs - End unit JCMAINCT has index 143
# Defs - Begin unit JCINIT has index 133
# Defs - End unit JCINIT has index 133
# Defs - Begin unit JCAPISTD has index 129
# Defs - End unit JCAPISTD has index 129
# Defs - Begin unit JDATADST has index 131
# Defs - End unit JDATADST has index 131
# Defs - Begin unit JCPARAM has index 132
# Defs - End unit JCPARAM has index 132
# Defs - Begin unit FPWRITEJPEG has index 90
# Defs - End unit FPWRITEJPEG has index 90
# Defs - Begin unit TARGACMN has index 147
# Defs - End unit TARGACMN has index 147
# Defs - Begin unit FPREADTGA has index 91
# Defs - End unit FPREADTGA has index 91
# Defs - Begin unit FPWRITETGA has index 92
# Defs - End unit FPWRITETGA has index 92
# Defs - Begin unit FPREADGIF has index 93
# Defs - End unit FPREADGIF has index 93
# Defs - Begin unit LAZDBGLOG has index 151
# Defs - End unit LAZDBGLOG has index 151
# Defs - Begin unit AVGLVLTREE has index 150
# Defs - End unit AVGLVLTREE has index 150
# Defs - Begin unit LAZCONFIGSTORAGE has index 148
# Defs - End unit LAZCONFIGSTORAGE has index 148
# Defs - Begin unit DYNQUEUE has index 149
# Defs - End unit DYNQUEUE has index 149
# Defs - Begin unit LRESOURCES has index 94
# Defs - End unit LRESOURCES has index 94
# Defs - Begin unit WSREFERENCES has index 96
# Defs - End unit WSREFERENCES has index 96
# Defs - Begin unit SYNCOBJS has index 152
# Defs - End unit SYNCOBJS has index 152
# Defs - Begin unit LCLRESCACHE has index 95
# Defs - End unit LCLRESCACHE has index 95
# Defs - Begin unit GRAPHMATH has index 39
# Defs - End unit GRAPHMATH has index 39
# Defs - Begin unit LAZUTF16 has index 153
# Defs - End unit LAZUTF16 has index 153
# Defs - Begin unit MASKS has index 160
# Defs - End unit MASKS has index 160
# Defs - Begin unit FILEUTIL has index 154
# Defs - End unit FILEUTIL has index 154
# Defs - Begin unit PIPES has index 162
# Defs - End unit PIPES has index 162
# Defs - Begin unit PROCESS has index 161
# Defs - End unit PROCESS has index 161
# Defs - Begin unit UTF8PROCESS has index 155
# Defs - End unit UTF8PROCESS has index 155
# Defs - Begin unit LAZSYSUTILS has index 156
# Defs - End unit LAZSYSUTILS has index 156
# Defs - Begin unit MAPS has index 157
# Defs - End unit MAPS has index 157
# Defs - Begin unit LCLINTF has index 84
# Defs - End unit LCLINTF has index 84
# Defs - Begin unit GRAPHICS has index 83
# Defs - End unit GRAPHICS has index 83
# Defs - Begin unit INTFGRAPHICS has index 33
# Defs - End unit INTFGRAPHICS has index 33
# Defs - Begin unit TMSCHEMA has index 158
# Defs - End unit TMSCHEMA has index 158
# Defs - Begin unit THEMES has index 34
# Defs - End unit THEMES has index 34
# Defs - Begin unit FGL has index 159
# Defs - End unit FGL has index 159
# Defs - Begin unit INTEGERLIST has index 35
# Defs - End unit INTEGERLIST has index 35
# Defs - Begin unit INTERFACEBASE has index 15
# Defs - End unit INTERFACEBASE has index 15
# Defs - Begin unit MULTIMON has index 164
# Defs - End unit MULTIMON has index 164
# Defs - Begin unit UNICODEDATA has index 175
# Defs - End unit UNICODEDATA has index 175
# Defs - Begin unit CHARACTER has index 165
# Defs - End unit CHARACTER has index 165
# Defs - Begin unit PIXTOOLS has index 183
# Defs - End unit PIXTOOLS has index 183
# Defs - Begin unit ELLIPSES has index 184
# Defs - End unit ELLIPSES has index 184
# Defs - Begin unit FPPIXLCANV has index 182
# Defs - End unit FPPIXLCANV has index 182
# Defs - Begin unit FPIMGCANV has index 181
# Defs - End unit FPIMGCANV has index 181
# Defs - Begin unit WSLCLCLASSES has index 185
# Defs - End unit WSLCLCLASSES has index 185
# Defs - Begin unit LCLCLASSES has index 179
# Defs - End unit LCLCLASSES has index 179
# Defs - Begin unit ACTNLIST has index 178
# Defs - End unit ACTNLIST has index 178
# Defs - Begin unit WSFACTORY has index 188
# Defs - End unit WSFACTORY has index 188
# Defs - Begin unit LAZSTRINGUTILS has index 192
# Defs - End unit LAZSTRINGUTILS has index 192
# Defs - Begin unit LAZLOGGER has index 191
# Defs - End unit LAZLOGGER has index 191
# Defs - Begin unit WSMENUS has index 190
# Defs - End unit WSMENUS has index 190
# Defs - Begin unit SINGLEINSTANCE has index 197
# Defs - End unit SINGLEINSTANCE has index 197
# Defs - Begin unit CUSTAPP has index 193
# Defs - End unit CUSTAPP has index 193
# Defs - Begin unit CUSTOMTIMER has index 194
# Defs - End unit CUSTOMTIMER has index 194
# Defs - Begin unit FASTHTMLPARSER has index 198
# Defs - End unit FASTHTMLPARSER has index 198
# Defs - Begin unit CLIPBRD has index 195
# Defs - End unit CLIPBRD has index 195
# Defs - Begin unit HELPINTFS has index 196
# Defs - End unit HELPINTFS has index 196
# Defs - Begin unit WSCONTROLS has index 199
# Defs - End unit WSCONTROLS has index 199
# Defs - Begin unit WSFORMS has index 200
# Defs - End unit WSFORMS has index 200
# Defs - Begin unit FORMS has index 10
# Defs - End unit FORMS has index 10
# Defs - Begin unit MENUS has index 170
# Defs - End unit MENUS has index 170
# Defs - Begin unit WSPROC has index 187
# Defs - End unit WSPROC has index 187
# Defs - Begin unit WSIMGLIST has index 186
# Defs - End unit WSIMGLIST has index 186
# Defs - Begin unit IMGLIST has index 176
# Defs - End unit IMGLIST has index 176
# Defs - Begin unit RTTIUTILS has index 189
# Defs - End unit RTTIUTILS has index 189
# Defs - Begin unit PROPERTYSTORAGE has index 177
# Defs - End unit PROPERTYSTORAGE has index 177
# Defs - Begin unit UITYPES has index 180
# Defs - End unit UITYPES has index 180
# Defs - Begin unit CONTROLS has index 166
# Defs - End unit CONTROLS has index 166
# Defs - Begin unit TEXTSTRINGS has index 202
# Defs - End unit TEXTSTRINGS has index 202
# Defs - Begin unit EXTENDEDSTRINGS has index 203
# Defs - End unit EXTENDEDSTRINGS has index 203
# Defs - Begin unit WSSTDCTRLS has index 204
# Defs - End unit WSSTDCTRLS has index 204
# Defs - Begin unit STDCTRLS has index 169
# Defs - End unit STDCTRLS has index 169
# Defs - Begin unit IMAGELISTCACHE has index 201
# Defs - End unit IMAGELISTCACHE has index 201
# Defs - Begin unit WSBUTTONS has index 205
# Defs - End unit WSBUTTONS has index 205
# Defs - Begin unit BUTTONS has index 167
# Defs - End unit BUTTONS has index 167
# Defs - Begin unit POPUPNOTIFIER has index 209
# Defs - End unit POPUPNOTIFIER has index 209
# Defs - Begin unit WSEXTCTRLS has index 210
# Defs - End unit WSEXTCTRLS has index 210
# Defs - Begin unit EXTCTRLS has index 207
# Defs - End unit EXTCTRLS has index 207
# Defs - Begin unit BUTTONPANEL has index 206
# Defs - End unit BUTTONPANEL has index 206
# Defs - Begin unit LCLTASKDIALOG has index 208
# Defs - End unit LCLTASKDIALOG has index 208
# Defs - Begin unit WSDIALOGS has index 211
# Defs - End unit WSDIALOGS has index 211
# Defs - Begin unit DIALOGS has index 168
# Defs - End unit DIALOGS has index 168
# Defs - Begin unit TOOLWIN has index 212
# Defs - End unit TOOLWIN has index 212
# Defs - Begin unit WSTOOLWIN has index 214
# Defs - End unit WSTOOLWIN has index 214
# Defs - Begin unit WSCOMCTRLS has index 213
# Defs - End unit WSCOMCTRLS has index 213
# Defs - Begin unit COMCTRLS has index 171
# Defs - End unit COMCTRLS has index 171
# Defs - Begin unit WIN32DEF has index 172
# Defs - End unit WIN32DEF has index 172
# Defs - Begin unit WSSPIN has index 215
# Defs - End unit WSSPIN has index 215
# Defs - Begin unit SPIN has index 173
# Defs - End unit SPIN has index 173
# Defs - Begin unit JSONSCANNER has index 216
# Defs - End unit JSONSCANNER has index 216
# Defs - Begin unit FPJSON has index 218
# Defs - End unit FPJSON has index 218
# Defs - Begin unit JSONREADER has index 221
# Defs - End unit JSONREADER has index 221
# Defs - Begin unit JSONPARSER has index 217
# Defs - End unit JSONPARSER has index 217
# Defs - Begin unit CODEPAGESCOMMON has index 222
# Defs - End unit CODEPAGESCOMMON has index 222
# Defs - Begin unit CODEPAGESASIAN has index 223
# Defs - End unit CODEPAGESASIAN has index 223
# Defs - Begin unit LCONVENCODING has index 219
# Defs - End unit LCONVENCODING has index 219
# Defs - Begin unit STRINGHASHLIST has index 220
# Defs - End unit STRINGHASHLIST has index 220
# Defs - Begin unit TRANSLATIONS has index 174
# Defs - End unit TRANSLATIONS has index 174
# Defs - Begin unit WIN32EXTRA has index 232
# Defs - End unit WIN32EXTRA has index 232
# Defs - Begin unit LCLMESSAGEGLUE has index 233
# Defs - End unit LCLMESSAGEGLUE has index 233
# Defs - Begin unit WIN32PROC has index 224
# Defs - End unit WIN32PROC has index 224
# Defs - Begin unit WSCALENDAR has index 239
# Defs - End unit WSCALENDAR has index 239
# Defs - Begin unit CALENDAR has index 234
# Defs - End unit CALENDAR has index 234
# Defs - Begin unit WSEXTDLGS has index 241
# Defs - End unit WSEXTDLGS has index 241
# Defs - Begin unit CALCFORM has index 240
# Defs - End unit CALCFORM has index 240
# Defs - Begin unit EXTDLGS has index 235
# Defs - End unit EXTDLGS has index 235
# Defs - Begin unit WSCHECKLST has index 242
# Defs - End unit WSCHECKLST has index 242
# Defs - Begin unit CHECKLST has index 236
# Defs - End unit CHECKLST has index 236
# Defs - Begin unit HTMLDEFS has index 243
# Defs - End unit HTMLDEFS has index 243
# Defs - Begin unit MASKEDIT has index 244
# Defs - End unit MASKEDIT has index 244
# Defs - Begin unit DYNAMICARRAY has index 245
# Defs - End unit DYNAMICARRAY has index 245
# Defs - Begin unit LAZFILECACHE has index 249
# Defs - End unit LAZFILECACHE has index 249
# Defs - Begin unit LAZ2_XMLUTILS has index 253
# Defs - End unit LAZ2_XMLUTILS has index 253
# Defs - Begin unit LAZ2_DOM has index 250
# Defs - End unit LAZ2_DOM has index 250
# Defs - Begin unit URIPARSER has index 254
# Defs - End unit URIPARSER has index 254
# Defs - Begin unit LAZ2_XMLREAD has index 251
# Defs - End unit LAZ2_XMLREAD has index 251
# Defs - Begin unit LAZ2_XMLWRITE has index 252
# Defs - End unit LAZ2_XMLWRITE has index 252
# Defs - Begin unit LAZ2_XMLCFG has index 246
# Defs - End unit LAZ2_XMLCFG has index 246
# Defs - Begin unit LCSVUTILS has index 247
# Defs - End unit LCSVUTILS has index 247
# Defs - Begin unit IMM has index 248
# Defs - End unit IMM has index 248
# Defs - Begin unit WSGRIDS has index 255
# Defs - End unit WSGRIDS has index 255
# Defs - Begin unit GRIDS has index 237
# Defs - End unit GRIDS has index 237
# Defs - Begin unit WSSHELLCTRLS has index 256
# Defs - End unit WSSHELLCTRLS has index 256
# Defs - Begin unit SHELLCTRLS has index 238
# Defs - End unit SHELLCTRLS has index 238
# Defs - Begin unit WIN32WSCONTROLS has index 226
# Defs - End unit WIN32WSCONTROLS has index 226
# Defs - Begin unit WIN32WSIMGLIST has index 264
# Defs - End unit WIN32WSIMGLIST has index 264
# Defs - Begin unit UXTHEME has index 267
# Defs - End unit UXTHEME has index 267
# Defs - Begin unit WIN32THEMES has index 231
# Defs - End unit WIN32THEMES has index 231
# Defs - Begin unit WIN32WSBUTTONS has index 227
# Defs - End unit WIN32WSBUTTONS has index 227
# Defs - Begin unit WIN32WSCALENDAR has index 257
# Defs - End unit WIN32WSCALENDAR has index 257
# Defs - Begin unit WIN32WSSTDCTRLS has index 229
# Defs - End unit WIN32WSSTDCTRLS has index 229
# Defs - Begin unit WIN32WSCHECKLST has index 258
# Defs - End unit WIN32WSCHECKLST has index 258
# Defs - Begin unit WIN32WSCOMCTRLS has index 259
# Defs - End unit WIN32WSCOMCTRLS has index 259
# Defs - Begin unit COMMDLG has index 268
# Defs - End unit COMMDLG has index 268
# Defs - Begin unit WIN32WSDIALOGS has index 230
# Defs - End unit WIN32WSDIALOGS has index 230
# Defs - Begin unit WIN32WSEXTCTRLS has index 260
# Defs - End unit WIN32WSEXTCTRLS has index 260
# Defs - Begin unit WIN32WSEXTDLGS has index 261
# Defs - End unit WIN32WSEXTDLGS has index 261
# Defs - Begin unit WIN32WSFORMS has index 262
# Defs - End unit WIN32WSFORMS has index 262
# Defs - Begin unit WIN32WSGRIDS has index 263
# Defs - End unit WIN32WSGRIDS has index 263
# Defs - Begin unit WIN32WSMENUS has index 228
# Defs - End unit WIN32WSMENUS has index 228
# Defs - Begin unit WIN32WSSHELLCTRLS has index 265
# Defs - End unit WIN32WSSHELLCTRLS has index 265
# Defs - Begin unit WIN32WSSPIN has index 266
# Defs - End unit WIN32WSSPIN has index 266
# Defs - Begin unit WIN32WSFACTORY has index 225
# Defs - End unit WIN32WSFACTORY has index 225
# Defs - Begin unit WIN32INT has index 163
# Defs - End unit WIN32INT has index 163
# Defs - Begin unit INTERFACES has index 9
# Defs - End unit INTERFACES has index 9
# Defs - Begin unit UNIT2 has index 12
# Defs - End unit UNIT2 has index 12
# Defs - Begin unit UNIT3 has index 13
# Defs - End unit UNIT3 has index 13
# Defs - Begin unit UNIT1 has index 11
# Defs - End unit UNIT1 has index 11
# Defs - Begin unit SYSINIT has index 269
# Defs - End unit SYSINIT has index 269
# Defs - Begin Staticsymtable
# Defs - End Staticsymtable
	.byte	0
.Ledebug_info0:
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev

.section .debug_abbrev
# Abbrev 1
	.uleb128	1
	.uleb128	17
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	11
	.uleb128	66
	.uleb128	11
	.uleb128	16
	.uleb128	6
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
# Abbrev 2
	.uleb128	2
	.uleb128	46
	.byte	1
	.uleb128	3
	.uleb128	8
	.uleb128	39
	.uleb128	12
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.byte	0
	.byte	0
	.byte	0
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line

.section .debug_line
# === header start ===
	.long	.Ledebug_line0-.Lf3
.Lf3:
	.short	2
	.long	.Lehdebug_line0-.Lf4
.Lf4:
	.byte	1
	.byte	1
	.byte	1
	.byte	255
	.byte	13
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
# include_directories
	.byte	0
# file_names
	.ascii	"project1.ppr\000"
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.byte	0
.Lehdebug_line0:
# === header end ===
# function: main
# function: PASCALMAIN
# [18:1]
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll1
	.byte	5
	.uleb128	1
	.byte	29
# [19:3]
	.byte	2
	.uleb128	.Ll2-.Ll1
	.byte	5
	.uleb128	3
	.byte	13
# [20:21]
	.byte	2
	.uleb128	.Ll3-.Ll2
	.byte	5
	.uleb128	21
	.byte	13
# [21:3]
	.byte	2
	.uleb128	.Ll4-.Ll3
	.byte	5
	.uleb128	3
	.byte	13
# [22:3]
	.byte	2
	.uleb128	.Ll5-.Ll4
	.byte	13
# [23:3]
	.byte	2
	.uleb128	.Ll6-.Ll5
	.byte	13
# [24:3]
	.byte	2
	.uleb128	.Ll7-.Ll6
	.byte	13
# [25:3]
	.byte	2
	.uleb128	.Ll8-.Ll7
	.byte	13
# [26:1]
	.byte	2
	.uleb128	.Ll9-.Ll8
	.byte	5
	.uleb128	1
	.byte	13
	.byte	0
	.uleb128	9
	.byte	2
	.quad	.Ll10
	.byte	0
	.byte	1
	.byte	1
# ###################
.Ledebug_line0:
# End asmlist al_dwarf_line
# Begin asmlist al_dwarf_aranges

.section .debug_aranges
	.long	.Learanges0-.Lf1
.Lf1:
	.short	2
	.secrel32	.Ldebug_info0
	.byte	8
	.byte	0
	.long	0
	.quad	main
	.quad	.Lt1-main
	.quad	0
	.quad	0
.Learanges0:
# End asmlist al_dwarf_aranges
# Begin asmlist al_dwarf_ranges

.section .debug_ranges
# End asmlist al_dwarf_ranges
# Begin asmlist al_end

.section .text.z_DEBUGEND_$P$PROJECT1,"ax"
.globl	DEBUGEND_$P$PROJECT1
DEBUGEND_$P$PROJECT1:
# End asmlist al_end

