.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,17,1,18,1,64,10,0,0
	.byte 3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0,11,11,62,11,3,8,0
	.byte 0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73,19,56,10,0,0,7,22
	.byte 0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13,0,0,10,57,1,3,8
	.byte 0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13,15,0,73,19,0,0,14
	.byte 16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0,0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 3.6.0 (mono-3.6.0-branch/0d48422 Tue Jul  1 16:56:06 EDT 2014)"
	.asciz "Example.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14
	.align 2
Lcie0_end:
.text
	.align 3
methods:
	.space 16
.text
	.align 2
	.no_dead_strip _Example_Application__ctor
_Example_Application__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 4
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,8,0,157,229,0,224,157,229,80,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232
	.byte 128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip _Example_Application_Main_string__
_Example_Application_Main_string__:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 8
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,0,0,160,227,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 12
	.byte 0,0,159,231,20,0,141,229,0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,16,0,157,229,20,32,157,229
	.byte 0,16,160,227
bl _p_1

	.byte 0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,196,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate__ctor
_Example_AppDelegate__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 16
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,8,0,157,229
bl _p_2

	.byte 0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_get_Window
_Example_AppDelegate_get_Window:

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,16,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 20
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,96,160,227,0,224,157,229,64,224,158,229
	.byte 0,0,94,227,0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 8,0,157,229,20,0,144,229,0,96,160,225,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,16,208,141,226
	.byte 64,1,189,232,128,128,189,232

Lme_3:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow
_Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 24
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 12,16,157,229,20,16,128,229,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232
	.byte 128,128,189,232

Lme_4:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary
_Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary:

	.byte 128,64,45,233,13,112,160,225,96,13,45,233,68,208,77,226,13,176,160,225,0,160,160,225,36,16,139,229,40,32,139,229
	.byte 0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 28
	.byte 0,0,159,231,8,0,139,229,8,224,155,229,0,224,158,229,12,224,139,229,0,0,160,227,16,0,203,229,8,224,155,229
	.byte 80,224,158,229,0,0,94,227,0,224,158,21,12,224,155,229,0,224,158,229,8,224,155,229,104,224,158,229,0,0,94,227
	.byte 0,224,158,21,8,224,155,229,120,224,158,229,0,0,94,227,0,224,158,21,10,0,160,225,8,224,155,229,140,224,158,229
	.byte 0,0,94,227,0,224,158,21
bl _p_3

	.byte 56,0,139,229,8,224,155,229,164,224,158,229,0,0,94,227,0,224,158,21,56,32,155,229,20,16,139,226,2,0,160,225
	.byte 0,32,146,229,15,224,160,225,76,240,146,229,8,224,155,229,204,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229
	.byte 0,0,0,234
	.long _mono_aot_Example_got - . + 32
	.byte 0,0,159,231
bl _p_4

	.byte 52,0,139,229,20,16,139,226,20,16,155,229,24,32,155,229,28,48,155,229,32,192,155,229,0,192,141,229
bl _p_5

	.byte 8,224,155,229,16,225,158,229,0,0,94,227,0,224,158,21,52,16,155,229,10,0,160,225,0,32,154,229,15,224,160,225
	.byte 96,240,146,229,8,224,155,229,52,225,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 36
	.byte 0,0,159,231,0,0,144,229,48,0,139,229,8,224,155,229,92,225,158,229,0,0,94,227,0,224,158,21,48,16,155,229
	.byte 1,0,160,225,0,16,145,229,15,224,160,225,76,240,145,229,0,96,160,225,8,224,155,229,132,225,158,229,0,0,94,227
	.byte 0,224,158,21,6,80,160,225,0,0,86,227,10,0,0,10,0,0,150,229,0,0,144,229,8,0,144,229,20,0,144,229
	.byte 0,16,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 40
	.byte 1,16,159,231,1,0,80,225,0,0,0,10,0,80,160,227,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 44
	.byte 0,0,159,231,0,80,128,229,8,224,155,229,224,225,158,229,0,0,94,227,0,224,158,21,10,0,160,225,8,224,155,229
	.byte 244,225,158,229,0,0,94,227,0,224,158,21,10,0,160,225,0,16,154,229,15,224,160,225,100,240,145,229,56,0,139,229
	.byte 8,224,155,229,24,226,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 44
	.byte 0,0,159,231,0,0,144,229,52,0,139,229,8,224,155,229,64,226,158,229,0,0,94,227,0,224,158,21,52,16,155,229
	.byte 56,32,155,229,2,0,160,225,0,32,146,229,15,224,160,225,228,240,146,229,8,224,155,229,104,226,158,229,0,0,94,227
	.byte 0,224,158,21,10,0,160,225,8,224,155,229,124,226,158,229,0,0,94,227,0,224,158,21,10,0,160,225,0,16,154,229
	.byte 15,224,160,225,100,240,145,229,48,0,139,229,8,224,155,229,160,226,158,229,0,0,94,227,0,224,158,21,48,16,155,229
	.byte 1,0,160,225,0,16,145,229,15,224,160,225,224,240,145,229,8,224,155,229,196,226,158,229,0,0,94,227,0,224,158,21
	.byte 1,0,160,227,16,0,203,229,8,224,155,229,220,226,158,229,0,0,94,227,0,224,158,21,16,0,219,229,8,224,155,229
	.byte 240,226,158,229,0,0,94,227,0,224,158,21,68,208,139,226,96,13,189,232,128,128,189,232

Lme_5:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication
_Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 48
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_6:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication
_Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 52
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_7:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication
_Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,36,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 56
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,24,0,141,229,0,224,157,229,128,224,158,229,0,0,94,227
	.byte 0,224,158,21,24,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225,100,240,145,229,20,0,141,229,0,224,157,229
	.byte 168,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 60
	.byte 0,0,159,231
bl _p_4

	.byte 16,0,141,229
bl _p_6

	.byte 0,224,157,229,212,224,158,229,0,0,94,227,0,224,158,21,16,16,157,229,20,32,157,229,2,0,160,225,0,32,146,229
	.byte 15,224,160,225,228,240,146,229,0,224,157,229,252,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,12,225,158,229
	.byte 0,0,94,227,0,224,158,21,36,208,141,226,0,1,189,232,128,128,189,232

Lme_8:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication
_Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 64
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_9:
.text
	.align 2
	.no_dead_strip _Example_AppDelegate__cctor
_Example_AppDelegate__cctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 68
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,56,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,80,224,158,229,0,0,94,227,0,224,158,21,0,0,159,229
	.byte 0,0,0,234
	.long _mono_aot_Example_got - . + 72
	.byte 0,0,159,231,0,16,160,227,0,16,160,227
bl _p_7

	.byte 8,0,141,229,0,224,157,229,128,224,158,229,0,0,94,227,0,224,158,21,8,16,157,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 36
	.byte 0,0,159,231,0,16,128,229,0,224,157,229,168,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232
	.byte 128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController__ctor_intptr
_Example_ExampleViewController__ctor_intptr:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 76
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 12,16,157,229
bl _p_8

	.byte 0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232,128,128,189,232

Lme_b:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController__ctor
_Example_ExampleViewController__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 80
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
bl _p_9

	.byte 0,224,157,229,108,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,124,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,224,157,229,140,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232,128,128,189,232

Lme_c:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_DidReceiveMemoryWarning
_Example_ExampleViewController_DidReceiveMemoryWarning:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 84
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,0,224,157,229,124,224,158,229,0,0,94,227
	.byte 0,224,158,21,16,0,157,229
bl _p_10

	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_d:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_ViewDidLoad
_Example_ExampleViewController_ViewDidLoad:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 88
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,0,224,157,229,124,224,158,229,0,0,94,227
	.byte 0,224,158,21,16,0,157,229
bl _p_11

	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_e:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_ViewWillAppear_bool
_Example_ExampleViewController_ViewWillAppear_bool:

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,24,208,77,226,0,160,160,225,8,16,205,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 92
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,10,0,160,225,3,0,160,227,10,0,160,225,0,224,157,229,132,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 96
	.byte 0,0,159,231
bl _p_12

	.byte 20,0,141,229,10,16,160,225
bl _p_13

	.byte 0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,20,32,157,229,10,0,160,225,3,16,160,227
bl _p_14

	.byte 0,224,157,229,212,224,158,229,0,0,94,227,0,224,158,21,10,0,160,225,8,0,221,229,16,0,141,229,0,224,157,229
	.byte 240,224,158,229,0,0,94,227,0,224,158,21,16,16,157,229,10,0,160,225
bl _p_15

	.byte 0,224,157,229,12,225,158,229,0,0,94,227,0,224,158,21,0,224,157,229,28,225,158,229,0,0,94,227,0,224,158,21
	.byte 24,208,141,226,0,5,189,232,128,128,189,232

Lme_f:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_ViewDidAppear_bool
_Example_ExampleViewController_ViewDidAppear_bool:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,12,16,205,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 100
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,12,0,221,229,20,0,141,229,0,224,157,229
	.byte 136,224,158,229,0,0,94,227,0,224,158,21,16,0,157,229,20,16,157,229
bl _p_16

	.byte 0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_10:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_ViewWillDisappear_bool
_Example_ExampleViewController_ViewWillDisappear_bool:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,12,16,205,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 104
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,12,0,221,229,20,0,141,229,0,224,157,229
	.byte 136,224,158,229,0,0,94,227,0,224,158,21,16,0,157,229,20,16,157,229
bl _p_17

	.byte 0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_11:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_ViewDidDisappear_bool
_Example_ExampleViewController_ViewDidDisappear_bool:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,28,208,77,226,8,0,141,229,12,16,205,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 108
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 104,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229,16,0,141,229,12,0,221,229,20,0,141,229,0,224,157,229
	.byte 136,224,158,229,0,0,94,227,0,224,158,21,16,0,157,229,20,16,157,229
bl _p_18

	.byte 0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21
	.byte 28,208,141,226,0,1,189,232,128,128,189,232

Lme_12:
.text
	.align 2
	.no_dead_strip _Example_ExampleViewController_ReleaseDesignerOutlets
_Example_ExampleViewController_ReleaseDesignerOutlets:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 112
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229
	.byte 100,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_13:
.text
	.align 2
	.no_dead_strip _Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController
_Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,20,208,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long _mono_aot_Example_got - . + 116
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,8,0,157,229
	.byte 12,16,157,229
bl _p_13

	.byte 0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,20,208,141,226,0,1,189,232,128,128,189,232

Lme_14:
.text
	.align 3
methods_end:

	.long 0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl _Example_Application__ctor
bl _Example_Application_Main_string__
bl _Example_AppDelegate__ctor
bl _Example_AppDelegate_get_Window
bl _Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow
bl _Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary
bl _Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication
bl _Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication
bl _Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication
bl _Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication
bl _Example_AppDelegate__cctor
bl _Example_ExampleViewController__ctor_intptr
bl _Example_ExampleViewController__ctor
bl _Example_ExampleViewController_DidReceiveMemoryWarning
bl _Example_ExampleViewController_ViewDidLoad
bl _Example_ExampleViewController_ViewWillAppear_bool
bl _Example_ExampleViewController_ViewDidAppear_bool
bl _Example_ExampleViewController_ViewWillDisappear_bool
bl _Example_ExampleViewController_ViewDidDisappear_bool
bl _Example_ExampleViewController_ReleaseDesignerOutlets
bl _Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController
bl method_addresses
method_addresses_end:
.section __TEXT, __const
	.align 3
code_offsets:

	.long 0

.text
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.long 22,10,3,2
	.short 0, 10, 20
	.byte 1,3,4,4,4,4,9,4,4,5,46,6,3,3,3,3,4,3,3,3,80,255,255,255,255,176
.section __TEXT, __const
	.align 3
extra_method_table:

	.long 11,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.long 0
.section __TEXT, __const
	.align 3
class_name_table:

	.short 11, 1, 0, 0, 0, 0, 0, 5
	.short 0, 2, 0, 3, 0, 0, 0, 4
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.long 33,10,4,2
	.short 0, 10, 20, 30
	.byte 83,2,1,1,1,1,1,3,1,1,96,1,5,4,3,4,1,1,1,3,120,1,3,1,1,1,1,1,4,1,128,135
	.byte 1,1
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.long 22,10,3,2
	.short 0, 12, 23
	.byte 129,9,31,68,33,43,45,129,10,51,51,99,131,235,53,60,55,62,62,110,67,67,67,134,115,255,255,255,249,141
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 18,12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32,18,12,13,0,72,14,8,135,2,68,14,12,136
	.byte 3,142,1,68,14,40,20,12,13,0,72,14,8,135,2,68,14,16,134,4,136,3,142,1,68,14,32,29,12,13,0,72
	.byte 14,8,135,2,68,14,28,133,7,134,6,136,5,138,4,139,3,142,1,68,14,96,68,13,11,18,12,13,0,72,14,8
	.byte 135,2,68,14,12,136,3,142,1,68,14,48,20,12,13,0,72,14,8,135,2,68,14,16,136,4,138,3,142,1,68,14
	.byte 40
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 5,10,1,2
	.short 0
	.byte 134,175,7,23,63,128,173

.text
	.align 4
plt:
_mono_aot_Example_plt:
	.no_dead_strip plt_MonoTouch_UIKit_UIApplication_Main_string___string_string
plt_MonoTouch_UIKit_UIApplication_Main_string___string_string:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 132,138
	.no_dead_strip plt_MonoTouch_UIKit_UIApplicationDelegate__ctor
plt_MonoTouch_UIKit_UIApplicationDelegate__ctor:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 136,143
	.no_dead_strip plt_MonoTouch_UIKit_UIScreen_get_MainScreen
plt_MonoTouch_UIKit_UIScreen_get_MainScreen:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 140,148
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 144,153
	.no_dead_strip plt_MonoTouch_UIKit_UIWindow__ctor_System_Drawing_RectangleF
plt_MonoTouch_UIKit_UIWindow__ctor_System_Drawing_RectangleF:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 148,180
	.no_dead_strip plt_Example_ExampleViewController__ctor
plt_Example_ExampleViewController__ctor:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 152,185
	.no_dead_strip plt_MonoTouch_UIKit_UIStoryboard_FromName_string_MonoTouch_Foundation_NSBundle
plt_MonoTouch_UIKit_UIStoryboard_FromName_string_MonoTouch_Foundation_NSBundle:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 156,187
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController__ctor_intptr
plt_Xamarin_LockScreen_MainLockScreenController__ctor_intptr:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 160,192
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController__ctor
plt_Xamarin_LockScreen_MainLockScreenController__ctor:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 164,197
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_DidReceiveMemoryWarning
plt_Xamarin_LockScreen_MainLockScreenController_DidReceiveMemoryWarning:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 168,202
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_ViewDidLoad
plt_Xamarin_LockScreen_MainLockScreenController_ViewDidLoad:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 172,207
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 176,212
	.no_dead_strip plt_Xamarin_LockScreen_Security_LockHandler__ctor_MonoTouch_UIKit_UIViewController
plt_Xamarin_LockScreen_Security_LockHandler__ctor_MonoTouch_UIKit_UIViewController:
_p_13:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 180,235
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_Initialize_int_Xamarin_LockScreen_Interfaces_ILockScreenDelegate
plt_Xamarin_LockScreen_MainLockScreenController_Initialize_int_Xamarin_LockScreen_Interfaces_ILockScreenDelegate:
_p_14:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 184,240
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_ViewWillAppear_bool
plt_Xamarin_LockScreen_MainLockScreenController_ViewWillAppear_bool:
_p_15:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 188,245
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_ViewDidAppear_bool
plt_Xamarin_LockScreen_MainLockScreenController_ViewDidAppear_bool:
_p_16:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 192,250
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_ViewWillDisappear_bool
plt_Xamarin_LockScreen_MainLockScreenController_ViewWillDisappear_bool:
_p_17:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 196,255
	.no_dead_strip plt_Xamarin_LockScreen_MainLockScreenController_ViewDidDisappear_bool
plt_Xamarin_LockScreen_MainLockScreenController_ViewDidDisappear_bool:
_p_18:

	.byte 0,192,159,229,12,240,159,231
	.long _mono_aot_Example_got - . + 200,260
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.long 4
	.asciz "Example"
	.asciz "08721702-F09D-4141-B06B-994418B815FF"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "monotouch"
	.asciz "99AB7B6B-8783-4215-B5BC-4B446951759B"
	.asciz ""
	.asciz "84e04ff9cfb79065"
	.align 3

	.long 1,0,0,0,0
	.asciz "Xamarin.LockScreen"
	.asciz "DCFAD233-7DE7-4793-8B96-ACD68735AD5A"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,1,0,5320,36486
	.asciz "mscorlib"
	.asciz "5CC1FED7-CF0F-44FE-9AD1-1688951FE6B0"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
.data
	.align 3
_mono_aot_Example_got:
	.space 208
got_end:
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "08721702-F09D-4141-B06B-994418B815FF"
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Example"
.data
	.align 3
_mono_aot_file_info:

	.long 100,0
	.align 2
	.long _mono_aot_Example_got
	.align 2
	.long methods
	.align 2
	.long 0
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long code_offsets
	.align 2
	.long method_addresses
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long methods_end
	.align 2
	.long unwind_info
	.align 2
	.long mem_end
	.align 2
	.long image_table
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end

	.long 33,208,19,22,14,387000831,0,2036
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,4,4,14
	.long 0,0,0,0,0
	.globl _mono_aot_module_Example_info
	.align 2
_mono_aot_module_Example_info:
	.align 2
	.long _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,1,4,0,2,5,6,1,3,1,7,1,3,1,8,1,3,1,9,1,3,6,10,11,12,13,14,14,1,3,1
	.byte 15,1,3,1,16,1,3,2,17,18,1,3,1,19,1,3,3,20,21,12,0,1,22,0,1,23,0,1,24,0,1,25
	.byte 0,2,26,27,0,1,28,0,1,29,0,1,30,0,1,31,0,1,32,12,0,39,42,47,40,40,17,0,1,40,40,40
	.byte 40,14,2,128,156,1,16,1,3,2,11,1,4,16,1,3,3,40,40,40,14,1,4,40,40,17,0,25,40,40,40,40
	.byte 40,14,2,13,2,40,40,40,40,40,3,193,0,3,111,3,193,0,4,54,3,193,0,3,200,7,24,109,111,110,111,95
	.byte 111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,193,0,4,47,3,13,3,193,0,4,160
	.byte 3,194,0,0,196,3,194,0,0,195,3,194,0,0,204,3,194,0,0,207,7,20,109,111,110,111,95,111,98,106,101,99
	.byte 116,95,110,101,119,95,102,97,115,116,0,3,194,0,0,218,3,194,0,0,203,3,194,0,0,208,3,194,0,0,209,3
	.byte 194,0,0,210,3,194,0,0,211,10,0,2,255,255,255,255,255,52,0,0,193,0,0,0,20,0,0,12,88,0,100,208
	.byte 0,0,13,8,0,1,7,88,10,19,6,255,255,255,255,255,52,0,0,1,24,0,1,2,1,16,0,1,3,7,48,1
	.byte 1,4,5,32,0,0,192,255,255,242,16,0,0,30,128,204,68,128,216,208,0,0,13,8,0,9,0,68,1,24,1,24
	.byte 1,4,5,20,0,24,0,4,5,4,1,32,10,0,2,255,255,255,255,255,52,0,0,193,0,0,0,24,0,0,14,92
	.byte 72,104,208,0,0,13,8,0,2,1,72,6,20,10,38,3,255,255,255,255,255,56,0,0,1,24,0,0,192,255,255,255
	.byte 28,0,0,20,124,72,128,136,208,0,0,13,8,6,0,4,0,72,1,28,5,4,8,20,10,0,3,255,255,255,255,255
	.byte 56,0,0,1,24,0,0,192,255,255,255,28,0,0,22,124,72,128,136,208,0,0,13,12,208,0,0,13,8,0,3,0
	.byte 72,2,32,6,20,10,59,20,255,255,255,255,255,72,0,0,1,24,0,1,2,1,16,0,1,3,1,20,1,1,4,5
	.byte 24,1,1,5,5,40,1,1,6,5,68,1,1,7,5,36,0,1,8,5,40,1,1,9,5,40,1,1,10,10,92,0
	.byte 1,11,1,20,1,1,12,5,36,1,1,13,5,40,1,1,14,5,40,0,1,15,1,20,1,1,16,5,36,1,1,17
	.byte 5,36,0,1,18,7,24,0,0,192,255,255,179,20,0,0,128,157,130,248,88,131,4,208,0,0,11,36,208,0,0,11
	.byte 40,10,208,0,0,11,16,0,67,0,88,1,24,0,16,1,4,0,16,5,8,0,24,0,4,0,4,5,8,0,16,0
	.byte 16,0,4,0,28,5,4,0,20,0,4,0,4,5,8,0,16,0,16,5,8,0,20,0,4,0,4,0,8,0,4,5
	.byte 16,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,16,0,4,0,4,5,4,0,16,5,4,0,16,1,4,0
	.byte 16,0,4,0,4,0,12,5,16,0,16,5,8,0,24,0,4,0,4,5,8,0,16,1,4,0,16,0,4,0,4,5
	.byte 12,0,20,0,4,0,4,5,8,0,20,7,4,2,36,10,0,4,255,255,255,255,255,56,0,0,1,24,0,1,2,1
	.byte 16,0,0,192,255,255,254,16,0,0,23,128,128,72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0,72,1,24
	.byte 1,32,10,0,4,255,255,255,255,255,56,0,0,1,24,0,1,2,1,16,0,0,192,255,255,254,16,0,0,23,128,128
	.byte 72,128,140,208,0,0,13,12,208,0,0,13,8,0,3,0,72,1,24,1,32,10,89,8,255,255,255,255,255,56,0,0
	.byte 1,24,0,1,2,1,16,0,1,3,1,24,1,1,4,5,40,1,1,5,5,44,1,1,6,5,40,0,0,192,255,255
	.byte 238,16,0,0,51,129,20,72,129,32,208,0,0,13,12,208,0,0,13,8,0,17,0,72,1,24,1,24,0,20,0,4
	.byte 0,4,5,12,0,16,0,16,0,4,0,4,5,4,0,24,0,4,0,4,5,8,1,32,10,0,4,255,255,255,255,255
	.byte 56,0,0,1,24,0,1,2,1,16,0,0,192,255,255,254,16,0,0,23,128,128,72,128,140,208,0,0,13,12,208,0
	.byte 0,13,8,0,3,0,72,1,24,1,32,10,0,4,255,255,255,255,255,48,0,0,1,24,0,1,2,11,48,1,0,192
	.byte 255,255,244,40,0,0,25,128,176,64,128,188,0,9,0,64,0,24,5,16,1,4,0,4,0,8,5,20,0,16,6,20
	.byte 10,0,5,255,255,255,255,255,56,0,0,1,24,0,1,2,7,28,0,1,3,1,16,0,0,192,255,255,247,16,0,0
	.byte 27,128,156,72,128,168,208,0,0,13,12,208,0,0,13,8,0,5,0,72,2,32,5,4,1,16,1,32,10,0,5,255
	.byte 255,255,255,255,52,0,0,1,24,0,1,2,6,24,0,1,3,1,16,0,0,192,255,255,248,16,0,0,22,128,148,68
	.byte 128,160,208,0,0,13,8,0,5,0,68,1,28,5,4,1,16,1,32,10,19,6,255,255,255,255,255,52,0,0,1,24
	.byte 0,1,2,1,16,0,1,3,1,24,1,1,4,5,24,0,0,192,255,255,248,16,0,0,24,128,172,68,128,184,208,0
	.byte 0,13,8,0,6,0,68,1,24,1,24,0,20,5,4,1,32,10,19,6,255,255,255,255,255,52,0,0,1,24,0,1
	.byte 2,1,16,0,1,3,1,24,1,1,4,5,24,0,0,192,255,255,248,16,0,0,24,128,172,68,128,184,208,0,0,13
	.byte 8,0,6,0,68,1,24,1,24,0,20,5,4,1,32,10,108,9,255,255,255,255,255,56,0,0,1,24,0,1,2,1
	.byte 16,0,1,3,3,28,1,1,4,5,48,1,1,5,5,32,0,1,6,2,28,1,1,7,5,28,0,0,192,255,255,234
	.byte 16,0,0,57,129,36,72,129,48,208,0,0,13,8,10,0,22,0,72,1,24,0,16,1,4,1,4,1,4,0,16,0
	.byte 16,0,4,0,4,0,4,5,4,0,20,0,4,0,4,5,4,0,16,2,12,0,20,0,4,5,4,1,32,10,19,6
	.byte 255,255,255,255,255,56,0,0,1,24,0,1,2,1,16,0,1,3,2,32,1,1,4,5,28,0,0,192,255,255,247,16
	.byte 0,0,29,128,188,72,128,200,208,0,0,13,12,208,0,0,13,8,0,6,0,72,1,24,2,32,0,24,5,4,1,32
	.byte 10,19,6,255,255,255,255,255,56,0,0,1,24,0,1,2,1,16,0,1,3,2,32,1,1,4,5,28,0,0,192,255
	.byte 255,247,16,0,0,29,128,188,72,128,200,208,0,0,13,12,208,0,0,13,8,0,6,0,72,1,24,2,32,0,24,5
	.byte 4,1,32,10,19,6,255,255,255,255,255,56,0,0,1,24,0,1,2,1,16,0,1,3,2,32,1,1,4,5,28,0
	.byte 0,192,255,255,247,16,0,0,29,128,188,72,128,200,208,0,0,13,12,208,0,0,13,8,0,6,0,72,1,24,2,32
	.byte 0,24,5,4,1,32,10,0,4,255,255,255,255,255,52,0,0,1,24,0,1,2,1,16,0,0,192,255,255,254,16,0
	.byte 0,17,124,68,128,136,208,0,0,13,8,0,3,0,68,1,24,1,32,10,0,5,255,255,255,255,255,56,0,0,1,24
	.byte 0,1,2,7,28,0,1,3,1,16,0,0,192,255,255,247,16,0,0,27,128,156,72,128,168,208,0,0,13,12,208,0
	.byte 0,13,8,0,5,0,72,2,32,5,4,1,16,1,32,0,128,144,8,0,0,1,4,128,144,8,0,0,1,195,0,8
	.byte 228,195,0,8,225,195,0,8,224,195,0,8,222,18,128,230,11,193,0,1,37,24,8,0,4,193,0,1,48,195,0,8
	.byte 225,193,0,1,37,195,0,8,222,193,0,1,33,193,0,1,38,193,0,1,59,193,0,1,50,193,0,1,41,193,0,1
	.byte 36,193,0,1,35,10,9,7,6,8,5,4,45,128,162,193,0,1,37,36,0,0,4,193,0,1,48,195,0,8,225,193
	.byte 0,1,37,195,0,8,222,193,0,1,33,193,0,1,38,193,0,1,59,193,0,4,39,193,0,1,41,193,0,1,36,193
	.byte 0,4,10,193,0,3,194,193,0,3,193,193,0,4,15,193,0,4,26,193,0,4,31,193,0,4,24,193,0,4,37,193
	.byte 0,4,38,193,0,4,38,193,0,4,37,18,16,15,19,17,193,0,4,31,193,0,4,30,193,0,4,29,193,0,4,28
	.byte 193,0,4,27,193,0,4,26,193,0,4,25,193,0,4,24,193,0,4,23,193,0,4,22,14,193,0,4,18,193,0,4
	.byte 17,193,0,4,16,193,0,4,15,193,0,4,14,193,0,4,13,194,0,0,197,194,0,0,198,13,128,160,12,0,0,4
	.byte 195,0,8,228,195,0,8,225,195,0,8,224,195,0,8,222,194,0,0,219,194,0,0,220,194,0,0,221,194,0,0,224
	.byte 194,0,0,222,194,0,0,223,194,0,0,223,194,0,0,222,194,0,0,221,98,111,101,104,109,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0:

	.byte 5
	.asciz "Example_Application"

	.byte 8,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "Example_Application"

LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2
	.asciz "Example.Application:.ctor"
	.long _Example_Application__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 2
	.long _Example_Application__ctor

LDIFF_SYM12=Lme_0 - _Example_Application__ctor
	.long LDIFF_SYM12
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.Application:Main"
	.long _Example_Application_Main_string__
	.long Lme_1

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM13=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM14=Lfde1_end - Lfde1_start
	.long LDIFF_SYM14
Lfde1_start:

	.long 0
	.align 2
	.long _Example_Application_Main_string__

LDIFF_SYM15=Lme_1 - _Example_Application_Main_string__
	.long LDIFF_SYM15
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_5:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM16=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,0,7
	.asciz "_Flags"

LDIFF_SYM17=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_7:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM21=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM22=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM23=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_6:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM24=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM25=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM26=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM27=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM28=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_4:

	.byte 5
	.asciz "MonoTouch_Foundation_NSObject"

	.byte 20,16
LDIFF_SYM29=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM30=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,8,6
	.asciz "class_handle"

LDIFF_SYM31=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,12,6
	.asciz "flags"

LDIFF_SYM32=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,16,6
	.asciz "IsDirectBinding"

LDIFF_SYM33=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,35,17,0,7
	.asciz "MonoTouch_Foundation_NSObject"

LDIFF_SYM34=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM35=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM36=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_3:

	.byte 5
	.asciz "MonoTouch_UIKit_UIApplicationDelegate"

	.byte 20,16
LDIFF_SYM37=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,0,0,7
	.asciz "MonoTouch_UIKit_UIApplicationDelegate"

LDIFF_SYM38=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_10:

	.byte 5
	.asciz "MonoTouch_UIKit_UIResponder"

	.byte 20,16
LDIFF_SYM41=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,0,7
	.asciz "MonoTouch_UIKit_UIResponder"

LDIFF_SYM42=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_9:

	.byte 5
	.asciz "MonoTouch_UIKit_UIView"

	.byte 36,16
LDIFF_SYM45=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,0,6
	.asciz "__mt_BackgroundColor_var"

LDIFF_SYM46=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,20,6
	.asciz "__mt_Layer_var"

LDIFF_SYM47=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,24,6
	.asciz "__mt_Subviews_var"

LDIFF_SYM48=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,28,6
	.asciz "__mt_Superview_var"

LDIFF_SYM49=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,32,0,7
	.asciz "MonoTouch_UIKit_UIView"

LDIFF_SYM50=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM50
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM51=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM52=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_8:

	.byte 5
	.asciz "MonoTouch_UIKit_UIWindow"

	.byte 40,16
LDIFF_SYM53=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,35,0,6
	.asciz "__mt_RootViewController_var"

LDIFF_SYM54=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,36,0,7
	.asciz "MonoTouch_UIKit_UIWindow"

LDIFF_SYM55=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM56=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM57=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM57
LTDIE_2:

	.byte 5
	.asciz "Example_AppDelegate"

	.byte 24,16
LDIFF_SYM58=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM59=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,20,0,7
	.asciz "Example_AppDelegate"

LDIFF_SYM60=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM61=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM62=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2
	.asciz "Example.AppDelegate:.ctor"
	.long _Example_AppDelegate__ctor
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM63=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM64=Lfde2_end - Lfde2_start
	.long LDIFF_SYM64
Lfde2_start:

	.long 0
	.align 2
	.long _Example_AppDelegate__ctor

LDIFF_SYM65=Lme_2 - _Example_AppDelegate__ctor
	.long LDIFF_SYM65
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:get_Window"
	.long _Example_AppDelegate_get_Window
	.long Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM66=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,125,8,11
	.asciz "V_0"

LDIFF_SYM67=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM68=Lfde3_end - Lfde3_start
	.long LDIFF_SYM68
Lfde3_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_get_Window

LDIFF_SYM69=Lme_3 - _Example_AppDelegate_get_Window
	.long LDIFF_SYM69
	.byte 12,13,0,72,14,8,135,2,68,14,16,134,4,136,3,142,1,68,14,32
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:set_Window"
	.long _Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow
	.long Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM70=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,125,8,3
	.asciz "value"

LDIFF_SYM71=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM72=Lfde4_end - Lfde4_start
	.long LDIFF_SYM72
Lfde4_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow

LDIFF_SYM73=Lme_4 - _Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow
	.long LDIFF_SYM73
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_11:

	.byte 5
	.asciz "MonoTouch_UIKit_UIApplication"

	.byte 20,16
LDIFF_SYM74=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,0,0,7
	.asciz "MonoTouch_UIKit_UIApplication"

LDIFF_SYM75=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM76=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM77=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_12:

	.byte 5
	.asciz "MonoTouch_Foundation_NSDictionary"

	.byte 24,16
LDIFF_SYM78=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,0,6
	.asciz "__mt_Keys_var"

LDIFF_SYM79=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,20,0,7
	.asciz "MonoTouch_Foundation_NSDictionary"

LDIFF_SYM80=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM81=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM82=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2
	.asciz "Example.AppDelegate:FinishedLaunching"
	.long _Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary
	.long Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM83=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 1,90,3
	.asciz "app"

LDIFF_SYM84=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,123,36,3
	.asciz "options"

LDIFF_SYM85=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,123,40,11
	.asciz "V_0"

LDIFF_SYM86=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,123,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM87=Lfde5_end - Lfde5_start
	.long LDIFF_SYM87
Lfde5_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary

LDIFF_SYM88=Lme_5 - _Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary
	.long LDIFF_SYM88
	.byte 12,13,0,72,14,8,135,2,68,14,28,133,7,134,6,136,5,138,4,139,3,142,1,68,14,96,68,13,11
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:OnResignActivation"
	.long _Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication
	.long Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM89=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM90=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM91=Lfde6_end - Lfde6_start
	.long LDIFF_SYM91
Lfde6_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication

LDIFF_SYM92=Lme_6 - _Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication
	.long LDIFF_SYM92
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:DidEnterBackground"
	.long _Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM93=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM94=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM95=Lfde7_end - Lfde7_start
	.long LDIFF_SYM95
Lfde7_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication

LDIFF_SYM96=Lme_7 - _Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication
	.long LDIFF_SYM96
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:WillEnterForeground"
	.long _Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM97=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM98=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM99=Lfde8_end - Lfde8_start
	.long LDIFF_SYM99
Lfde8_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication

LDIFF_SYM100=Lme_8 - _Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication
	.long LDIFF_SYM100
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,48
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:WillTerminate"
	.long _Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication
	.long Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM101=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,125,8,3
	.asciz "application"

LDIFF_SYM102=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM103=Lfde9_end - Lfde9_start
	.long LDIFF_SYM103
Lfde9_start:

	.long 0
	.align 2
	.long _Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication

LDIFF_SYM104=Lme_9 - _Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication
	.long LDIFF_SYM104
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.AppDelegate:.cctor"
	.long _Example_AppDelegate__cctor
	.long Lme_a

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM105=Lfde10_end - Lfde10_start
	.long LDIFF_SYM105
Lfde10_start:

	.long 0
	.align 2
	.long _Example_AppDelegate__cctor

LDIFF_SYM106=Lme_a - _Example_AppDelegate__cctor
	.long LDIFF_SYM106
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_15:

	.byte 5
	.asciz "MonoTouch_UIKit_UIViewController"

	.byte 24,16
LDIFF_SYM107=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,0,6
	.asciz "__mt_View_var"

LDIFF_SYM108=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,20,0,7
	.asciz "MonoTouch_UIKit_UIViewController"

LDIFF_SYM109=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM110=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM111=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_16:

	.byte 17
	.asciz "Xamarin_LockScreen_Interfaces_ILockScreenDelegate"

	.byte 8,7
	.asciz "Xamarin_LockScreen_Interfaces_ILockScreenDelegate"

LDIFF_SYM112=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM113=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM114=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_17:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM115=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM116=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM117=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM118=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM119=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_14:

	.byte 5
	.asciz "Xamarin_LockScreen_MainLockScreenController"

	.byte 36,16
LDIFF_SYM120=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,0,6
	.asciz "isLocked"

LDIFF_SYM121=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,28,6
	.asciz "<Locker>k__BackingField"

LDIFF_SYM122=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,24,6
	.asciz "<AttemptsAllowed>k__BackingField"

LDIFF_SYM123=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,32,0,7
	.asciz "Xamarin_LockScreen_MainLockScreenController"

LDIFF_SYM124=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM125=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM126=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_13:

	.byte 5
	.asciz "Example_ExampleViewController"

	.byte 36,16
LDIFF_SYM127=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,0,0,7
	.asciz "Example_ExampleViewController"

LDIFF_SYM128=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM129=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM130=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2
	.asciz "Example.ExampleViewController:.ctor"
	.long _Example_ExampleViewController__ctor_intptr
	.long Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM131=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,125,8,3
	.asciz "handle"

LDIFF_SYM132=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM133=Lfde11_end - Lfde11_start
	.long LDIFF_SYM133
Lfde11_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController__ctor_intptr

LDIFF_SYM134=Lme_b - _Example_ExampleViewController__ctor_intptr
	.long LDIFF_SYM134
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:.ctor"
	.long _Example_ExampleViewController__ctor
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM135=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM136=Lfde12_end - Lfde12_start
	.long LDIFF_SYM136
Lfde12_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController__ctor

LDIFF_SYM137=Lme_c - _Example_ExampleViewController__ctor
	.long LDIFF_SYM137
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:DidReceiveMemoryWarning"
	.long _Example_ExampleViewController_DidReceiveMemoryWarning
	.long Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM138=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM139=Lfde13_end - Lfde13_start
	.long LDIFF_SYM139
Lfde13_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_DidReceiveMemoryWarning

LDIFF_SYM140=Lme_d - _Example_ExampleViewController_DidReceiveMemoryWarning
	.long LDIFF_SYM140
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:ViewDidLoad"
	.long _Example_ExampleViewController_ViewDidLoad
	.long Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM141=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM142=Lfde14_end - Lfde14_start
	.long LDIFF_SYM142
Lfde14_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_ViewDidLoad

LDIFF_SYM143=Lme_e - _Example_ExampleViewController_ViewDidLoad
	.long LDIFF_SYM143
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:ViewWillAppear"
	.long _Example_ExampleViewController_ViewWillAppear_bool
	.long Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM144=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 1,90,3
	.asciz "animated"

LDIFF_SYM145=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM146=Lfde15_end - Lfde15_start
	.long LDIFF_SYM146
Lfde15_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_ViewWillAppear_bool

LDIFF_SYM147=Lme_f - _Example_ExampleViewController_ViewWillAppear_bool
	.long LDIFF_SYM147
	.byte 12,13,0,72,14,8,135,2,68,14,16,136,4,138,3,142,1,68,14,40
	.align 2
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:ViewDidAppear"
	.long _Example_ExampleViewController_ViewDidAppear_bool
	.long Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM148=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,125,8,3
	.asciz "animated"

LDIFF_SYM149=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM150=Lfde16_end - Lfde16_start
	.long LDIFF_SYM150
Lfde16_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_ViewDidAppear_bool

LDIFF_SYM151=Lme_10 - _Example_ExampleViewController_ViewDidAppear_bool
	.long LDIFF_SYM151
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:ViewWillDisappear"
	.long _Example_ExampleViewController_ViewWillDisappear_bool
	.long Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM152=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,125,8,3
	.asciz "animated"

LDIFF_SYM153=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM154=Lfde17_end - Lfde17_start
	.long LDIFF_SYM154
Lfde17_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_ViewWillDisappear_bool

LDIFF_SYM155=Lme_11 - _Example_ExampleViewController_ViewWillDisappear_bool
	.long LDIFF_SYM155
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:ViewDidDisappear"
	.long _Example_ExampleViewController_ViewDidDisappear_bool
	.long Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM156=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,125,8,3
	.asciz "animated"

LDIFF_SYM157=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM158=Lfde18_end - Lfde18_start
	.long LDIFF_SYM158
Lfde18_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_ViewDidDisappear_bool

LDIFF_SYM159=Lme_12 - _Example_ExampleViewController_ViewDidDisappear_bool
	.long LDIFF_SYM159
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,40
	.align 2
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Example.ExampleViewController:ReleaseDesignerOutlets"
	.long _Example_ExampleViewController_ReleaseDesignerOutlets
	.long Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM160=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM161=Lfde19_end - Lfde19_start
	.long LDIFF_SYM161
Lfde19_start:

	.long 0
	.align 2
	.long _Example_ExampleViewController_ReleaseDesignerOutlets

LDIFF_SYM162=Lme_13 - _Example_ExampleViewController_ReleaseDesignerOutlets
	.long LDIFF_SYM162
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde19_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_19:

	.byte 5
	.asciz "Xamarin_LockScreen_Security_LockHandler"

	.byte 12,16
LDIFF_SYM163=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,0,6
	.asciz "parent"

LDIFF_SYM164=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,8,0,7
	.asciz "Xamarin_LockScreen_Security_LockHandler"

LDIFF_SYM165=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM166=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM167=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM167
LTDIE_18:

	.byte 5
	.asciz "Example_LockDelegate"

	.byte 12,16
LDIFF_SYM168=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,0,0,7
	.asciz "Example_LockDelegate"

LDIFF_SYM169=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM169
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM170=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM170
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM171=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2
	.asciz "Example.LockDelegate:.ctor"
	.long _Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController
	.long Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM172=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,125,8,3
	.asciz "parent"

LDIFF_SYM173=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM174=Lfde20_end - Lfde20_start
	.long LDIFF_SYM174
Lfde20_start:

	.long 0
	.align 2
	.long _Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController

LDIFF_SYM175=Lme_14 - _Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController
	.long LDIFF_SYM175
	.byte 12,13,0,72,14,8,135,2,68,14,12,136,3,142,1,68,14,32
	.align 2
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug
	.asciz "/Users/tylervanderhoef/Documents/Github/Xamarin.LockScreen/Example"

	.byte 0
	.asciz "<unknown>"

	.byte 0,0,0
	.asciz "Main.cs"

	.byte 1,0,0
	.asciz "AppDelegate.cs"

	.byte 1,0,0
	.asciz "ExampleViewController.cs"

	.byte 1,0,0
	.asciz "ExampleViewController.designer.cs"

	.byte 1,0,0
	.asciz "LockDelegate.cs"

	.byte 1,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_Application_Main_string__

	.byte 3,13,4,2,1,3,13,2,196,0,1,8,119,3,1,2,208,0,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_get_Window

	.byte 3,18,4,3,1,3,18,2,200,0,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_set_Window_MonoTouch_UIKit_UIWindow

	.byte 3,19,4,3,1,3,19,2,200,0,1,2,192,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_FinishedLaunching_MonoTouch_UIKit_UIApplication_MonoTouch_Foundation_NSDictionary

	.byte 3,25,4,3,1,3,25,2,216,0,1,8,117,3,2,2,188,1,1,3,2,2,172,1,1,3,2,2,136,1,1,3
	.byte 1,2,220,0,1,8,117,2,48,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_OnResignActivation_MonoTouch_UIKit_UIApplication

	.byte 3,40,4,3,1,3,40,2,200,0,1,8,117,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_DidEnterBackground_MonoTouch_UIKit_UIApplication

	.byte 3,47,4,3,1,3,47,2,200,0,1,8,117,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_WillEnterForeground_MonoTouch_UIKit_UIApplication

	.byte 3,52,4,3,1,3,52,2,200,0,1,8,117,3,1,2,148,1,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate_WillTerminate_MonoTouch_UIKit_UIApplication

	.byte 3,58,4,3,1,3,58,2,200,0,1,8,117,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_AppDelegate__cctor

	.byte 3,21,4,3,1,3,21,2,192,0,1,2,252,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController__ctor_intptr

	.byte 3,15,4,4,1,3,15,2,200,0,1,3,1,2,36,1,243,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController__ctor

	.byte 3,18,4,4,1,3,18,2,196,0,1,8,229,244,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_DidReceiveMemoryWarning

	.byte 3,23,4,4,1,3,23,2,196,0,1,8,118,3,3,2,48,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_ViewDidLoad

	.byte 3,34,4,4,1,3,34,2,196,0,1,8,117,3,3,2,48,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_ViewWillAppear_bool

	.byte 3,41,4,4,1,3,41,2,200,0,1,8,119,3,2,2,236,0,1,3,2,2,56,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_ViewDidAppear_bool

	.byte 3,51,4,4,1,3,51,2,200,0,1,8,117,3,1,2,60,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_ViewWillDisappear_bool

	.byte 3,56,4,4,1,3,56,2,200,0,1,8,117,3,1,2,60,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_ViewDidDisappear_bool

	.byte 3,61,4,4,1,3,61,2,200,0,1,8,117,3,1,2,60,1,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_ExampleViewController_ReleaseDesignerOutlets

	.byte 3,16,4,5,1,3,16,2,196,0,1,8,117,2,44,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long _Example_LockDelegate__ctor_MonoTouch_UIKit_UIViewController

	.byte 3,8,4,6,1,3,8,2,200,0,1,3,1,2,36,1,243,2,44,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
