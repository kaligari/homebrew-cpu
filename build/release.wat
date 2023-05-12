(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/modules/addressRegister/addressRegister (mut i32) (i32.const 0))
 (global $assembly/modules/flags/FLAG_CARRY i32 (i32.const 0))
 (global $assembly/modules/flags/FLAG_ZERO i32 (i32.const 1))
 (global $assembly/modules/flags/FLAG_NEGATIVE i32 (i32.const 2))
 (global $assembly/modules/flags/FLAG_OVERFLOW i32 (i32.const 3))
 (global $assembly/modules/flags/FLAG_INTERRUPT i32 (i32.const 4))
 (global $assembly/modules/flags/FLAG_HALT i32 (i32.const 5))
 (global $assembly/modules/flags/flagsRegister (mut i32) (i32.const 0))
 (global $assembly/modules/registerAcc/registerAcc (mut i32) (i32.const 0))
 (global $assembly/modules/registerA/registerA (mut i32) (i32.const 0))
 (global $assembly/modules/registerB/registerB (mut i32) (i32.const 0))
 (global $assembly/modules/alu/alu (mut i32) (i32.const 0))
 (global $assembly/modules/registerX/registerX (mut i32) (i32.const 0))
 (global $assembly/modules/instructionRegister/instructionRegister (mut i32) (i32.const 0))
 (global $assembly/modules/microInstructionCounter/microInstructionCounter (mut i32) (i32.const 0))
 (global $assembly/modules/programCounter/programCounter (mut i32) (i32.const 0))
 (global $assembly/modules/memory/memory (mut i32) (i32.const 0))
 (global $assembly/modules/bus/bus (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 42000))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) ",")
 (data $8.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $9 (i32.const 1484) ",")
 (data $9.1 (i32.const 1496) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $10 (i32.const 1532) "\1c")
 (data $10.1 (i32.const 1544) "\01")
 (data $11 (i32.const 1564) "|")
 (data $11.1 (i32.const 1576) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $12 (i32.const 1692) "\1c")
 (data $12.1 (i32.const 1704) "\02")
 (data $13 (i32.const 1724) "\1c")
 (data $13.1 (i32.const 1736) "\02\00\00\00\04\00\00\000\00x")
 (data $14 (i32.const 1756) "|")
 (data $14.1 (i32.const 1768) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $15 (i32.const 1884) "<")
 (data $15.1 (i32.const 1896) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $16 (i32.const 1948) "\1c")
 (data $16.1 (i32.const 1960) "\02\00\00\00\02\00\00\000")
 (data $17 (i32.const 1980) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $18 (i32.const 2380) "\1c\04")
 (data $18.1 (i32.const 2392) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $19 (i32.const 3436) "\\")
 (data $19.1 (i32.const 3448) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $20 (i32.const 3532) "L\03")
 (data $20.1 (i32.const 3544) "\n\00\00\000\03\00\00\df\00S\00S\00\00\00I\01\bc\02N\00\00\00\f0\01J\00\0c\03\00\00\90\03\99\03\08\03\01\03\b0\03\a5\03\08\03\01\03\87\055\05R\05\00\00\96\1eH\001\03\00\00\97\1eT\00\08\03\00\00\98\1eW\00\n\03\00\00\99\1eY\00\n\03\00\00\9a\1eA\00\be\02\00\00P\1f\a5\03\13\03\00\00R\1f\a5\03\13\03\00\03T\1f\a5\03\13\03\01\03V\1f\a5\03\13\03B\03\80\1f\08\1f\99\03\00\00\81\1f\t\1f\99\03\00\00\82\1f\n\1f\99\03\00\00\83\1f\0b\1f\99\03\00\00\84\1f\0c\1f\99\03\00\00\85\1f\r\1f\99\03\00\00\86\1f\0e\1f\99\03\00\00\87\1f\0f\1f\99\03\00\00\88\1f\08\1f\99\03\00\00\89\1f\t\1f\99\03\00\00\8a\1f\n\1f\99\03\00\00\8b\1f\0b\1f\99\03\00\00\8c\1f\0c\1f\99\03\00\00\8d\1f\r\1f\99\03\00\00\8e\1f\0e\1f\99\03\00\00\8f\1f\0f\1f\99\03\00\00\90\1f(\1f\99\03\00\00\91\1f)\1f\99\03\00\00\92\1f*\1f\99\03\00\00\93\1f+\1f\99\03\00\00\94\1f,\1f\99\03\00\00\95\1f-\1f\99\03\00\00\96\1f.\1f\99\03\00\00\97\1f/\1f\99\03\00\00\98\1f(\1f\99\03\00\00\99\1f)\1f\99\03\00\00\9a\1f*\1f\99\03\00\00\9b\1f+\1f\99\03\00\00\9c\1f,\1f\99\03\00\00\9d\1f-\1f\99\03\00\00\9e\1f.\1f\99\03\00\00\9f\1f/\1f\99\03\00\00\a0\1fh\1f\99\03\00\00\a1\1fi\1f\99\03\00\00\a2\1fj\1f\99\03\00\00\a3\1fk\1f\99\03\00\00\a4\1fl\1f\99\03\00\00\a5\1fm\1f\99\03\00\00\a6\1fn\1f\99\03\00\00\a7\1fo\1f\99\03\00\00\a8\1fh\1f\99\03\00\00\a9\1fi\1f\99\03\00\00\aa\1fj\1f\99\03\00\00\ab\1fk\1f\99\03\00\00\ac\1fl\1f\99\03\00\00\ad\1fm\1f\99\03\00\00\ae\1fn\1f\99\03\00\00\af\1fo\1f\99\03\00\00\b2\1f\ba\1f\99\03\00\00\b3\1f\91\03\99\03\00\00\b4\1f\86\03\99\03\00\00\b6\1f\91\03B\03\00\00\b7\1f\91\03B\03\99\03\bc\1f\91\03\99\03\00\00\c2\1f\ca\1f\99\03\00\00\c3\1f\97\03\99\03\00\00\c4\1f\89\03\99\03\00\00\c6\1f\97\03B\03\00\00\c7\1f\97\03B\03\99\03\cc\1f\97\03\99\03\00\00\d2\1f\99\03\08\03\00\03\d3\1f\99\03\08\03\01\03\d6\1f\99\03B\03\00\00\d7\1f\99\03\08\03B\03\e2\1f\a5\03\08\03\00\03\e3\1f\a5\03\08\03\01\03\e4\1f\a1\03\13\03\00\00\e6\1f\a5\03B\03\00\00\e7\1f\a5\03\08\03B\03\f2\1f\fa\1f\99\03\00\00\f3\1f\a9\03\99\03\00\00\f4\1f\8f\03\99\03\00\00\f6\1f\a9\03B\03\00\00\f7\1f\a9\03B\03\99\03\fc\1f\a9\03\99\03\00\00\00\fbF\00F\00\00\00\01\fbF\00I\00\00\00\02\fbF\00L\00\00\00\03\fbF\00F\00I\00\04\fbF\00F\00L\00\05\fbS\00T\00\00\00\06\fbS\00T\00\00\00\13\fbD\05F\05\00\00\14\fbD\055\05\00\00\15\fbD\05;\05\00\00\16\fbN\05F\05\00\00\17\fbD\05=\05")
 (data $21 (i32.const 4381) "\01\02\03\04\05\06\07\08\t\n\0b\0c\r\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7f")
 (data $22 (i32.const 4508) "\07\08\t\n\0b\0c\06\06\06\06\06\06\06\06\06\06\r\06\06\0e\06\06\06\06\06\06\06\06\0f\10\11\12\06\13\06\06\06\06\06\06\06\06\06\06\14\15\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\16\17\06\06\06\18\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\19\06\06\06\06\1a\06\06\06\06\06\06\06\1b\06\06\06\06\06\06\06\06\06\06\06\1c\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1d\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1e\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06")
 (data $22.1 (i32.const 5131) "$++++++++\01\00TVVVVVVVV")
 (data $22.2 (i32.const 5170) "\18\00\00\00+++++++\07++[VVVVVVVJVV\051P1P1P1P1P1P1P1P$Py1P1P18P1P1P1P1P1P1P1PN1\02N\r\rN\03N\00$n\00N1&nQN$PN9\14\81\1b\1d\1dS1P1P\r1P1P1P\1bS$P1\02\\{\\{\\{\\{\\{\14y\\{\\{\\-+I\03H\03x\\{\14\00\96\n\01+(\06\06\00*\06**+\07\bb\b5+\1e\00+\07+++\01++++++++++++++++++++++++++++++++\01+++++++++++++++++++++++*+++++++++++++\cdF\cd+\00%+\07\01\06\01UVVVVVUVV\02$\81\81\81\81\81\15\81\81\81\00\00+\00\b2\d1\b2\d1\b2\d1\b2\d1\00\00\cd\cc\01\00\d7\d7\d7\d7\d7\83\81\81\81\81\81\81\81\81\81\81\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\1c\00\00\00\00\001P1P1P1P1P1\02\00\001P1P1P1P1P1P1P1P1PN1P1PN1P1P1P1P1P1P1P1\02\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6*++++++++++++\00\00\00TVVVVVVVVVVVV")
 (data $22.3 (i32.const 5679) "TVVVVVVVVVVVV\0c\00\0c*+++++++++++++\07*\01")
 (data $22.4 (i32.const 5765) "*++++++++++++++++++++++++++VVl\81\15\00++++++++++++++++++++++++++++++++++++++++++\07l\03A++VVVVVVVVVVVVVV,V+++++++++++++++++++++\01")
 (data $22.5 (i32.const 5924) "\0cl\00\00\00\00\00\06")
 (data $22.6 (i32.const 5970) "\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%Vz\9e&\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06\01++OVV,+\7fVV9++UVV++OVV,+\7fVV\817u[{\\++OVV\02\ac\04\00\009++UVV++OVV,++VV2\13\81W\00o\81~\c9\d7~-\81\81\0e~9\7foW\00\81\81~\15\00~\03++++++++++++\07+$+\97+++++++++*+++++VVVVV\80\81\81\81\819\bb*++++++++++++++++++++++++++++++++++++++++\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\c9\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\d0\r\00N1\02\b4\c1\c1\d7\d7$P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P\d7\d7S\c1G\d4\d7\d7\d7\05++++++++++++\07\01\00\01")
 (data $22.7 (i32.const 6421) "N1P1P1P1P1P1P1P\r\00\00\00\00\00$P1P1P1P1P")
 (data $22.8 (i32.const 6486) "+++++++++++y\\{\\{O{\\{\\{\\{\\{\\{\\{\\{\\{\\{\\-++y\14\\{\\-y*\\\'\\{\\{\\{\a4\00\n\b4\\{\\{O\03x8+++++++++++++O-++\01")
 (data $22.9 (i32.const 6599) "H")
 (data $22.10 (i32.const 6609) "*++++++++++++++++++++++++++")
 (data $22.11 (i32.const 6669) "++++++++\07\00HVVVVVVVV\02")
 (data $22.12 (i32.const 6744) "+++++++++++++UVVVVVVVVVVVV\0e")
 (data $22.13 (i32.const 6802) "$+++++++++++\07\00VVVVVVVVVVVV")
 (data $22.14 (i32.const 6872) "$++++++++++++++++\07\00\00\00\00VVVVVVVVVVVVVVVVV")
 (data $22.15 (i32.const 6969) "*++++++++++VVVVVVVVVV\0e")
 (data $22.16 (i32.const 7023) "*++++++++++VVVVVVVVVV\0e")
 (data $22.17 (i32.const 7088) "+++++++++++UVVVVVVVVVV\0e")
 (data $23 (i32.const 7177) "\08\00\00V\01\00\009")
 (data $24 (i32.const 7192) "\01 \00\00\00\e0\ff\ff\00\bf\1d\00\00\e7\02\00\00y\00\00\02$\00\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\01\02\00\00\00\fe\ff\ff\019\ff\ff\00\18\ff\ff\01\87\ff\ff\00\d4\fe\ff\00\c3\00\00\01\d2\00\00\01\ce\00\00\01\cd\00\00\01O\00\00\01\ca\00\00\01\cb\00\00\01\cf\00\00\00a\00\00\01\d3\00\00\01\d1\00\00\00\a3\00\00\01\d5\00\00\00\82\00\00\01\d6\00\00\01\da\00\00\01\d9\00\00\01\db\00\00\008\00\00\03\00\00\00\00\b1\ff\ff\01\9f\ff\ff\01\c8\ff\ff\02($\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\003\ff\ff\00&\ff\ff\01~\ff\ff\01+*\00\01]\ff\ff\01(*\00\00?*\00\01=\ff\ff\01E\00\00\01G\00\00\00\1f*\00\00\1c*\00\00\1e*\00\00.\ff\ff\002\ff\ff\006\ff\ff\005\ff\ff\00O\a5\00\00K\a5\00\001\ff\ff\00(\a5\00\00D\a5\00\00/\ff\ff\00-\ff\ff\00\f7)\00\00A\a5\00\00\fd)\00\00+\ff\ff\00*\ff\ff\00\e7)\00\00C\a5\00\00*\a5\00\00\bb\ff\ff\00\'\ff\ff\00\b9\ff\ff\00%\ff\ff\00\15\a5\00\00\12\a5\00\02$L\00\00\00\00\00\01 \00\00\00\e0\ff\ff\01\01\00\00\00\ff\ff\ff\00T\00\00\01t\00\00\01&\00\00\01%\00\00\01@\00\00\01?\00\00\00\da\ff\ff\00\db\ff\ff\00\e1\ff\ff\00\c0\ff\ff\00\c1\ff\ff\01\08\00\00\00\c2\ff\ff\00\c7\ff\ff\00\d1\ff\ff\00\ca\ff\ff\00\f8\ff\ff\00\aa\ff\ff\00\b0\ff\ff\00\07\00\00\00\8c\ff\ff\01\c4\ff\ff\00\a0\ff\ff\01\f9\ff\ff\02\1ap\00\01\01\00\00\00\ff\ff\ff\01 \00\00\00\e0\ff\ff\01P\00\00\01\0f\00\00\00\f1\ff\ff\00\00\00\00\010\00\00\00\d0\ff\ff\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c0\0b\00\01`\1c\00\00\00\00\00\01\d0\97\00\01\08\00\00\00\f8\ff\ff\02\05\8a\00\00\00\00\00\01@\f4\ff\00\9e\e7\ff\00\c2\89\00\00\db\e7\ff\00\92\e7\ff\00\93\e7\ff\00\9c\e7\ff\00\9d\e7\ff\00\a4\e7\ff\00\00\00\00\008\8a\00\00\04\8a\00\00\e6\0e\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c5\ff\ff\01A\e2\ff\02\1d\8f\00\00\08\00\00\01\f8\ff\ff\00\00\00\00\00V\00\00\01\aa\ff\ff\00J\00\00\00d\00\00\00\80\00\00\00p\00\00\00~\00\00\00\t\00\00\01\b6\ff\ff\01\f7\ff\ff\00\db\e3\ff\01\9c\ff\ff\01\90\ff\ff\01\80\ff\ff\01\82\ff\ff\02\05\ac\00\00\00\00\00\01\10\00\00\00\f0\ff\ff\01\1c\00\00\01\01\00\00\01\a3\e2\ff\01A\df\ff\01\ba\df\ff\00\e4\ff\ff\02\0b\b1\00\01\01\00\00\00\ff\ff\ff\010\00\00\00\d0\ff\ff\00\00\00\00\01\t\d6\ff\01\1a\f1\ff\01\19\d6\ff\00\d5\d5\ff\00\d8\d5\ff\01\e4\d5\ff\01\03\d6\ff\01\e1\d5\ff\01\e2\d5\ff\01\c1\d5\ff\00\00\00\00\00\a0\e3\ff\00\00\00\00\01\01\00\00\00\ff\ff\ff\02\0c\bc\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\01\bcZ\ff\01\a0\03\00\01\fcu\ff\01\d8Z\ff\000\00\00\01\b1Z\ff\01\b5Z\ff\01\bfZ\ff\01\eeZ\ff\01\d6Z\ff\01\ebZ\ff\01\d0\ff\ff\01\bdZ\ff\01\c8u\ff\00\00\00\00\000h\ff\00`\fc\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01(\00\00\00\d8\ff\ff\00\00\00\00\01@\00\00\00\c0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01\"\00\00\00\de\ff\ff")
 (data $25 (i32.const 8149) "\06\'Qow")
 (data $25.1 (i32.const 8164) "|\00\00\7f\00\00\00\00\00\00\00\00\83\8e\92\97\00\aa")
 (data $25.2 (i32.const 8192) "\b4\c4")
 (data $25.3 (i32.const 8314) "\c6\c9\00\00\00\db")
 (data $25.4 (i32.const 8403) "\de\00\00\00\00\e1\00\00\00\00\00\00\00\e4")
 (data $25.5 (i32.const 8428) "\e7")
 (data $25.6 (i32.const 8514) "\ea")
 (data $25.7 (i32.const 8637) "\ed")
 (data $26 (i32.const 8660) "0\0c1\rx\0e\7f\0f\80\10\81\11\86\12\89\13\8a\13\8e\14\8f\15\90\16\93\13\94\17\95\18\96\19\97\1a\9a\1b\9c\19\9d\1c\9e\1d\9f\1e\a6\1f\a9\1f\ae\1f\b1 \b2 \b7!\bf\"\c5#\c8#\cb#\dd$\f2#\f6%\f7& -:.=/>0?1@1C2D3E4P5Q6R7S8T9Y:[;\\<a=c>e?f@hAiBj@kClDoBqErFuG}H\82I\87J\89K\8aL\8bL\8cM\92N\9dO\9ePEW{\1d|\1d}\1d\7fX\86Y\88Z\89Z\8aZ\8c[\8e\\\8f\\\ac]\ad^\ae^\af^\c2_\cc`\cda\cea\cfb\d0c\d1d\d5e\d6f\d7g\f0h\f1i\f2j\f3k\f4l\f5m\f9n\fd-\fe-\ff-PiQiRiSiTiUiViWiXiYiZi[i\\i]i^i_i\82\00\83\00\84\00\85\00\86\00\87\00\88\00\89\00\c0u\cfv\80\89\81\8a\82\8b\85\8c\86\8dp\9dq\9dv\9ew\9ex\9fy\9fz\a0{\a0|\a1}\a1\b3\a2\ba\a3\bb\a3\bc\a4\be\a5\c3\a2\cc\a4\da\a6\db\a6\e5j\ea\a7\eb\a7\ecn\f3\a2\f8\a8\f9\a8\fa\a9\fb\a9\fc\a4&\b0*\b1+\b2N\b3\84\08b\bac\bbd\bce\bdf\bem\bfn\c0o\c1p\c2~\c3\7f\c3}\cf\8d\d0\94\d1\ab\d2\ac\d3\ad\d4\b0\d5\b1\d6\b2\d7\c4\d8\c5\d9\c6\da")
 (data $27 (i32.const 9068) ",")
 (data $27.1 (i32.const 9080) "\02\00\00\00\0e\00\00\00:\00 \00-\00-\00 \000\00x")
 (data $28 (i32.const 9116) "\1c")
 (data $28.1 (i32.const 9128) "\02\00\00\00\04\00\00\00 \00 ")
 (data $29 (i32.const 9148) "\1c")
 (data $29.1 (i32.const 9160) "\02\00\00\00\02\00\00\00\n")
 (data $30 (i32.const 9184) "\0b\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t\00\00\a4")
 (export "microInstructionCounterValue" (func $assembly/modules/microInstructionCounter/microInstructionCounterValue))
 (export "RMC" (func $assembly/modules/microInstructionCounter/RMC))
 (export "IMC" (func $assembly/modules/microInstructionCounter/IMC))
 (export "registerAValue" (func $assembly/modules/registerA/registerAValue))
 (export "AO" (func $assembly/modules/registerA/AO))
 (export "AI" (func $assembly/modules/registerA/AI))
 (export "registerBValue" (func $assembly/modules/registerB/registerBValue))
 (export "BI" (func $assembly/modules/registerB/BI))
 (export "registerAccValue" (func $assembly/modules/registerAcc/registerAccValue))
 (export "ACI" (func $assembly/modules/registerAcc/ACI))
 (export "ACO" (func $assembly/modules/registerAcc/ACO))
 (export "registerXValue" (func $assembly/modules/registerX/registerXValue))
 (export "XI" (func $assembly/modules/registerX/XI))
 (export "XO" (func $assembly/modules/registerX/XO))
 (export "XINC" (func $assembly/modules/registerX/XINC))
 (export "XDEC" (func $assembly/modules/registerX/XDEC))
 (export "flagsRegisterValue" (func $assembly/modules/flags/flagsRegisterValue))
 (export "FLAG_CARRY" (global $assembly/modules/flags/FLAG_CARRY))
 (export "FLAG_ZERO" (global $assembly/modules/flags/FLAG_ZERO))
 (export "FLAG_NEGATIVE" (global $assembly/modules/flags/FLAG_NEGATIVE))
 (export "FLAG_HALT" (global $assembly/modules/flags/FLAG_HALT))
 (export "FLAG_OVERFLOW" (global $assembly/modules/flags/FLAG_OVERFLOW))
 (export "FLAG_INTERRUPT" (global $assembly/modules/flags/FLAG_INTERRUPT))
 (export "CHF" (func $assembly/modules/flags/CHF))
 (export "CZF" (func $assembly/modules/flags/CZF))
 (export "CNF" (func $assembly/modules/flags/CNF))
 (export "CCF" (func $assembly/modules/flags/CCF))
 (export "CVF" (func $assembly/modules/flags/CVF))
 (export "SCF" (func $assembly/modules/flags/SCF))
 (export "RCF" (func $assembly/modules/flags/RCF))
 (export "SIF" (func $assembly/modules/flags/SIF))
 (export "RIF" (func $assembly/modules/flags/RIF))
 (export "FI" (func $assembly/modules/flags/FI))
 (export "FO" (func $assembly/modules/flags/FO))
 (export "MAI" (func $assembly/modules/addressRegister/MAI))
 (export "addressRegisterValue" (func $assembly/modules/addressRegister/addressRegisterValue))
 (export "programCounterValue" (func $assembly/modules/programCounter/programCounterValue))
 (export "CO" (func $assembly/modules/programCounter/CO))
 (export "CE" (func $assembly/modules/programCounter/CE))
 (export "J" (func $assembly/modules/programCounter/J))
 (export "JCF" (func $assembly/modules/programCounter/JCF))
 (export "JNC" (func $assembly/modules/programCounter/JNC))
 (export "instructionRegisterValue" (func $assembly/modules/instructionRegister/instructionRegisterValue))
 (export "II" (func $assembly/modules/instructionRegister/II))
 (export "SO" (func $assembly/modules/alu/SO))
 (export "SU" (func $assembly/modules/alu/SU))
 (export "A0_0" (func $assembly/modules/alu/A0_0))
 (export "A0_1" (func $assembly/modules/alu/A0_1))
 (export "A1_0" (func $assembly/modules/alu/A1_0))
 (export "A1_1" (func $assembly/modules/alu/A1_1))
 (export "A2_0" (func $assembly/modules/alu/A2_0))
 (export "A2_1" (func $assembly/modules/alu/A2_1))
 (export "A3_0" (func $assembly/modules/alu/A3_0))
 (export "A3_1" (func $assembly/modules/alu/A3_1))
 (export "A4_0" (func $assembly/modules/alu/A4_0))
 (export "A4_1" (func $assembly/modules/alu/A4_1))
 (export "ALUMode" (func $assembly/modules/alu/ALUMode))
 (export "SHR" (func $assembly/modules/alu/SHR))
 (export "SHL" (func $assembly/modules/alu/SHL))
 (export "setMemory" (func $assembly/modules/memory/setMemory))
 (export "getMemory" (func $assembly/modules/memory/getMemory))
 (export "dumpMemory" (func $assembly/modules/memory/dumpMemory@varargs))
 (export "clearMemory" (func $assembly/modules/memory/clearMemory))
 (export "MI" (func $assembly/modules/memory/MI))
 (export "MO" (func $assembly/modules/memory/MO))
 (export "resetRegisters" (func $assembly/modules/bus/resetRegisters))
 (export "tick" (func $assembly/modules/bus/tick))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1248
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1456
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1584
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2400
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3456
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3552
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $assembly/modules/addressRegister/addressRegister
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/alu/alu
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/bus/bus
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/instructionRegister/instructionRegister
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/programCounter/programCounter
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/memory/memory
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/registerA/registerA
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/registerB/registerB
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/registerX/registerX
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/registerAcc/registerAcc
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/modules/microInstructionCounter/microInstructionCounter
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load $0 offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load $0 offset=8
    i32.eqz
    local.get $0
    i32.const 42000
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load $0 offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load $0 offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 9184
   i32.load $0
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 9188
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load $0 offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 378
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 385
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 398
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $4
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 42000
  i32.const 0
  i32.store $0
  i32.const 43568
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 42000
    i32.add
    i32.const 0
    i32.store $0 offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 42000
      i32.add
      i32.const 0
      i32.store $0 offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 42000
  i32.const 43572
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 42000
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load $0 offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 42000
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load $0 offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 42000
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 42000
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 560
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 459
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size $0
   local.tee $2
   i32.const 4
   local.get $4
   i32.load $0 offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   local.get $5
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size $0
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 497
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 499
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load $0
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill $0
  local.get $1
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load $0
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store $0 offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load $0 offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load $0 offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy $0 $0
  local.get $2
 )
 (func $start:assembly/index
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 42000
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1172
  i32.const 1168
  i32.store $0
  i32.const 1176
  i32.const 1168
  i32.store $0
  i32.const 1168
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1204
  i32.const 1200
  i32.store $0
  i32.const 1208
  i32.const 1200
  i32.store $0
  i32.const 1200
  global.set $~lib/rt/itcms/toSpace
  i32.const 1348
  i32.const 1344
  i32.store $0
  i32.const 1352
  i32.const 1344
  i32.store $0
  i32.const 1344
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  call $assembly/models/Register/Register8bit#constructor
  global.set $assembly/modules/addressRegister/addressRegister
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 10
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $assembly/models/Register/Register8bit#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store8 $0 offset=5
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store8 $0 offset=6
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store8 $0 offset=7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store8 $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store8 $0 offset=9
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $assembly/modules/flags/flagsRegister
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/registerAcc/registerAcc
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/registerA/registerA
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/registerB/registerB
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/registerA/registerA
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/registerB/registerB
   local.tee $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/flags/flagsRegister
   local.tee $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   i32.const 23
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store8 $0 offset=5
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store8 $0 offset=20
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store8 $0 offset=21
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store8 $0 offset=22
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $4
   local.get $3
   call $assembly/models/Register/Register8bit#constructor
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   local.get $3
   local.get $0
   i32.store $0 offset=8
   local.get $0
   if
    local.get $3
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $3
   i32.store $0 offset=4
   local.get $0
   local.get $1
   i32.store $0 offset=8
   local.get $3
   local.get $1
   i32.store $0 offset=12
   local.get $1
   if
    local.get $3
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $3
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.store $0 offset=8
   local.get $3
   local.get $2
   i32.store $0 offset=16
   local.get $2
   if
    local.get $3
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   global.set $assembly/modules/alu/alu
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   call $start:assembly/modules/bus
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/modules/memory/dumpMemory@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $0
   end
   i32.const 65535
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 44
   memory.fill $0
   i32.const 1712
   local.set $2
   local.get $4
   i32.const 1712
   i32.store $0
   local.get $4
   global.get $assembly/modules/memory/memory
   local.tee $4
   i32.store $0 offset=4
   local.get $4
   call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
   local.get $1
   i32.const 1
   i32.add
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/modules/memory/memory
    local.tee $1
    i32.store $0 offset=4
    local.get $1
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
   else
    local.get $1
    i32.const 1
    i32.add
   end
   local.set $5
   loop $for-loop|0
    local.get $0
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.tee $8
     local.get $2
     i32.store $0 offset=4
     local.get $8
     i32.const 1744
     i32.store $0 offset=20
     local.get $1
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9232
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store $0
     block $__inlined_func$~lib/util/number/itoa32
      local.get $0
      local.tee $1
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1968
       local.set $0
       br $__inlined_func$~lib/util/number/itoa32
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 31
      i32.const 0
      local.get $1
      i32.sub
      local.get $1
      local.get $1
      i32.const 31
      i32.shr_u
      i32.const 1
      i32.shl
      local.tee $9
      select
      local.tee $6
      i32.clz
      i32.sub
      i32.const 2
      i32.shr_s
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store $0
      local.get $0
      local.get $9
      i32.add
      local.set $7
      local.get $6
      i64.extend_i32_u
      local.set $3
      loop $while-continue|0
       local.get $4
       i32.const 2
       i32.ge_u
       if
        local.get $7
        local.get $4
        i32.const 2
        i32.sub
        local.tee $4
        i32.const 1
        i32.shl
        i32.add
        local.get $3
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 2
        i32.shl
        i32.const 2400
        i32.add
        i32.load $0
        i32.store $0
        local.get $3
        i64.const 8
        i64.shr_u
        local.set $3
        br $while-continue|0
       end
      end
      local.get $4
      i32.const 1
      i32.and
      if
       local.get $7
       local.get $3
       i32.wrap_i64
       i32.const 6
       i32.shl
       i32.const 2400
       i32.add
       i32.load16_u $0
       i32.store16 $0
      end
      local.get $9
      if
       local.get $0
       i32.const 45
       i32.store16 $0
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $0
     i32.store $0 offset=32
     local.get $4
     i32.const 1968
     i32.store $0 offset=36
     local.get $0
     call $~lib/string/String#padStart
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=28
     local.get $0
     call $~lib/string/String#toUpperCase
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=24
     i32.const 1744
     local.get $0
     call $~lib/string/String.__concat
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 9088
     i32.store $0 offset=16
     local.get $0
     i32.const 9088
     call $~lib/string/String.__concat
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=8
     local.get $8
     local.get $2
     local.get $0
     call $~lib/string/String.__concat
     local.tee $4
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.set $6
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/modules/memory/memory
     local.tee $0
     i32.store $0 offset=40
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=32
     local.get $0
     i32.load8_u $0
     local.set $7
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9232
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store $0
     block $__inlined_func$~lib/util/number/utoa32
      local.get $7
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1968
       local.set $2
       br $__inlined_func$~lib/util/number/utoa32
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 31
      local.get $7
      i32.clz
      i32.sub
      i32.const 2
      i32.shr_s
      i32.const 1
      i32.add
      local.tee $0
      i32.const 1
      i32.shl
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store $0
      local.get $7
      i64.extend_i32_u
      local.set $3
      loop $while-continue|00
       local.get $0
       i32.const 2
       i32.ge_u
       if
        local.get $2
        local.get $0
        i32.const 2
        i32.sub
        local.tee $0
        i32.const 1
        i32.shl
        i32.add
        local.get $3
        i32.wrap_i64
        i32.const 255
        i32.and
        i32.const 2
        i32.shl
        i32.const 2400
        i32.add
        i32.load $0
        i32.store $0
        local.get $3
        i64.const 8
        i64.shr_u
        local.set $3
        br $while-continue|00
       end
      end
      local.get $0
      i32.const 1
      i32.and
      if
       local.get $2
       local.get $3
       i32.wrap_i64
       i32.const 6
       i32.shl
       i32.const 2400
       i32.add
       i32.load16_u $0
       i32.store16 $0
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $2
     i32.store $0 offset=24
     local.get $0
     i32.const 1968
     i32.store $0 offset=32
     local.get $2
     call $~lib/string/String#padStart
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=20
     local.get $0
     call $~lib/string/String#toUpperCase
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 9136
     i32.store $0 offset=16
     local.get $0
     i32.const 9136
     call $~lib/string/String.__concat
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=8
     local.get $6
     local.get $4
     local.get $0
     call $~lib/string/String.__concat
     local.tee $0
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 9168
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.const 9168
     call $~lib/string/String.__concat
     local.tee $2
     i32.store $0
     local.get $1
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     block $invalid
      block $~lib/staticarray/StaticArray<u16>
       block $~lib/array/Array<i32>
        block $~lib/array/Array<assembly/models/Register/Register8bit>
         block $assembly/models/ALU/ALU8bit
          block $assembly/models/Flags/Flags8bit
           block $assembly/models/Register/Register8bit
            block $~lib/string/String
             block $~lib/arraybuffer/ArrayBuffer
              block $~lib/object/Object
               local.get $0
               i32.const 8
               i32.sub
               i32.load $0
               br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $assembly/models/Register/Register8bit $assembly/models/Flags/Flags8bit $assembly/models/ALU/ALU8bit $~lib/array/Array<assembly/models/Register/Register8bit> $folding-inner2 $~lib/array/Array<i32> $~lib/staticarray/StaticArray<u16> $invalid
              end
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         local.get $0
         i32.load $0 offset=8
         local.tee $1
         if
          local.get $1
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         local.get $0
         i32.load $0 offset=12
         local.tee $1
         if
          local.get $1
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         local.get $0
         i32.load $0 offset=16
         local.tee $0
         if
          local.get $0
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         return
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 9232
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        i32.const 0
        i32.store $0
        local.get $2
        local.get $0
        i32.store $0
        local.get $0
        i32.load $0 offset=4
        local.set $1
        local.get $2
        local.get $0
        i32.store $0
        local.get $1
        local.get $0
        i32.load $0 offset=12
        i32.const 2
        i32.shl
        i32.add
        local.set $2
        loop $while-continue|0
         local.get $1
         local.get $2
         i32.lt_u
         if
          local.get $1
          i32.load $0
          local.tee $3
          if
           local.get $3
           call $byn-split-outlined-A$~lib/rt/itcms/__visit
          end
          local.get $1
          i32.const 4
          i32.add
          local.set $1
          br $while-continue|0
         end
        end
        br $folding-inner1
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 9232
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store $0
       br $folding-inner1
      end
      return
     end
     unreachable
    end
    i32.const 42032
    i32.const 42080
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  i32.load $0
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  call $start:assembly/index
 )
 (func $assembly/models/Register/Register8bit#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store8 $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store8 $0 offset=1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store8 $0 offset=2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store8 $0 offset=3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store8 $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 1504
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.tee $3
   i32.const 1073741820
   local.get $2
   i32.const 1
   i32.shl
   local.tee $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store $0
    local.get $0
    local.get $2
    i32.store $0 offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $1
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/Bus/Bus#addRegister (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   local.get $0
   i32.load $0 offset=12
   local.tee $2
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store $0
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 1
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<assembly/models/Register/Register8bit>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/models/Register/Register8bit>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 1504
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1584
   i32.const 1504
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:assembly/modules/bus
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/registerX/registerX
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/instructionRegister/instructionRegister
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/microInstructionCounter/microInstructionCounter
   i32.const 0
   call $assembly/models/Register/Register8bit#constructor
   global.set $assembly/modules/programCounter/programCounter
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=8
   local.get $1
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=12
   local.get $2
   i32.const 1024
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=12
   local.get $1
   local.get $2
   i32.store $0
   local.get $2
   if
    local.get $1
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 1024
   i32.store $0 offset=8
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 256
   i32.store $0 offset=12
   local.get $3
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   global.set $assembly/modules/memory/memory
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 4
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   i32.const 0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 1552
   i32.const 0
   memory.copy $0 $0
   local.get $1
   local.get $4
   i32.store $0
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $1
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $1
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 295
     i32.const 14
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/rt/itcms/white
    local.get $4
    i32.const 20
    i32.sub
    local.tee $5
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.eq
    if
     local.get $1
     i32.const 20
     i32.sub
     i32.load $0 offset=4
     i32.const 3
     i32.and
     local.tee $2
     global.get $~lib/rt/itcms/white
     i32.eqz
     i32.eq
     if
      local.get $5
      call $~lib/rt/itcms/Object#makeGray
     else
      global.get $~lib/rt/itcms/state
      i32.const 1
      i32.eq
      local.get $2
      i32.const 3
      i32.eq
      i32.and
      if
       local.get $5
       call $~lib/rt/itcms/Object#makeGray
      end
     end
    end
   end
   local.get $1
   local.get $4
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   local.get $3
   local.get $1
   i32.store $0
   local.get $1
   if
    local.get $3
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   global.set $assembly/modules/bus/bus
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $assembly/modules/bus/bus
   local.tee $2
   i32.store $0
   local.get $1
   global.get $assembly/modules/programCounter/programCounter
   local.tee $1
   i32.store $0 offset=4
   local.get $2
   local.get $1
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/addressRegister/addressRegister
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/instructionRegister/instructionRegister
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/registerA/registerA
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/registerB/registerB
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/registerAcc/registerAcc
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/registerX/registerX
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/alu/alu
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/bus/bus
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/flags/flagsRegister
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   call $assembly/models/Bus/Bus#addRegister
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/modules/memory/memory
    local.tee $1
    i32.store $0
    local.get $1
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/modules/memory/memory
     local.tee $1
     i32.store $0
     i32.const 0
     call $assembly/models/Register/Register8bit#constructor
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9232
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.store $0
     local.get $3
     local.get $1
     i32.store $0
     local.get $0
     local.get $1
     i32.load $0 offset=12
     i32.ge_u
     if
      local.get $0
      i32.const 0
      i32.lt_s
      if
       i32.const 1248
       i32.const 1504
       i32.const 130
       i32.const 22
       call $~lib/builtins/abort
       unreachable
      end
      local.get $1
      local.get $0
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/array/ensureCapacity
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0
      local.get $1
      local.get $3
      i32.store $0 offset=12
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0
     local.get $1
     i32.load $0 offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     local.get $2
     i32.store $0
     local.get $2
     if
      local.get $1
      local.get $2
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/modules/bus/bus
     local.tee $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/modules/memory/memory
     local.tee $2
     i32.store $0 offset=8
     local.get $2
     local.get $0
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     local.get $1
     local.get $2
     call $assembly/models/Bus/Bus#addRegister
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/modules/microInstructionCounter/microInstructionCounterValue (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/microInstructionCounter/microInstructionCounter
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/modules/microInstructionCounter/RMC
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/microInstructionCounter/microInstructionCounter
  local.tee $1
  i32.store $0
  local.get $1
  i32.const 0
  i32.store8 $0
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/microInstructionCounter/IMC
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/microInstructionCounter/microInstructionCounter
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0
  i32.const 1
  i32.add
  i32.store8 $0
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerA/registerAValue (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerA/registerA
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/models/Register/Register8bit#writeToBus (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 1
  i32.store8 $0 offset=2
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerA/AO
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerA/registerA
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/Register/Register8bit#readFromBus (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 1
  i32.store8 $0 offset=1
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerA/AI
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerA/registerA
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerB/registerBValue (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerB/registerB
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/modules/registerB/BI
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerB/registerB
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerAcc/registerAccValue (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerAcc/registerAcc
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/modules/registerAcc/ACI
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerAcc/registerAcc
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerAcc/ACO
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerAcc/registerAcc
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerX/registerXValue (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerX/registerX
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/modules/registerX/XI
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerX/registerX
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerX/XO
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerX/registerX
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/Register/Register8bit#increment (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 1
  i32.store8 $0 offset=3
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerX/XINC
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/registerX/registerX
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#increment
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/registerX/XDEC
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   global.get $assembly/modules/registerX/registerX
   local.tee $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.const 1
   i32.store8 $0 offset=4
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/modules/flags/flagsRegisterValue (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  local.set $1
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/modules/flags/CHF
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.const 1
  i32.store8 $0 offset=5
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/CZF
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.const 1
  i32.store8 $0 offset=6
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/CNF
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.const 1
  i32.store8 $0 offset=7
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/CCF
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.const 1
  i32.store8 $0 offset=8
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/CVF
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.const 1
  i32.store8 $0 offset=9
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/Register/Register8bit#setBit (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load8_u $0
  i32.const 1
  local.get $1
  i32.const 7
  i32.and
  i32.shl
  i32.or
  i32.store8 $0
  local.get $2
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/SCF
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 0
  call $assembly/models/Register/Register8bit#setBit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/Register/Register8bit#removeBit (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $0
  i32.load8_u $0
  i32.const -2
  local.get $1
  i32.const 7
  i32.and
  i32.rotl
  i32.and
  i32.store8 $0
  local.get $2
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/RCF
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 0
  call $assembly/models/Register/Register8bit#removeBit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/SIF
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 4
  call $assembly/models/Register/Register8bit#setBit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/RIF
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 4
  call $assembly/models/Register/Register8bit#removeBit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/FI
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/flags/FO
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/addressRegister/MAI
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/addressRegister/addressRegister
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/addressRegister/addressRegisterValue (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/addressRegister/addressRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  local.set $1
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/modules/programCounter/programCounterValue (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/programCounter/programCounter
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/modules/programCounter/CO
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/programCounter/programCounter
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/programCounter/CE
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/programCounter/programCounter
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#increment
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/programCounter/J
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/programCounter/programCounter
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/programCounter/JCF
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  i32.load8_u $0
  i32.const 1
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/programCounter/programCounter
   local.tee $0
   i32.store $0
   local.get $0
   call $assembly/models/Register/Register8bit#readFromBus
   call $assembly/modules/microInstructionCounter/RMC
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/programCounter/JNC
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/flags/flagsRegister
  local.tee $0
  i32.store $0
  local.get $0
  i32.load8_u $0
  i32.const 1
  i32.and
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/programCounter/programCounter
   local.tee $0
   i32.store $0
   local.get $0
   call $assembly/models/Register/Register8bit#readFromBus
   call $assembly/modules/microInstructionCounter/RMC
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/instructionRegister/instructionRegisterValue (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/instructionRegister/instructionRegister
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  local.set $1
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/modules/instructionRegister/II
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/instructionRegister/instructionRegister
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/SO
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/SU
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   global.get $assembly/modules/alu/alu
   local.tee $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.const 22
   i32.store8 $0 offset=5
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/modules/alu/A0_0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 30
  i32.and
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A0_1
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 1
  i32.or
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A1_0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 29
  i32.and
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A1_1
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 2
  i32.or
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A2_0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 27
  i32.and
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A2_1
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 4
  i32.or
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A3_0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 23
  i32.and
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A3_1
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 8
  i32.or
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A4_0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 15
  i32.and
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/A4_1
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  local.get $1
  i32.load8_u $0 offset=5
  i32.const 16
  i32.or
  i32.store8 $0 offset=5
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/ALUMode (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0 offset=5
  f64.convert_i32_u
  local.set $2
  local.get $0
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/modules/alu/SHR
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $2
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.load $0 offset=8
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $0
  local.get $2
  i32.store $0
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $0
  local.get $2
  i32.load $0 offset=8
  local.tee $1
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.load8_u $0
  i32.const 1
  i32.and
  i32.store8 $0 offset=20
  local.get $0
  local.get $2
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.load $0 offset=8
  local.tee $1
  i32.store $0
  local.get $1
  local.get $3
  i32.store8 $0
  local.get $0
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/alu/SHL
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  global.get $assembly/modules/alu/alu
  local.tee $2
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.load $0 offset=8
  local.tee $1
  i32.store $0
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $0
  local.get $2
  i32.load $0 offset=8
  local.tee $2
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.load8_u $0
  i32.const 1
  i32.shl
  i32.store8 $0
  local.get $0
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/Register/Register8bit#setValue (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store8 $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/memory/setMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  global.get $assembly/modules/memory/memory
  local.tee $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.const 255
  i32.and
  call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  call $assembly/models/Register/Register8bit#setValue
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/memory/getMemory (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  global.get $assembly/modules/memory/memory
  local.tee $1
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load8_u $0
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#padStart (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const -2
  i32.and
  local.set $2
  local.get $1
  i32.const 1968
  i32.store $0
  i32.const 1964
  i32.load $0
  i32.const -2
  i32.and
  local.tee $6
  i32.eqz
  local.get $2
  i32.const 4
  i32.gt_u
  i32.or
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $7
  i32.store $0 offset=4
  i32.const 4
  local.get $2
  i32.sub
  local.tee $1
  local.get $6
  i32.gt_u
  if
   local.get $1
   local.get $1
   i32.const 2
   i32.sub
   local.get $6
   i32.div_u
   local.get $6
   i32.mul
   local.tee $4
   i32.sub
   local.set $5
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.lt_u
    if
     local.get $3
     local.get $7
     i32.add
     i32.const 1968
     local.get $6
     memory.copy $0 $0
     local.get $3
     local.get $6
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
   local.get $4
   local.get $7
   i32.add
   i32.const 1968
   local.get $5
   memory.copy $0 $0
  else
   local.get $7
   i32.const 1968
   local.get $1
   memory.copy $0 $0
  end
  local.get $1
  local.get $7
  i32.add
  local.get $0
  local.get $2
  memory.copy $0 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/string/String#toUpperCase (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $9
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.const 6
  i32.mul
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 3552
  i32.store $0
  i32.const 3548
  i32.load $0
  i32.const 1
  i32.shr_u
  local.set $3
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_u
   if
    local.get $0
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    local.tee $1
    i32.const 7
    i32.shr_u
    if
     block $for-continue|0
      local.get $1
      i32.const 55295
      i32.sub
      i32.const 1025
      i32.lt_u
      local.get $7
      local.get $9
      i32.const 1
      i32.sub
      i32.lt_u
      i32.and
      if
       local.get $0
       local.get $7
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u $0 offset=2
       local.tee $4
       i32.const 56319
       i32.sub
       i32.const 1025
       i32.lt_u
       if
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        local.get $4
        i32.const 1023
        i32.and
        local.get $1
        local.tee $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.or
        i32.const 65536
        i32.add
        local.tee $1
        i32.const 131072
        i32.ge_u
        if
         local.get $6
         local.get $5
         i32.const 1
         i32.shl
         i32.add
         local.get $2
         local.get $4
         i32.const 16
         i32.shl
         i32.or
         i32.store $0
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         br $for-continue|0
        end
       end
      end
      local.get $1
      i32.const 9424
      i32.sub
      i32.const 25
      i32.le_u
      if
       local.get $6
       local.get $5
       i32.const 1
       i32.shl
       i32.add
       local.get $1
       i32.const 26
       i32.sub
       i32.store16 $0
      else
       local.get $1
       i32.const 223
       i32.sub
       i32.const 64056
       i32.le_u
       if (result i32)
        local.get $3
        local.set $2
        i32.const 0
        local.set $8
        block $~lib/util/casemap/bsearch|inlined.0
         loop $while-continue|1
          local.get $2
          local.get $8
          i32.ge_s
          if
           local.get $2
           local.get $8
           i32.add
           i32.const 3
           i32.shr_u
           i32.const 2
           i32.shl
           local.tee $4
           i32.const 1
           i32.shl
           i32.const 3552
           i32.add
           i32.load16_u $0
           local.get $1
           i32.sub
           local.tee $10
           i32.eqz
           br_if $~lib/util/casemap/bsearch|inlined.0
           local.get $10
           i32.const 31
           i32.shr_u
           if
            local.get $4
            i32.const 4
            i32.add
            local.set $8
           else
            local.get $4
            i32.const 4
            i32.sub
            local.set $2
           end
           br $while-continue|1
          end
         end
         i32.const -1
         local.set $4
        end
        local.get $4
       else
        i32.const -1
       end
       local.tee $2
       i32.const -1
       i32.xor
       if
        local.get $2
        i32.const 1
        i32.shl
        i32.const 3552
        i32.add
        local.tee $1
        i32.load16_u $0 offset=6
        local.set $2
        local.get $6
        local.get $5
        i32.const 1
        i32.shl
        i32.add
        local.tee $4
        local.get $1
        i32.load $0 offset=2
        i32.store $0
        local.get $4
        local.get $2
        i32.store16 $0 offset=4
        local.get $5
        local.get $2
        i32.const 0
        i32.ne
        i32.const 1
        i32.add
        i32.add
        local.set $5
       else
        local.get $1
        local.tee $2
        i32.const 8
        i32.shr_u
        local.tee $4
        i32.const 8148
        i32.add
        i32.load8_u $0
        local.get $4
        i32.const 4508
        i32.add
        i32.load8_u $0
        i32.const 86
        i32.mul
        i32.const 4508
        i32.add
        local.get $1
        i32.const 255
        i32.and
        local.tee $10
        i32.const 3
        i32.div_u
        i32.add
        i32.load8_u $0
        local.get $10
        i32.const 3
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 7176
        i32.add
        i32.load $0
        i32.mul
        i32.const 11
        i32.shr_u
        i32.const 6
        i32.rem_u
        i32.add
        i32.const 2
        i32.shl
        i32.const 7188
        i32.add
        i32.load $0
        local.tee $4
        i32.const 255
        i32.and
        local.set $8
        local.get $1
        local.get $4
        i32.const 8
        i32.shr_s
        local.tee $4
        i32.const 0
        local.get $8
        i32.const 1
        i32.xor
        i32.sub
        i32.and
        i32.add
        local.set $1
        block $__inlined_func$~lib/util/casemap/casemap
         local.get $8
         i32.const 2
         i32.lt_u
         br_if $__inlined_func$~lib/util/casemap/casemap
         local.get $4
         i32.const 255
         i32.and
         local.set $1
         local.get $4
         i32.const 8
         i32.shr_u
         local.set $4
         loop $while-continue|0
          local.get $1
          if
           local.get $4
           local.get $1
           i32.const 1
           i32.shr_u
           local.tee $8
           i32.add
           i32.const 1
           i32.shl
           i32.const 8660
           i32.add
           i32.load8_u $0
           local.tee $11
           local.get $10
           i32.eq
           if (result i32)
            local.get $2
            i32.const 0
            local.get $4
            local.get $8
            i32.add
            i32.const 1
            i32.shl
            i32.const 8660
            i32.add
            i32.load8_u $0 offset=1
            i32.const 2
            i32.shl
            i32.const 7188
            i32.add
            i32.load $0
            local.tee $1
            i32.const 255
            i32.and
            local.tee $4
            i32.const 1
            i32.xor
            i32.sub
            local.get $1
            i32.const 8
            i32.shr_s
            i32.and
            i32.add
            local.set $1
            local.get $4
            i32.const 2
            i32.lt_u
            br_if $__inlined_func$~lib/util/casemap/casemap
            local.get $2
            i32.const 1
            i32.sub
            local.set $1
            br $__inlined_func$~lib/util/casemap/casemap
           else
            local.get $10
            local.get $11
            i32.lt_u
            if (result i32)
             local.get $8
            else
             local.get $4
             local.get $8
             i32.add
             local.set $4
             local.get $1
             local.get $8
             i32.sub
            end
           end
           local.set $1
           br $while-continue|0
          end
         end
         local.get $2
         local.set $1
        end
        local.get $1
        i32.const 2097151
        i32.and
        local.tee $1
        i32.const 65536
        i32.lt_u
        if
         local.get $6
         local.get $5
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         i32.store16 $0
        else
         local.get $6
         local.get $5
         i32.const 1
         i32.shl
         i32.add
         local.get $1
         i32.const 65536
         i32.sub
         local.tee $1
         i32.const 10
         i32.shr_u
         i32.const 55296
         i32.or
         local.get $1
         i32.const 1023
         i32.and
         i32.const 56320
         i32.or
         i32.const 16
         i32.shl
         i32.or
         i32.store $0
         local.get $5
         i32.const 1
         i32.add
         local.set $5
        end
       end
      end
     end
    else
     local.get $6
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     i32.const 4380
     i32.add
     i32.load8_u $0
     i32.store16 $0
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $5
  i32.const 1
  i32.shl
  call $~lib/rt/itcms/__renew
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   local.get $0
   local.tee $2
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.set $4
   local.get $3
   local.get $1
   i32.store $0
   block $__inlined_func$~lib/string/String#concat
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $4
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1712
     local.set $0
     br $__inlined_func$~lib/string/String#concat
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0 offset=4
    local.get $0
    local.get $2
    local.get $4
    memory.copy $0 $0
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $3
    memory.copy $0 $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/modules/memory/clearMemory
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/modules/memory/memory
   local.tee $1
   i32.store $0
   local.get $1
   call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
   local.get $0
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/modules/memory/memory
    local.tee $1
    i32.store $0 offset=4
    local.get $1
    local.get $0
    call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    i32.const 0
    call $assembly/models/Register/Register8bit#setValue
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/memory/MI
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  global.get $assembly/modules/memory/memory
  local.tee $1
  i32.store $0 offset=4
  local.get $0
  global.get $assembly/modules/addressRegister/addressRegister
  local.tee $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.load8_u $0
  call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#readFromBus
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/memory/MO
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  global.get $assembly/modules/memory/memory
  local.tee $1
  i32.store $0 offset=4
  local.get $0
  global.get $assembly/modules/addressRegister/addressRegister
  local.tee $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.load8_u $0
  call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/models/Register/Register8bit#writeToBus
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/modules/bus/resetRegisters
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store $0
   local.get $2
   global.get $assembly/modules/bus/bus
   local.tee $0
   i32.store $0
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.load $0
    local.tee $2
    i32.store $0
    local.get $2
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $0
     i32.load $0
     local.tee $3
     i32.store $0
     local.get $2
     local.get $3
     local.get $1
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.tee $2
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9232
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.store $0
     local.get $3
     local.get $2
     i32.store $0
     local.get $2
     i32.const 0
     i32.store8 $0
     local.get $3
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/models/Bus/Bus#updateRegisters (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9232
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0 offset=4
    local.get $3
    local.get $0
    i32.load $0
    local.tee $3
    i32.store $0
    local.get $3
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=4
     local.get $3
     local.get $0
     i32.load $0
     local.tee $4
     i32.store $0
     local.get $3
     local.get $4
     local.get $1
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.tee $3
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     block $__inlined_func$assembly/models/Register/Register8bit#beforeTick@override
      local.get $3
      i32.const 8
      i32.sub
      i32.load $0
      i32.const 6
      i32.eq
      if
       local.get $3
       call $assembly/models/ALU/ALU8bit#beforeTick
       br $__inlined_func$assembly/models/Register/Register8bit#beforeTick@override
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 9232
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i64.const 0
      i64.store $0
      local.get $4
      local.get $3
      i32.store $0
      local.get $3
      i32.load8_u $0 offset=3
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $3
       i32.store $0
       local.get $4
       local.get $3
       i32.store $0 offset=4
       local.get $3
       local.get $3
       i32.load8_u $0
       i32.const 1
       i32.add
       i32.store8 $0
       local.get $4
       local.get $3
       i32.store $0
       local.get $3
       i32.const 0
       i32.store8 $0 offset=3
      end
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0
      local.get $3
      i32.load8_u $0 offset=4
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $3
       i32.store $0
       local.get $4
       local.get $3
       i32.store $0 offset=4
       local.get $3
       local.get $3
       i32.load8_u $0
       i32.const 1
       i32.sub
       i32.store8 $0
       local.get $4
       local.get $3
       i32.store $0
       local.get $3
       i32.const 0
       i32.store8 $0 offset=4
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0 offset=4
    local.get $3
    local.get $0
    i32.load $0
    local.tee $3
    i32.store $0
    local.get $3
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=4
     local.get $3
     local.get $0
     i32.load $0
     local.tee $4
     i32.store $0
     local.get $3
     local.get $4
     local.get $1
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.tee $3
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     local.get $3
     i32.load8_u $0 offset=2
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $3
      i32.store $0
      local.get $3
      i32.load8_u $0
      local.set $2
      local.get $4
      local.get $3
      i32.store $0
      local.get $3
      i32.const 0
      i32.store8 $0 offset=2
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|2
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|3
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0 offset=4
    local.get $3
    local.get $0
    i32.load $0
    local.tee $3
    i32.store $0
    local.get $3
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=4
     local.get $3
     local.get $0
     i32.load $0
     local.tee $4
     i32.store $0
     local.get $3
     local.get $4
     local.get $1
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.tee $3
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     local.get $3
     i32.load8_u $0 offset=1
     if
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0
      local.get $3
      local.get $2
      call $assembly/models/Register/Register8bit#setValue
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0
      local.get $3
      i32.const 0
      i32.store8 $0 offset=1
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|3
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|4
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.load $0
    local.tee $2
    i32.store $0
    local.get $2
    call $~lib/array/Array<assembly/models/Register/Register8bit>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $0
     i32.load $0
     local.tee $3
     i32.store $0
     local.get $2
     local.get $3
     local.get $1
     call $~lib/array/Array<assembly/models/Register/Register8bit>#__get
     local.tee $2
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|4
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42032
  i32.const 42080
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/modules/bus/tick
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  global.get $assembly/modules/bus/bus
  local.tee $0
  i32.store $0
  local.get $0
  call $assembly/models/Bus/Bus#updateRegisters
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/ALU/ALU8bit#calculate (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $0
        i32.load8_u $0 offset=5
        local.tee $1
        i32.const 22
        i32.ne
        if
         local.get $1
         i32.const 9
         i32.eq
         br_if $case1|0
         local.get $1
         i32.const 31
         i32.eq
         br_if $case2|0
         local.get $1
         i32.const 11
         i32.eq
         br_if $case3|0
         local.get $1
         i32.const 12
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store $0
        local.get $1
        local.get $0
        i32.store $0 offset=8
        local.get $1
        local.get $0
        i32.load $0 offset=8
        local.tee $2
        i32.store $0 offset=4
        local.get $2
        i32.load8_u $0
        local.set $2
        local.get $1
        local.get $0
        i32.store $0 offset=8
        local.get $1
        local.get $0
        i32.load $0 offset=12
        local.tee $1
        i32.store $0 offset=4
        local.get $0
        local.get $2
        local.get $1
        i32.load8_u $0
        i32.sub
        i32.store8 $0
        br $break|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $0
       i32.store $0
       local.get $1
       local.get $0
       i32.store $0 offset=8
       local.get $1
       local.get $0
       i32.load $0 offset=8
       local.tee $2
       i32.store $0 offset=4
       local.get $2
       i32.load8_u $0
       local.set $2
       local.get $1
       local.get $0
       i32.store $0 offset=8
       local.get $1
       local.get $0
       i32.load $0 offset=12
       local.tee $3
       i32.store $0 offset=4
       local.get $0
       local.get $2
       local.get $3
       i32.load8_u $0
       i32.add
       i32.store8 $0
       local.get $1
       local.get $0
       i32.store $0 offset=4
       local.get $1
       local.get $0
       i32.load $0 offset=16
       local.tee $1
       i32.store $0
       local.get $1
       i32.load8_u $0
       i32.const 1
       i32.and
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store $0
        local.get $1
        local.get $0
        i32.store $0 offset=4
        local.get $0
        local.get $0
        i32.load8_u $0
        i32.const 1
        i32.add
        i32.store8 $0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $0
       i32.store $0 offset=4
       local.get $1
       local.get $0
       i32.load $0 offset=8
       local.tee $2
       i32.store $0
       local.get $2
       i32.load8_u $0
       i32.const 7
       i32.shr_u
       local.set $2
       local.get $1
       local.get $0
       i32.store $0 offset=4
       local.get $1
       local.get $0
       i32.load $0 offset=12
       local.tee $3
       i32.store $0
       local.get $2
       local.get $3
       i32.load8_u $0
       i32.const 7
       i32.shr_u
       i32.eq
       local.set $3
       local.get $1
       local.get $0
       i32.store $0
       local.get $3
       local.get $0
       i32.load8_u $0
       i32.const 7
       i32.shr_u
       local.get $2
       i32.ne
       i32.and
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        local.get $0
        i32.const 1
        i32.store8 $0 offset=22
       else
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        local.get $0
        i32.const 0
        i32.store8 $0 offset=22
       end
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store $0
      local.get $1
      local.get $0
      i32.store $0 offset=8
      local.get $1
      local.get $0
      i32.load $0 offset=8
      local.tee $1
      i32.store $0 offset=4
      local.get $0
      local.get $1
      i32.load8_u $0
      i32.store8 $0
      br $break|0
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0
     local.get $1
     local.get $0
     i32.store $0 offset=8
     local.get $1
     local.get $0
     i32.load $0 offset=8
     local.tee $2
     i32.store $0 offset=4
     local.get $2
     i32.load8_u $0
     local.set $2
     local.get $1
     local.get $0
     i32.store $0 offset=8
     local.get $1
     local.get $0
     i32.load $0 offset=12
     local.tee $1
     i32.store $0 offset=4
     local.get $0
     local.get $2
     local.get $1
     i32.load8_u $0
     i32.or
     i32.store8 $0
     br $break|0
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.store $0 offset=8
    local.get $1
    local.get $0
    i32.load $0 offset=8
    local.tee $1
    i32.store $0 offset=4
    local.get $0
    local.get $1
    i32.load8_u $0
    i32.const 1
    i32.shl
    i32.store8 $0
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.const 0
   i32.store8 $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/models/ALU/ALU8bit#beforeTick (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.load $0 offset=8
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0
  local.set $3
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.load $0 offset=12
  local.tee $1
  i32.store $0
  local.get $3
  local.get $1
  i32.load8_u $0
  i32.add
  local.set $1
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.const 65535
  i32.and
  i32.const 255
  i32.gt_u
  i32.store8 $0 offset=21
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/models/ALU/ALU8bit#calculate
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0 offset=16
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0 offset=6
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load8_u $0
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 1
    call $assembly/models/Register/Register8bit#removeBit
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 1
    call $assembly/models/Register/Register8bit#setBit
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=16
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store8 $0 offset=6
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0 offset=16
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0 offset=7
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load8_u $0
   i32.const 7
   i32.shr_u
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 2
    call $assembly/models/Register/Register8bit#setBit
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 2
    call $assembly/models/Register/Register8bit#removeBit
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=16
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store8 $0 offset=7
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0 offset=16
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0 offset=5
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=16
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 5
   call $assembly/models/Register/Register8bit#setBit
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=16
   local.tee $1
   i32.store $0
   local.get $1
   i32.const 0
   i32.store8 $0 offset=5
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0 offset=16
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0 offset=8
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load8_u $0 offset=21
   if (result i32)
    i32.const 1
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load8_u $0 offset=20
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 0
    call $assembly/models/Register/Register8bit#setBit
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 0
    call $assembly/models/Register/Register8bit#removeBit
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=16
   local.tee $2
   i32.store $0
   local.get $2
   i32.const 0
   i32.store8 $0 offset=8
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.const 0
   i32.store8 $0 offset=20
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0 offset=16
  local.tee $1
  i32.store $0
  local.get $1
  i32.load8_u $0 offset=9
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load8_u $0 offset=22
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 3
    call $assembly/models/Register/Register8bit#setBit
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=16
    local.tee $1
    i32.store $0
    local.get $1
    i32.const 3
    call $assembly/models/Register/Register8bit#removeBit
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=16
   local.tee $0
   i32.store $0
   local.get $0
   i32.const 0
   i32.store8 $0 offset=9
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9232
  i32.lt_s
  if
   i32.const 42032
   i32.const 42080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
