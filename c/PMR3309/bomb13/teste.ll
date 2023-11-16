source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }
%hostent = type { i8*, i8**, i32, i32, i8** }
%sockaddr = type { i64, [14 x i8] }

@global_var_4fd8 = local_unnamed_addr global i64 0
@infile = local_unnamed_addr global i32* null
@global_var_3088 = constant [59 x i8] c"Welcome to my fiendish little bomb. You have 6 phases with\00"
@global_var_30c8 = constant [44 x i8] c"which to blow yourself up. Have a nice day!\00"
@global_var_30f8 = constant [41 x i8] c"Phase 1 defused. How about the next one?\00"
@global_var_303d = constant [30 x i8] c"That's number 2.  Keep going!\00"
@global_var_305b = constant [15 x i8] c"Halfway there!\00"
@global_var_3128 = constant [36 x i8] c"So you got that one.  Try this one.\00"
@global_var_306a = constant [30 x i8] c"Good work!  On to the next...\00"
@global_var_5690 = local_unnamed_addr global i64 0
@global_var_3006 = constant [29 x i8] c"%s: Error: Couldn't open %s\0A\00"
@global_var_3023 = constant [26 x i8] c"Usage: %s [<input_file>]\0A\00"
@global_var_3150 = constant [35 x i8] c"There are rumors on the internets.\00"
@global_var_33fd = constant [6 x i8] c"%d %d\00"
@global_var_31c0 = constant i64 42949672962
@global_var_5230 = global i64 4294967576
@global_var_3178 = constant [38 x i8] c"Wow! You've defused the secret stage!\00"
@global_var_3200 = constant [56 x i8] c"So you think you can stop the bomb with ctrl-c, do you?\00"
@global_var_3379 = constant [8 x i8] c"Well...\00"
@global_var_3381 = constant [8 x i8] c"OK. :-)\00"
@global_var_3389 = constant [17 x i8] c"Invalid phase%s\0A\00"
@global_var_339a = constant [26 x i8] c"Initialization error:\0A%s\0A\00"
@global_var_3238 = constant [32 x i8] c"Error: Cannot connect to server\00"
@global_var_33b4 = constant [8 x i8] c"defused\00"
@global_var_33bc = constant [9 x i8] c"exploded\00"
@global_var_33c5 = constant [12 x i8] c"%d:%s:%d:%s\00"
@global_var_5120 = constant [21 x i8] c"UGXwXOdn08DTaLWKk86Y\00"
@global_var_5138 = constant [9 x i8] c"10773530\00"
@global_var_3258 = constant [34 x i8] c"ERROR: Input string is too large.\00"
@global_var_33d1 = constant [9 x i8] c"\0ABOOM!!!\00"
@global_var_33da = constant [23 x i8] c"The bomb has blown up.\00"
@global_var_3280 = constant [35 x i8] c"Your instructor has been notified.\00"
@global_var_33f1 = constant [18 x i8] c"%d %d %d %d %d %d\00"
@global_var_3421 = constant [11 x i8] c"GRADE_BOMB\00"
@global_var_3403 = constant [30 x i8] c"Error: Premature EOF on stdin\00"
@global_var_342c = constant [27 x i8] c"Error: Input line too long\00"
@global_var_56c8 = local_unnamed_addr global i64 0
@global_var_3447 = constant [9 x i8] c"%d %d %s\00"
@global_var_3308 = constant [42 x i8] c"Congratulations! You've defused the bomb!\00"
@global_var_3338 = constant [65 x i8] c"Your instructor has been notified and will verify your solution.\00"
@global_var_3450 = constant [7 x i8] c"DrEvil\00"
@global_var_32a8 = constant [39 x i8] c"Curses, you've found the secret phase!\00"
@global_var_32d0 = constant [53 x i8] c"But finding it and solving it are quite different...\00"
@global_var_3490 = constant [36 x i8] c"Program timed out after %d seconds\0A\00"
@global_var_400 = global i64 77309411541
@global_var_3566 = constant [7 x i8] c"%%%02X\00"
@global_var_356d = constant [17 x i8] c"%s %d %[a-zA-z ]\00"
@global_var_357e = constant [3 x i8] c"\0D\0A\00"
@global_var_34b8 = constant [45 x i8] c"Error: HTTP request failed with error %d: %s\00"
@global_var_3581 = constant [3 x i8] c"OK\00"
@global_var_34e8 = constant [85 x i8] c"GET /%s/submitr.pl/?userid=%s&userpwd=%s&lab=%s&result=%s&submit=submit HTTP/1.0\0D\0A\0D\0A\00"
@global_var_3584 = constant [16 x i8] c"200.144.254.191\00"
@global_var_3540 = constant [38 x i8] c"Error: Unable to connect to server %s\00"
@global_var_3594 = constant [23 x i8] c"\0AAUTORESULT_STRING=%s\0A\00"
@global_var_35ab = constant [13 x i8] c"pmr3309_2021\00"
@global_var_35b8 = constant [6 x i8] c"csapp\00"
@global_var_3b6e = constant i64 1027137434702971456
@global_var_4cf8 = global i64 4816
@global_var_4d00 = global i64 4752
@0 = external global i32
@global_var_5680 = global %_IO_FILE* null
@global_var_56a8 = local_unnamed_addr global i8 0
@1 = internal constant [2 x i8] c"r\00"
@2 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i64 0, i64 0)
@global_var_31a0 = constant i32* inttoptr (i64 -31353261268108 to i32*)
@global_var_3e8 = global i32 92
@global_var_5150 = global i32 36
@global_var_56c0 = external global i8*
@global_var_56ac = external local_unnamed_addr global i128
@global_var_56ab = global i32 0
@global_var_5144 = local_unnamed_addr global i32 13
@global_var_56ad = global i32 0
@global_var_57b0 = external global i8*
@global_var_56a0 = local_unnamed_addr global %_IO_FILE* null
@global_var_3004 = constant [2 x i8] c"r\00"

define i64 @_init() local_unnamed_addr {
dec_label_pc_1000:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* inttoptr (i64 20456 to i64*), align 8, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_1016, label %dec_label_pc_1014, !insn.addr !3

dec_label_pc_1014:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_1016, !insn.addr !4

dec_label_pc_1016:                                ; preds = %dec_label_pc_1014, %dec_label_pc_1000
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define i8* @function_1030(i8* %name) local_unnamed_addr {
dec_label_pc_1030:
  %0 = call i8* @getenv(i8* %name), !insn.addr !6
  ret i8* %0, !insn.addr !6
}

define i32* @function_1040() local_unnamed_addr {
dec_label_pc_1040:
  %0 = call i32* @__errno_location(), !insn.addr !7
  ret i32* %0, !insn.addr !7
}

define i8* @function_1050(i8* %dest, i8* %src) local_unnamed_addr {
dec_label_pc_1050:
  %0 = call i8* @strcpy(i8* %dest, i8* %src), !insn.addr !8
  ret i8* %0, !insn.addr !8
}

define i32 @function_1060(i8* %s) local_unnamed_addr {
dec_label_pc_1060:
  %0 = call i32 @puts(i8* %s), !insn.addr !9
  ret i32 %0, !insn.addr !9
}

define i32 @function_1070(i32 %fd, i64* %buf, i32 %n) local_unnamed_addr {
dec_label_pc_1070:
  %0 = call i32 @write(i32 %fd, i64* %buf, i32 %n), !insn.addr !10
  ret i32 %0, !insn.addr !10
}

define void @function_1080() local_unnamed_addr {
dec_label_pc_1080:
  call void @__stack_chk_fail(), !insn.addr !11
  ret void, !insn.addr !11
}

define i32 @function_1090(i32 %seconds) local_unnamed_addr {
dec_label_pc_1090:
  %0 = call i32 @alarm(i32 %seconds), !insn.addr !12
  ret i32 %0, !insn.addr !12
}

define i32 @function_10a0(i32 %fd) local_unnamed_addr {
dec_label_pc_10a0:
  %0 = call i32 @close(i32 %fd), !insn.addr !13
  ret i32 %0, !insn.addr !13
}

define i32 @function_10b0(i32 %fd, i64* %buf, i32 %nbytes) local_unnamed_addr {
dec_label_pc_10b0:
  %0 = call i32 @read(i32 %fd, i64* %buf, i32 %nbytes), !insn.addr !14
  ret i32 %0, !insn.addr !14
}

define i8* @function_10c0(i8* %s, i32 %n, %_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_10c0:
  %0 = call i8* @fgets(i8* %s, i32 %n, %_IO_FILE* %stream), !insn.addr !15
  ret i8* %0, !insn.addr !15
}

define void (i32)* @function_10d0(i32 %sig, void (i32)* %handler) local_unnamed_addr {
dec_label_pc_10d0:
  %0 = call void (i32)* @signal(i32 %sig, void (i32)* %handler), !insn.addr !16
  ret void (i32)* %0, !insn.addr !16
}

define %hostent* @function_10e0(i8* %name) local_unnamed_addr {
dec_label_pc_10e0:
  %0 = call %hostent* @gethostbyname(i8* %name), !insn.addr !17
  ret %hostent* %0, !insn.addr !17
}

define i64* @function_10f0(i64* %dest, i64* %src, i32 %len, i32 %dstlen) local_unnamed_addr {
dec_label_pc_10f0:
  %0 = call i64* @__memmove_chk(i64* %dest, i64* %src, i32 %len, i32 %dstlen), !insn.addr !18
  ret i64* %0, !insn.addr !18
}

define i32 @function_1100(i8* %nptr, i8** %endptr, i32 %base) local_unnamed_addr {
dec_label_pc_1100:
  %0 = call i32 @strtol(i8* %nptr, i8** %endptr, i32 %base), !insn.addr !19
  ret i32 %0, !insn.addr !19
}

define i32 @function_1110(%_IO_FILE* %stream) local_unnamed_addr {
dec_label_pc_1110:
  %0 = call i32 @fflush(%_IO_FILE* %stream), !insn.addr !20
  ret i32 %0, !insn.addr !20
}

define i32 @function_1120(i8* %s, i8* %format, ...) local_unnamed_addr {
dec_label_pc_1120:
  %0 = call i32 (i8*, i8*, ...) @sscanf(i8* %s, i8* %format), !insn.addr !21
  ret i32 %0, !insn.addr !21
}

define i32 @function_1130(i32 %flag, i8* %format, ...) local_unnamed_addr {
dec_label_pc_1130:
  %0 = call i32 (i32, i8*, ...) @__printf_chk(i32 %flag, i8* %format), !insn.addr !22
  ret i32 %0, !insn.addr !22
}

define %_IO_FILE* @function_1140(i8* %filename, i8* %modes) local_unnamed_addr {
dec_label_pc_1140:
  %0 = call %_IO_FILE* @fopen(i8* %filename, i8* %modes), !insn.addr !23
  ret %_IO_FILE* %0, !insn.addr !23
}

define void @function_1150(i32 %status) local_unnamed_addr {
dec_label_pc_1150:
  call void @exit(i32 %status), !insn.addr !24
  ret void, !insn.addr !24
}

define i32 @function_1160(i32 %fd, %sockaddr* %addr, i32 %len) local_unnamed_addr {
dec_label_pc_1160:
  %0 = call i32 @connect(i32 %fd, %sockaddr* %addr, i32 %len), !insn.addr !25
  ret i32 %0, !insn.addr !25
}

define i32 @function_1170(%_IO_FILE* %stream, i32 %flag, i8* %format, ...) local_unnamed_addr {
dec_label_pc_1170:
  %0 = call i32 (%_IO_FILE*, i32, i8*, ...) @__fprintf_chk(%_IO_FILE* %stream, i32 %flag, i8* %format), !insn.addr !26
  ret i32 %0, !insn.addr !26
}

define i32 @function_1180(i32 %seconds) local_unnamed_addr {
dec_label_pc_1180:
  %0 = call i32 @sleep(i32 %seconds), !insn.addr !27
  ret i32 %0, !insn.addr !27
}

define i16** @function_1190() local_unnamed_addr {
dec_label_pc_1190:
  %0 = call i16** @__ctype_b_loc(), !insn.addr !28
  ret i16** %0, !insn.addr !28
}

define i32 @function_11a0(i8* %s, i32 %flag, i32 %slen, i8* %format, ...) local_unnamed_addr {
dec_label_pc_11a0:
  %0 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* %s, i32 %flag, i32 %slen, i8* %format), !insn.addr !29
  ret i32 %0, !insn.addr !29
}

define i32 @function_11b0(i32 %domain, i32 %type, i32 %protocol) local_unnamed_addr {
dec_label_pc_11b0:
  %0 = call i32 @socket(i32 %domain, i32 %type, i32 %protocol), !insn.addr !30
  ret i32 %0, !insn.addr !30
}

define void @function_11c0(i64* %d) local_unnamed_addr {
dec_label_pc_11c0:
  call void @__cxa_finalize(i64* %d), !insn.addr !31
  ret void, !insn.addr !31
}

define i64 @_start(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_11d0:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg4 to i32, !insn.addr !32
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !32
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !32
  %3 = call i32 @__libc_start_main(i64 4826, i32 %0, i8** nonnull %1, void ()* inttoptr (i64 11056 to void ()*), void ()* inttoptr (i64 11168 to void ()*), void ()* %2), !insn.addr !32
  %4 = call i64 @__asm_hlt(), !insn.addr !33
  unreachable, !insn.addr !33
}

define i64 @deregister_tm_clones() local_unnamed_addr {
dec_label_pc_1200:
  ret i64 ptrtoint (%_IO_FILE** @global_var_5680 to i64), !insn.addr !34
}

define i64 @register_tm_clones() local_unnamed_addr {
dec_label_pc_1240:
  ret i64 0, !insn.addr !35
}

define i64 @__do_global_dtors_aux() local_unnamed_addr {
dec_label_pc_1290:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* @global_var_56a8, align 1, !insn.addr !36
  %3 = icmp eq i8 %2, 0, !insn.addr !36
  %4 = icmp eq i1 %3, false, !insn.addr !37
  br i1 %4, label %dec_label_pc_12c8, label %dec_label_pc_1299, !insn.addr !37

dec_label_pc_1299:                                ; preds = %dec_label_pc_1290
  %5 = load i64, i64* inttoptr (i64 20472 to i64*), align 8, !insn.addr !38
  %6 = icmp eq i64 %5, 0, !insn.addr !38
  br i1 %6, label %dec_label_pc_12b3, label %dec_label_pc_12a7, !insn.addr !39

dec_label_pc_12a7:                                ; preds = %dec_label_pc_1299
  %7 = load i64, i64* inttoptr (i64 20488 to i64*), align 8, !insn.addr !40
  %8 = inttoptr i64 %7 to i64*, !insn.addr !41
  call void @__cxa_finalize(i64* %8), !insn.addr !41
  br label %dec_label_pc_12b3, !insn.addr !41

dec_label_pc_12b3:                                ; preds = %dec_label_pc_12a7, %dec_label_pc_1299
  %9 = call i64 @deregister_tm_clones(), !insn.addr !42
  store i8 1, i8* @global_var_56a8, align 1, !insn.addr !43
  ret i64 %9, !insn.addr !44

dec_label_pc_12c8:                                ; preds = %dec_label_pc_1290
  ret i64 %1, !insn.addr !45

; uselistorder directives
  uselistorder i8* @global_var_56a8, { 1, 0 }
}

define i64 @frame_dummy() local_unnamed_addr {
dec_label_pc_12d0:
  %0 = call i64 @register_tm_clones(), !insn.addr !46
  ret i64 %0, !insn.addr !46
}

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_12da:
  %0 = icmp eq i32 %argc, 1, !insn.addr !47
  br i1 %0, label %dec_label_pc_13dc, label %dec_label_pc_12e4, !insn.addr !48

dec_label_pc_12e4:                                ; preds = %dec_label_pc_12da
  %1 = icmp eq i32 %argc, 2, !insn.addr !49
  %2 = icmp eq i1 %1, false, !insn.addr !50
  br i1 %2, label %dec_label_pc_1411, label %dec_label_pc_12f0, !insn.addr !50

dec_label_pc_12f0:                                ; preds = %dec_label_pc_12e4
  %3 = ptrtoint i8** %argv to i64
  %4 = add i64 %3, 8, !insn.addr !51
  %5 = inttoptr i64 %4 to i64*, !insn.addr !51
  %6 = load i64, i64* %5, align 8, !insn.addr !51
  %7 = inttoptr i64 %6 to i8*, !insn.addr !52
  %8 = call %_IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_3004, i64 0, i64 0)), !insn.addr !52
  %9 = ptrtoint %_IO_FILE* %8 to i64, !insn.addr !52
  store i64 %9, i64* bitcast (i32** @infile to i64*), align 8, !insn.addr !53
  %10 = icmp eq %_IO_FILE* %8, null, !insn.addr !54
  br i1 %10, label %dec_label_pc_13ef, label %dec_label_pc_1310, !insn.addr !55

dec_label_pc_1310:                                ; preds = %dec_label_pc_13dc, %dec_label_pc_12f0
  %11 = call i64 @initialize_bomb(), !insn.addr !56
  %12 = call i32 @puts(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @global_var_3088, i64 0, i64 0)), !insn.addr !57
  %13 = call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @global_var_30c8, i64 0, i64 0)), !insn.addr !58
  %14 = call i64 @read_line(), !insn.addr !59
  %15 = call i64 @phase_1(), !insn.addr !60
  %16 = call i64 @phase_defused(), !insn.addr !61
  %17 = call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_var_30f8, i64 0, i64 0)), !insn.addr !62
  %18 = call i64 @read_line(), !insn.addr !63
  %19 = call i64 @phase_2(), !insn.addr !64
  %20 = call i64 @phase_defused(), !insn.addr !65
  %21 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_var_303d, i64 0, i64 0)), !insn.addr !66
  %22 = call i64 @read_line(), !insn.addr !67
  %23 = call i64 @phase_3(i64 ptrtoint (i32* @0 to i64), i64 ptrtoint (i32* @0 to i64), i64 ptrtoint (i32* @0 to i64)), !insn.addr !68
  %24 = call i64 @phase_defused(), !insn.addr !69
  %25 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_305b, i64 0, i64 0)), !insn.addr !70
  %26 = call i64 @read_line(), !insn.addr !71
  %27 = call i64 @phase_4(), !insn.addr !72
  %28 = call i64 @phase_defused(), !insn.addr !73
  %29 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_var_3128, i64 0, i64 0)), !insn.addr !74
  %30 = call i64 @read_line(), !insn.addr !75
  %31 = call i64 @phase_5(i64 %30), !insn.addr !76
  %32 = call i64 @phase_defused(), !insn.addr !77
  %33 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_var_306a, i64 0, i64 0)), !insn.addr !78
  %34 = call i64 @read_line(), !insn.addr !79
  %35 = call i64 @phase_6(), !insn.addr !80
  %36 = call i64 @phase_defused(), !insn.addr !81
  ret i32 0, !insn.addr !82

dec_label_pc_13dc:                                ; preds = %dec_label_pc_12da
  %37 = load i64, i64* @global_var_5690, align 8, !insn.addr !83
  store i64 %37, i64* bitcast (i32** @infile to i64*), align 8, !insn.addr !84
  br label %dec_label_pc_1310, !insn.addr !85

dec_label_pc_13ef:                                ; preds = %dec_label_pc_12f0
  %38 = load i64, i64* %5, align 8, !insn.addr !86
  %39 = inttoptr i64 %38 to i8*, !insn.addr !87
  %40 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_var_3006, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_3004, i64 0, i64 0), i8* %39), !insn.addr !87
  call void @exit(i32 8), !insn.addr !88
  unreachable, !insn.addr !88

dec_label_pc_1411:                                ; preds = %dec_label_pc_12e4
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_var_3023, i64 0, i64 0), i8** %argv), !insn.addr !89
  call void @exit(i32 8), !insn.addr !90
  ret i32 ptrtoint (i32* @0 to i32), !insn.addr !90
}

define i64 @phase_1() local_unnamed_addr {
dec_label_pc_1434:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = call i64 @strings_not_equal(i64 %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_var_3150, i64 0, i64 0)), !insn.addr !91
  %3 = trunc i64 %2 to i32, !insn.addr !92
  %4 = icmp eq i32 %3, 0, !insn.addr !92
  %5 = icmp eq i1 %4, false, !insn.addr !93
  br i1 %5, label %dec_label_pc_144d, label %dec_label_pc_1448, !insn.addr !93

dec_label_pc_1448:                                ; preds = %dec_label_pc_1434
  ret i64 %2, !insn.addr !94

dec_label_pc_144d:                                ; preds = %dec_label_pc_1434
  %6 = call i64 @explode_bomb(), !insn.addr !95
  unreachable, !insn.addr !95
}

define i64 @phase_2() local_unnamed_addr {
dec_label_pc_1454:
  %0 = alloca i64
  %1 = alloca i32
  %rbx.0.reg2mem = alloca i64, !insn.addr !96
  %.reg2mem = alloca i32, !insn.addr !96
  %2 = load i64, i64* %0
  %stack_var_-40 = alloca i64, align 8
  %3 = load i32, i32* %1
  %stack_var_-56 = alloca i32, align 4
  %4 = call i64 @__readfsqword(i64 40), !insn.addr !97
  %5 = bitcast i32* %stack_var_-56 to i64*, !insn.addr !98
  %6 = call i64 @read_six_numbers(i64 %2, i64* nonnull %5), !insn.addr !98
  %7 = load i32, i32* %stack_var_-56, align 4, !insn.addr !99
  %8 = icmp eq i32 %7, 0, !insn.addr !99
  %9 = icmp eq i32 %3, 1, !insn.addr !100
  %or.cond = icmp eq i1 %9, %8
  br i1 %or.cond, label %dec_label_pc_1484, label %dec_label_pc_147f, !insn.addr !101

dec_label_pc_147f:                                ; preds = %dec_label_pc_1454
  %10 = call i64 @explode_bomb(), !insn.addr !102
  unreachable, !insn.addr !102

dec_label_pc_1484:                                ; preds = %dec_label_pc_1454
  %11 = ptrtoint i32* %stack_var_-56 to i64, !insn.addr !103
  %12 = ptrtoint i64* %stack_var_-40 to i64, !insn.addr !104
  store i32 0, i32* %.reg2mem, !insn.addr !105
  store i64 %11, i64* %rbx.0.reg2mem, !insn.addr !105
  br label %dec_label_pc_1496, !insn.addr !105

dec_label_pc_148d:                                ; preds = %dec_label_pc_1496
  %13 = icmp eq i64 %14, %12, !insn.addr !106
  store i32 %16, i32* %.reg2mem, !insn.addr !107
  store i64 %14, i64* %rbx.0.reg2mem, !insn.addr !107
  br i1 %13, label %dec_label_pc_14a7, label %dec_label_pc_1496, !insn.addr !107

dec_label_pc_1496:                                ; preds = %dec_label_pc_148d, %dec_label_pc_1484
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %.reload = load i32, i32* %.reg2mem, !insn.addr !108
  %14 = add i64 %rbx.0.reload, 4, !insn.addr !109
  %15 = inttoptr i64 %14 to i32*, !insn.addr !109
  %16 = load i32, i32* %15, align 4, !insn.addr !109
  %17 = add i32 %16, %.reload, !insn.addr !108
  %18 = add i64 %rbx.0.reload, 8, !insn.addr !110
  %19 = inttoptr i64 %18 to i32*, !insn.addr !110
  %20 = load i32, i32* %19, align 4, !insn.addr !110
  %21 = icmp eq i32 %20, %17, !insn.addr !110
  br i1 %21, label %dec_label_pc_148d, label %dec_label_pc_14a0, !insn.addr !111

dec_label_pc_14a0:                                ; preds = %dec_label_pc_1496
  %22 = call i64 @explode_bomb(), !insn.addr !112
  unreachable, !insn.addr !112

dec_label_pc_14a7:                                ; preds = %dec_label_pc_148d
  %23 = call i64 @__readfsqword(i64 40), !insn.addr !113
  %24 = xor i64 %23, %4, !insn.addr !113
  %25 = icmp eq i64 %24, 0, !insn.addr !113
  %26 = icmp eq i1 %25, false, !insn.addr !114
  br i1 %26, label %dec_label_pc_14be, label %dec_label_pc_14b7, !insn.addr !114

dec_label_pc_14b7:                                ; preds = %dec_label_pc_14a7
  ret i64 %24, !insn.addr !115

dec_label_pc_14be:                                ; preds = %dec_label_pc_14a7
  call void @__stack_chk_fail(), !insn.addr !116
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !116

; uselistorder directives
  uselistorder i32 %16, { 1, 0 }
  uselistorder i64 %14, { 2, 1, 0 }
  uselistorder i32* %stack_var_-56, { 1, 0, 2 }
}

define i64 @phase_3(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_14c3:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %stack_var_-20 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40), !insn.addr !117
  %3 = inttoptr i64 %1 to i8*, !insn.addr !118
  %4 = call i32 (i8*, i8*, ...) @sscanf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_var_33fd, i64 0, i64 0), i64* nonnull %stack_var_-24, i64* nonnull %stack_var_-20), !insn.addr !118
  %5 = icmp slt i32 %4, 2, !insn.addr !119
  br i1 %5, label %dec_label_pc_150d, label %dec_label_pc_14f0, !insn.addr !119

dec_label_pc_14f0:                                ; preds = %dec_label_pc_14c3
  %6 = load i64, i64* %stack_var_-24, align 8, !insn.addr !120
  %7 = trunc i64 %6 to i32, !insn.addr !120
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %dec_label_pc_14fa, label %dec_label_pc_1591, !insn.addr !121

dec_label_pc_14fa:                                ; preds = %dec_label_pc_14f0
  %9 = mul i64 %6, 4, !insn.addr !122
  %10 = and i64 %9, 17179869180, !insn.addr !123
  %11 = add i64 %10, ptrtoint (i32** @global_var_31a0 to i64), !insn.addr !123
  %12 = inttoptr i64 %11 to i32*, !insn.addr !123
  %13 = load i32, i32* %12, align 4, !insn.addr !123
  %14 = sext i32 %13 to i64, !insn.addr !123
  %15 = add i64 %14, ptrtoint (i32** @global_var_31a0 to i64), !insn.addr !124
  ret i64 %15, !insn.addr !125

dec_label_pc_150d:                                ; preds = %dec_label_pc_14c3
  %16 = call i64 @explode_bomb(), !insn.addr !126
  unreachable, !insn.addr !126

dec_label_pc_1591:                                ; preds = %dec_label_pc_14f0
  %17 = call i64 @explode_bomb(), !insn.addr !127
  unreachable, !insn.addr !127

; uselistorder directives
  uselistorder i64* %stack_var_-24, { 1, 0 }
  uselistorder i64 ptrtoint (i32** @global_var_31a0 to i64), { 1, 0 }
}

define i64 @func4(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_15a2:
  %rax.0.reg2mem = alloca i64, !insn.addr !128
  %0 = sub i64 %arg3, %arg2, !insn.addr !129
  %1 = trunc i64 %0 to i32, !insn.addr !130
  %2 = icmp slt i32 %1, 0
  %3 = zext i1 %2 to i32, !insn.addr !131
  %4 = add i32 %3, %1, !insn.addr !132
  %5 = ashr i32 %4, 1, !insn.addr !133
  %6 = trunc i64 %arg2 to i32, !insn.addr !134
  %7 = add i32 %5, %6, !insn.addr !134
  %8 = zext i32 %7 to i64, !insn.addr !134
  %9 = icmp sgt i64 %8, %arg1, !insn.addr !135
  br i1 %9, label %dec_label_pc_15c7, label %dec_label_pc_15b9, !insn.addr !135

dec_label_pc_15b9:                                ; preds = %dec_label_pc_15a2
  %10 = icmp slt i64 %8, %arg1, !insn.addr !136
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !136
  br i1 %10, label %dec_label_pc_15d3, label %dec_label_pc_15c2, !insn.addr !136

dec_label_pc_15c2:                                ; preds = %dec_label_pc_15d3, %dec_label_pc_15c7, %dec_label_pc_15b9
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !137

dec_label_pc_15c7:                                ; preds = %dec_label_pc_15a2
  %11 = add i32 %7, -1
  %12 = zext i32 %11 to i64, !insn.addr !138
  %13 = call i64 @func4(i64 %arg1, i64 %arg2, i64 %12), !insn.addr !139
  %14 = mul i64 %13, 2, !insn.addr !140
  %15 = and i64 %14, 4294967294, !insn.addr !140
  store i64 %15, i64* %rax.0.reg2mem, !insn.addr !141
  br label %dec_label_pc_15c2, !insn.addr !141

dec_label_pc_15d3:                                ; preds = %dec_label_pc_15b9
  %16 = add i32 %7, 1
  %17 = zext i32 %16 to i64, !insn.addr !142
  %18 = call i64 @func4(i64 %arg1, i64 %17, i64 %arg3), !insn.addr !143
  %factor = mul i64 %18, 2
  %19 = and i64 %factor, 4294967294, !insn.addr !144
  %20 = or i64 %19, 1, !insn.addr !144
  store i64 %20, i64* %rax.0.reg2mem, !insn.addr !145
  br label %dec_label_pc_15c2, !insn.addr !145

; uselistorder directives
  uselistorder i32 %7, { 1, 0, 2 }
  uselistorder i32 %1, { 1, 0 }
  uselistorder i64* %rax.0.reg2mem, { 2, 3, 0, 1 }
  uselistorder i64 %arg2, { 0, 2, 1 }
  uselistorder i64 %arg1, { 1, 2, 0, 3 }
}

define i64 @phase_4() local_unnamed_addr {
dec_label_pc_15e1:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %stack_var_-20 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40), !insn.addr !146
  %3 = inttoptr i64 %1 to i8*, !insn.addr !147
  %4 = call i32 (i8*, i8*, ...) @sscanf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_var_33fd, i64 0, i64 0), i64* nonnull %stack_var_-24, i64* nonnull %stack_var_-20), !insn.addr !147
  %5 = icmp eq i32 %4, 2, !insn.addr !148
  %6 = icmp eq i1 %5, false, !insn.addr !149
  br i1 %6, label %dec_label_pc_1614, label %dec_label_pc_160e, !insn.addr !149

dec_label_pc_160e:                                ; preds = %dec_label_pc_15e1
  %7 = load i64, i64* %stack_var_-24, align 8, !insn.addr !150
  %8 = trunc i64 %7 to i32, !insn.addr !150
  %9 = icmp ult i32 %8, 15
  br i1 %9, label %dec_label_pc_1619, label %dec_label_pc_1614, !insn.addr !151

dec_label_pc_1614:                                ; preds = %dec_label_pc_160e, %dec_label_pc_15e1
  %10 = call i64 @explode_bomb(), !insn.addr !152
  unreachable, !insn.addr !152

dec_label_pc_1619:                                ; preds = %dec_label_pc_160e
  %11 = and i64 %7, 4294967295, !insn.addr !153
  %12 = call i64 @func4(i64 %11, i64 0, i64 14), !insn.addr !154
  %13 = trunc i64 %12 to i32, !insn.addr !155
  %14 = icmp eq i32 %13, 7, !insn.addr !155
  %15 = icmp eq i1 %14, false, !insn.addr !156
  br i1 %15, label %dec_label_pc_1637, label %dec_label_pc_1630, !insn.addr !156

dec_label_pc_1630:                                ; preds = %dec_label_pc_1619
  %16 = load i64, i64* %stack_var_-20, align 8, !insn.addr !157
  %17 = trunc i64 %16 to i32, !insn.addr !157
  %18 = icmp eq i32 %17, 7, !insn.addr !157
  br i1 %18, label %dec_label_pc_163c, label %dec_label_pc_1637, !insn.addr !158

dec_label_pc_1637:                                ; preds = %dec_label_pc_1630, %dec_label_pc_1619
  %19 = call i64 @explode_bomb(), !insn.addr !159
  unreachable, !insn.addr !159

dec_label_pc_163c:                                ; preds = %dec_label_pc_1630
  %20 = call i64 @__readfsqword(i64 40), !insn.addr !160
  %21 = xor i64 %20, %2, !insn.addr !160
  %22 = icmp eq i64 %21, 0, !insn.addr !160
  %23 = icmp eq i1 %22, false, !insn.addr !161
  br i1 %23, label %dec_label_pc_1651, label %dec_label_pc_164c, !insn.addr !161

dec_label_pc_164c:                                ; preds = %dec_label_pc_163c
  ret i64 %21, !insn.addr !162

dec_label_pc_1651:                                ; preds = %dec_label_pc_163c
  call void @__stack_chk_fail(), !insn.addr !163
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !163

; uselistorder directives
  uselistorder i64* %stack_var_-24, { 1, 0 }
  uselistorder i64* %stack_var_-20, { 1, 0 }
  uselistorder i64 (i64, i64, i64)* @func4, { 0, 2, 1 }
}

define i64 @phase_5(i64 %arg1) local_unnamed_addr {
dec_label_pc_1656:
  %rcx.0.reg2mem = alloca i32, !insn.addr !164
  %rax.0.reg2mem = alloca i64, !insn.addr !164
  %0 = call i64 @string_length(i64 %arg1), !insn.addr !165
  %1 = trunc i64 %0 to i32, !insn.addr !166
  %2 = icmp eq i32 %1, 6, !insn.addr !166
  %3 = icmp eq i1 %2, false, !insn.addr !167
  br i1 %3, label %dec_label_pc_1695, label %dec_label_pc_1677.preheader, !insn.addr !167

dec_label_pc_1677.preheader:                      ; preds = %dec_label_pc_1656
  %4 = add nsw i64 %arg1, 5
  store i64 %arg1, i64* %rax.0.reg2mem
  store i32 0, i32* %rcx.0.reg2mem
  br label %dec_label_pc_1677

dec_label_pc_1677:                                ; preds = %dec_label_pc_1677.preheader, %dec_label_pc_1677
  %rcx.0.reload = load i32, i32* %rcx.0.reg2mem
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %5 = inttoptr i64 %rax.0.reload to i8*, !insn.addr !168
  %6 = load i8, i8* %5, align 1, !insn.addr !168
  %7 = mul i8 %6, 4
  %8 = and i8 %7, 60
  %9 = zext i8 %8 to i64, !insn.addr !169
  %10 = add i64 %9, ptrtoint (i64* @global_var_31c0 to i64), !insn.addr !169
  %11 = inttoptr i64 %10 to i32*, !insn.addr !169
  %12 = load i32, i32* %11, align 4, !insn.addr !169
  %13 = add i32 %12, %rcx.0.reload, !insn.addr !169
  %14 = add i64 %rax.0.reload, 1, !insn.addr !170
  %15 = icmp eq i64 %rax.0.reload, %4, !insn.addr !171
  %16 = icmp eq i1 %15, false, !insn.addr !172
  store i64 %14, i64* %rax.0.reg2mem, !insn.addr !172
  store i32 %13, i32* %rcx.0.reg2mem, !insn.addr !172
  br i1 %16, label %dec_label_pc_1677, label %dec_label_pc_1689, !insn.addr !172

dec_label_pc_1689:                                ; preds = %dec_label_pc_1677
  %17 = icmp eq i32 %13, 63, !insn.addr !173
  br i1 %17, label %dec_label_pc_1693, label %dec_label_pc_168e, !insn.addr !174

dec_label_pc_168e:                                ; preds = %dec_label_pc_1689
  %18 = call i64 @explode_bomb(), !insn.addr !175
  unreachable, !insn.addr !175

dec_label_pc_1693:                                ; preds = %dec_label_pc_1689
  ret i64 %14, !insn.addr !176

dec_label_pc_1695:                                ; preds = %dec_label_pc_1656
  %19 = call i64 @explode_bomb(), !insn.addr !177
  unreachable, !insn.addr !177

; uselistorder directives
  uselistorder i64 %14, { 1, 0 }
  uselistorder i32 %13, { 1, 0 }
  uselistorder i64 %rax.0.reload, { 2, 1, 0 }
  uselistorder i64* %rax.0.reg2mem, { 2, 0, 1 }
  uselistorder i32* %rcx.0.reg2mem, { 2, 0, 1 }
  uselistorder label %dec_label_pc_1677, { 1, 0 }
}

define i64 @phase_6() local_unnamed_addr {
dec_label_pc_169c:
  %0 = alloca i32*
  %1 = alloca i64
  %rbp.0.reg2mem = alloca i32, !insn.addr !178
  %rbx.1.reg2mem = alloca i64, !insn.addr !178
  %.reg2mem4 = alloca i32, !insn.addr !178
  %rsi.0.reg2mem = alloca i64, !insn.addr !178
  %rdx.1.reg2mem = alloca i64, !insn.addr !178
  %rdx.0.reg2mem = alloca i64, !insn.addr !178
  %rax.0.reg2mem = alloca i64, !insn.addr !178
  %r12.0.reg2mem = alloca i64, !insn.addr !178
  %r13.02.reg2mem = alloca i64, !insn.addr !178
  %r14.03.reg2mem = alloca i64, !insn.addr !178
  %.reg2mem = alloca i32, !insn.addr !178
  %rbx.0.reg2mem = alloca i64, !insn.addr !178
  %2 = load i64, i64* %1
  %3 = load i64, i64* %1
  %4 = load i64, i64* %1
  %5 = load i64, i64* %1
  %6 = load i64, i64* %1
  %7 = load i64, i64* %1
  %8 = load i32*, i32** %0
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %9 = ptrtoint i64* %stack_var_-136 to i64, !insn.addr !179
  %10 = call i64 @__readfsqword(i64 40), !insn.addr !180
  %11 = call i64 @read_six_numbers(i64 %2, i64* nonnull %stack_var_-136), !insn.addr !181
  %12 = bitcast i64* %stack_var_-136 to i32*, !insn.addr !182
  %13 = load i32, i32* %12, align 8, !insn.addr !182
  %14 = add i32 %13, -1, !insn.addr !183
  %15 = icmp ult i32 %14, 6
  store i32 %13, i32* %.reg2mem, !insn.addr !184
  store i64 0, i64* %r14.03.reg2mem, !insn.addr !184
  store i64 %9, i64* %r13.02.reg2mem, !insn.addr !184
  br i1 %15, label %dec_label_pc_1702, label %dec_label_pc_16ce, !insn.addr !184

dec_label_pc_16ce:                                ; preds = %dec_label_pc_16ef, %dec_label_pc_169c
  %16 = call i64 @explode_bomb(), !insn.addr !185
  unreachable, !insn.addr !185

dec_label_pc_16d5:                                ; preds = %dec_label_pc_16dd
  %17 = add nuw nsw i64 %rbx.0.reload, 1, !insn.addr !186
  %18 = and i64 %17, 4294967295, !insn.addr !186
  %19 = trunc i64 %17 to i32, !insn.addr !187
  %20 = icmp sgt i32 %19, 5, !insn.addr !187
  store i64 %18, i64* %rbx.0.reg2mem, !insn.addr !187
  br i1 %20, label %dec_label_pc_16ef, label %dec_label_pc_16dd, !insn.addr !187

dec_label_pc_16dd:                                ; preds = %dec_label_pc_1702, %dec_label_pc_16d5
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %sext = mul i64 %rbx.0.reload, 4294967296
  %21 = ashr exact i64 %sext, 30, !insn.addr !188
  %22 = add i64 %21, %9, !insn.addr !188
  %23 = inttoptr i64 %22 to i32*, !insn.addr !188
  %24 = load i32, i32* %23, align 4, !insn.addr !188
  %25 = icmp eq i32 %.reload, %24, !insn.addr !189
  %26 = icmp eq i1 %25, false, !insn.addr !190
  br i1 %26, label %dec_label_pc_16d5, label %dec_label_pc_16e8, !insn.addr !190

dec_label_pc_16e8:                                ; preds = %dec_label_pc_16dd
  %27 = call i64 @explode_bomb(), !insn.addr !191
  unreachable, !insn.addr !191

dec_label_pc_16ef:                                ; preds = %dec_label_pc_16d5
  %28 = add i64 %r13.02.reload, 4, !insn.addr !192
  %29 = inttoptr i64 %28 to i32*, !insn.addr !182
  %30 = load i32, i32* %29, align 4, !insn.addr !182
  %31 = add i32 %30, -1, !insn.addr !183
  %32 = icmp ult i32 %31, 6
  store i32 %30, i32* %.reg2mem, !insn.addr !184
  store i64 %34, i64* %r14.03.reg2mem, !insn.addr !184
  store i64 %28, i64* %r13.02.reg2mem, !insn.addr !184
  br i1 %32, label %dec_label_pc_1702, label %dec_label_pc_16ce, !insn.addr !184

dec_label_pc_1702:                                ; preds = %dec_label_pc_169c, %dec_label_pc_16ef
  %r13.02.reload = load i64, i64* %r13.02.reg2mem
  %r14.03.reload = load i64, i64* %r14.03.reg2mem
  %.reload = load i32, i32* %.reg2mem, !insn.addr !189
  %33 = add nuw nsw i64 %r14.03.reload, 1, !insn.addr !193
  %34 = and i64 %33, 4294967295, !insn.addr !193
  %35 = trunc i64 %33 to i32, !insn.addr !194
  %36 = icmp eq i32 %35, 6, !insn.addr !194
  store i64 %34, i64* %rbx.0.reg2mem, !insn.addr !195
  br i1 %36, label %dec_label_pc_1711, label %dec_label_pc_16dd, !insn.addr !195

dec_label_pc_1711:                                ; preds = %dec_label_pc_1702
  %37 = ptrtoint i64* %stack_var_-112 to i64, !insn.addr !196
  store i64 %9, i64* %r12.0.reg2mem, !insn.addr !197
  br label %dec_label_pc_171b, !insn.addr !197

dec_label_pc_171b:                                ; preds = %dec_label_pc_171b, %dec_label_pc_1711
  %r12.0.reload = load i64, i64* %r12.0.reg2mem
  %38 = inttoptr i64 %r12.0.reload to i32*, !insn.addr !198
  %39 = load i32, i32* %38, align 4, !insn.addr !198
  %40 = sub i32 7, %39, !insn.addr !198
  store i32 %40, i32* %38, align 4, !insn.addr !199
  %41 = add i64 %r12.0.reload, 4, !insn.addr !200
  %42 = icmp eq i64 %41, %37, !insn.addr !201
  %43 = icmp eq i1 %42, false, !insn.addr !202
  store i64 %41, i64* %r12.0.reg2mem, !insn.addr !202
  br i1 %43, label %dec_label_pc_171b, label %dec_label_pc_174f.preheader, !insn.addr !202

dec_label_pc_174f.preheader:                      ; preds = %dec_label_pc_171b
  %44 = add i64 %9, 32, !insn.addr !203
  store i64 0, i64* %rsi.0.reg2mem
  br label %dec_label_pc_174f

dec_label_pc_1735:                                ; preds = %dec_label_pc_174f, %dec_label_pc_1735
  %rdx.0.reload = load i64, i64* %rdx.0.reg2mem
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %45 = add i64 %rdx.0.reload, 8, !insn.addr !204
  %46 = inttoptr i64 %45 to i64*, !insn.addr !204
  %47 = load i64, i64* %46, align 8, !insn.addr !204
  %48 = add nuw nsw i64 %rax.0.reload, 1, !insn.addr !205
  %49 = and i64 %48, 4294967295, !insn.addr !205
  %50 = trunc i64 %48 to i32, !insn.addr !206
  %51 = icmp eq i32 %61, %50, !insn.addr !206
  %52 = icmp eq i1 %51, false, !insn.addr !207
  store i64 %49, i64* %rax.0.reg2mem, !insn.addr !207
  store i64 %47, i64* %rdx.0.reg2mem, !insn.addr !207
  store i64 %47, i64* %rdx.1.reg2mem, !insn.addr !207
  br i1 %52, label %dec_label_pc_1735, label %dec_label_pc_1740, !insn.addr !207

dec_label_pc_1740:                                ; preds = %dec_label_pc_1735, %dec_label_pc_174f
  %rdx.1.reload = load i64, i64* %rdx.1.reg2mem
  %53 = mul i64 %rsi.0.reload, 8, !insn.addr !203
  %54 = add i64 %44, %53, !insn.addr !203
  %55 = inttoptr i64 %54 to i64*, !insn.addr !203
  store i64 %rdx.1.reload, i64* %55, align 8, !insn.addr !203
  %56 = add nuw nsw i64 %rsi.0.reload, 1, !insn.addr !208
  %57 = icmp eq i64 %rsi.0.reload, 5, !insn.addr !209
  store i64 %56, i64* %rsi.0.reg2mem, !insn.addr !210
  br i1 %57, label %dec_label_pc_1765, label %dec_label_pc_174f, !insn.addr !210

dec_label_pc_174f:                                ; preds = %dec_label_pc_174f.preheader, %dec_label_pc_1740
  %rsi.0.reload = load i64, i64* %rsi.0.reg2mem
  %58 = mul i64 %rsi.0.reload, 4, !insn.addr !211
  %59 = add i64 %58, %9, !insn.addr !211
  %60 = inttoptr i64 %59 to i32*, !insn.addr !211
  %61 = load i32, i32* %60, align 4, !insn.addr !211
  %62 = icmp sgt i32 %61, 1, !insn.addr !212
  store i64 1, i64* %rax.0.reg2mem, !insn.addr !212
  store i64 ptrtoint (i64* @global_var_5230 to i64), i64* %rdx.0.reg2mem, !insn.addr !212
  store i64 ptrtoint (i64* @global_var_5230 to i64), i64* %rdx.1.reg2mem, !insn.addr !212
  br i1 %62, label %dec_label_pc_1735, label %dec_label_pc_1740, !insn.addr !212

dec_label_pc_1765:                                ; preds = %dec_label_pc_1740
  %63 = ptrtoint i32* %8 to i64, !insn.addr !213
  %64 = add i64 %63, 8, !insn.addr !214
  %65 = inttoptr i64 %64 to i64*, !insn.addr !214
  %66 = add i64 %7, 8, !insn.addr !215
  %67 = inttoptr i64 %66 to i64*, !insn.addr !215
  %68 = add i64 %6, 8, !insn.addr !216
  %69 = inttoptr i64 %68 to i64*, !insn.addr !216
  %70 = add i64 %5, 8, !insn.addr !217
  %71 = inttoptr i64 %70 to i64*, !insn.addr !217
  %72 = add i64 %4, 8, !insn.addr !218
  %73 = inttoptr i64 %72 to i64*, !insn.addr !218
  %74 = add i64 %3, 8, !insn.addr !219
  %75 = inttoptr i64 %74 to i64*, !insn.addr !219
  store i64 0, i64* %75, align 8, !insn.addr !219
  %.pre = load i32, i32* %8, align 4
  store i32 %.pre, i32* %.reg2mem4, !insn.addr !220
  store i64 %63, i64* %rbx.1.reg2mem, !insn.addr !220
  store i32 5, i32* %rbp.0.reg2mem, !insn.addr !220
  br label %dec_label_pc_17af, !insn.addr !220

dec_label_pc_17a6:                                ; preds = %dec_label_pc_17af
  %rbp.0.reload = load i32, i32* %rbp.0.reg2mem
  %76 = add nsw i32 %rbp.0.reload, -1, !insn.addr !221
  %77 = icmp eq i32 %76, 0, !insn.addr !221
  store i32 %82, i32* %.reg2mem4, !insn.addr !222
  store i64 %80, i64* %rbx.1.reg2mem, !insn.addr !222
  store i32 %76, i32* %rbp.0.reg2mem, !insn.addr !222
  br i1 %77, label %dec_label_pc_17c0, label %dec_label_pc_17af, !insn.addr !222

dec_label_pc_17af:                                ; preds = %dec_label_pc_17a6, %dec_label_pc_1765
  %rbx.1.reload = load i64, i64* %rbx.1.reg2mem
  %.reload5 = load i32, i32* %.reg2mem4, !insn.addr !223
  %78 = add i64 %rbx.1.reload, 8, !insn.addr !224
  %79 = inttoptr i64 %78 to i64*, !insn.addr !224
  %80 = load i64, i64* %79, align 8, !insn.addr !224
  %81 = inttoptr i64 %80 to i32*, !insn.addr !225
  %82 = load i32, i32* %81, align 4, !insn.addr !225
  %83 = zext i32 %82 to i64, !insn.addr !225
  %84 = sext i32 %.reload5 to i64, !insn.addr !226
  %85 = icmp slt i64 %84, %83, !insn.addr !226
  br i1 %85, label %dec_label_pc_17b9, label %dec_label_pc_17a6, !insn.addr !226

dec_label_pc_17b9:                                ; preds = %dec_label_pc_17af
  %86 = call i64 @explode_bomb(), !insn.addr !227
  unreachable, !insn.addr !227

dec_label_pc_17c0:                                ; preds = %dec_label_pc_17a6
  %87 = call i64 @__readfsqword(i64 40), !insn.addr !228
  %88 = xor i64 %87, %10, !insn.addr !228
  %89 = icmp eq i64 %88, 0, !insn.addr !228
  %90 = icmp eq i1 %89, false, !insn.addr !229
  br i1 %90, label %dec_label_pc_17dd, label %dec_label_pc_17d0, !insn.addr !229

dec_label_pc_17d0:                                ; preds = %dec_label_pc_17c0
  ret i64 %88, !insn.addr !230

dec_label_pc_17dd:                                ; preds = %dec_label_pc_17c0
  call void @__stack_chk_fail(), !insn.addr !231
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !231

; uselistorder directives
  uselistorder i32 %82, { 1, 0 }
  uselistorder i64 %80, { 1, 0 }
  uselistorder i32 %61, { 1, 0 }
  uselistorder i64 %rsi.0.reload, { 3, 2, 1, 0 }
  uselistorder i64 %r12.0.reload, { 1, 0 }
  uselistorder i64 %34, { 1, 0 }
  uselistorder i64 %rbx.0.reload, { 1, 0 }
  uselistorder i64 %9, { 2, 4, 0, 3, 1 }
  uselistorder i32* %8, { 1, 0 }
  uselistorder i64* %rbx.0.reg2mem, { 1, 0, 2 }
  uselistorder i32* %.reg2mem, { 0, 2, 1 }
  uselistorder i64* %r14.03.reg2mem, { 0, 2, 1 }
  uselistorder i64* %r13.02.reg2mem, { 0, 2, 1 }
  uselistorder i64* %r12.0.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rax.0.reg2mem, { 1, 2, 0 }
  uselistorder i64* %rdx.0.reg2mem, { 1, 2, 0 }
  uselistorder i64* %rdx.1.reg2mem, { 2, 0, 1 }
  uselistorder i64* %rsi.0.reg2mem, { 0, 2, 1 }
  uselistorder i32* %rbp.0.reg2mem, { 1, 0, 2 }
  uselistorder i64* %1, { 5, 4, 3, 2, 1, 0 }
  uselistorder i64 5, { 1, 0 }
  uselistorder i64 (i64, i64*)* @read_six_numbers, { 1, 0 }
  uselistorder label %dec_label_pc_174f, { 1, 0 }
  uselistorder label %dec_label_pc_1740, { 1, 0 }
  uselistorder label %dec_label_pc_1702, { 1, 0 }
}

define i64 @fun7(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_17e2:
  %rax.0.reg2mem = alloca i64, !insn.addr !232
  %0 = icmp eq i64 %arg1, 0, !insn.addr !232
  store i64 4294967295, i64* %rax.0.reg2mem, !insn.addr !233
  br i1 %0, label %dec_label_pc_17fa, label %dec_label_pc_17e7, !insn.addr !233

dec_label_pc_17e7:                                ; preds = %dec_label_pc_17e2
  %1 = and i64 %arg1, 4294967295, !insn.addr !234
  %2 = icmp sgt i64 %1, %arg2, !insn.addr !235
  br i1 %2, label %dec_label_pc_17ff, label %dec_label_pc_17f1, !insn.addr !235

dec_label_pc_17f1:                                ; preds = %dec_label_pc_17e7
  %3 = trunc i64 %arg1 to i32
  %4 = trunc i64 %arg2 to i32, !insn.addr !236
  %5 = icmp eq i32 %3, %4, !insn.addr !236
  %6 = icmp eq i1 %5, false, !insn.addr !237
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !237
  br i1 %6, label %dec_label_pc_180c, label %dec_label_pc_17fa, !insn.addr !237

dec_label_pc_17fa:                                ; preds = %dec_label_pc_17e2, %dec_label_pc_180c, %dec_label_pc_17ff, %dec_label_pc_17f1
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !238

dec_label_pc_17ff:                                ; preds = %dec_label_pc_17e7
  %7 = add i64 %arg1, 8, !insn.addr !239
  %8 = inttoptr i64 %7 to i64*, !insn.addr !239
  %9 = load i64, i64* %8, align 8, !insn.addr !239
  %10 = call i64 @fun7(i64 %9, i64 %arg2), !insn.addr !240
  %11 = mul i64 %10, 2, !insn.addr !241
  %12 = and i64 %11, 4294967294, !insn.addr !241
  store i64 %12, i64* %rax.0.reg2mem, !insn.addr !242
  br label %dec_label_pc_17fa, !insn.addr !242

dec_label_pc_180c:                                ; preds = %dec_label_pc_17f1
  %13 = add i64 %arg1, 16, !insn.addr !243
  %14 = inttoptr i64 %13 to i64*, !insn.addr !243
  %15 = load i64, i64* %14, align 8, !insn.addr !243
  %16 = call i64 @fun7(i64 %15, i64 %arg2), !insn.addr !244
  %factor = mul i64 %16, 2
  %17 = and i64 %factor, 4294967294, !insn.addr !245
  %18 = or i64 %17, 1, !insn.addr !245
  store i64 %18, i64* %rax.0.reg2mem, !insn.addr !246
  br label %dec_label_pc_17fa, !insn.addr !246

; uselistorder directives
  uselistorder i64* %rax.0.reg2mem, { 3, 4, 0, 2, 1 }
  uselistorder i64 4294967294, { 0, 2, 1, 3 }
  uselistorder i64 %arg2, { 2, 3, 1, 0 }
  uselistorder i64 %arg1, { 2, 1, 3, 0, 4 }
  uselistorder label %dec_label_pc_17fa, { 1, 2, 3, 0 }
}

define i64 @secret_phase() local_unnamed_addr {
dec_label_pc_1821:
  %0 = call i64 @read_line(), !insn.addr !247
  %1 = inttoptr i64 %0 to i8*, !insn.addr !248
  %2 = call i32 @strtol(i8* %1, i8** null, i32 10), !insn.addr !248
  %3 = add i32 %2, -1, !insn.addr !249
  %4 = icmp ugt i32 %3, ptrtoint (i32* @global_var_3e8 to i32)
  br i1 %4, label %dec_label_pc_186b, label %dec_label_pc_1846, !insn.addr !250

dec_label_pc_1846:                                ; preds = %dec_label_pc_1821
  %5 = zext i32 %2 to i64
  %6 = call i64 @fun7(i64 ptrtoint (i32* @global_var_5150 to i64), i64 %5), !insn.addr !251
  %7 = trunc i64 %6 to i32, !insn.addr !252
  %8 = icmp eq i32 %7, 0, !insn.addr !252
  %9 = icmp eq i1 %8, false, !insn.addr !253
  br i1 %9, label %dec_label_pc_1872, label %dec_label_pc_1858, !insn.addr !253

dec_label_pc_1858:                                ; preds = %dec_label_pc_1846
  %10 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_var_3178, i64 0, i64 0)), !insn.addr !254
  %11 = call i64 @phase_defused(), !insn.addr !255
  ret i64 %11, !insn.addr !256

dec_label_pc_186b:                                ; preds = %dec_label_pc_1821
  %12 = call i64 @explode_bomb(), !insn.addr !257
  unreachable, !insn.addr !257

dec_label_pc_1872:                                ; preds = %dec_label_pc_1846
  %13 = call i64 @explode_bomb(), !insn.addr !258
  unreachable, !insn.addr !258

; uselistorder directives
  uselistorder i64 ()* @phase_defused, { 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i64 (i64, i64)* @fun7, { 0, 2, 1 }
  uselistorder i64 ()* @read_line, { 6, 5, 4, 3, 2, 1, 0 }
}

define i64 @sig_handler() local_unnamed_addr {
dec_label_pc_1879:
  %0 = call i32 @puts(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @global_var_3200, i64 0, i64 0)), !insn.addr !259
  %1 = call i32 @sleep(i32 3), !insn.addr !260
  %2 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_3379, i64 0, i64 0)), !insn.addr !261
  %3 = load %_IO_FILE*, %_IO_FILE** @global_var_5680, align 8, !insn.addr !262
  %4 = call i32 @fflush(%_IO_FILE* %3), !insn.addr !263
  %5 = call i32 @sleep(i32 1), !insn.addr !264
  %6 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_3381, i64 0, i64 0)), !insn.addr !265
  call void @exit(i32 16), !insn.addr !266
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !266

; uselistorder directives
  uselistorder %_IO_FILE** @global_var_5680, { 1, 0 }
}

define i64 @invalid_phase(i64 %arg1) local_unnamed_addr {
dec_label_pc_18d5:
  %0 = inttoptr i64 %arg1 to i8*, !insn.addr !267
  %1 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_var_3389, i64 0, i64 0), i8* %0), !insn.addr !267
  call void @exit(i32 8), !insn.addr !268
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !268
}

define i64 @string_length(i64 %arg1) local_unnamed_addr {
dec_label_pc_18fc:
  %rdx.0.reg2mem = alloca i64, !insn.addr !269
  %0 = trunc i64 %arg1 to i8
  %1 = icmp eq i8 %0, 0, !insn.addr !269
  store i64 %arg1, i64* %rdx.0.reg2mem, !insn.addr !270
  br i1 %1, label %dec_label_pc_1913, label %dec_label_pc_1904, !insn.addr !270

dec_label_pc_1904:                                ; preds = %dec_label_pc_18fc, %dec_label_pc_1904
  %rdx.0.reload = load i64, i64* %rdx.0.reg2mem
  %2 = add i64 %rdx.0.reload, 1, !insn.addr !271
  %3 = inttoptr i64 %2 to i8*, !insn.addr !272
  %4 = load i8, i8* %3, align 1, !insn.addr !272
  %5 = icmp eq i8 %4, 0, !insn.addr !272
  %6 = icmp eq i1 %5, false, !insn.addr !273
  store i64 %2, i64* %rdx.0.reg2mem, !insn.addr !273
  br i1 %6, label %dec_label_pc_1904, label %dec_label_pc_1911, !insn.addr !273

dec_label_pc_1911:                                ; preds = %dec_label_pc_1904
  %7 = sub i64 %2, %arg1, !insn.addr !274
  %8 = and i64 %7, 4294967295, !insn.addr !274
  ret i64 %8, !insn.addr !275

dec_label_pc_1913:                                ; preds = %dec_label_pc_18fc
  ret i64 0, !insn.addr !276

; uselistorder directives
  uselistorder i64 %2, { 1, 0, 2 }
  uselistorder i64* %rdx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64 %arg1, { 1, 0, 2 }
  uselistorder label %dec_label_pc_1904, { 1, 0 }
}

define i64 @strings_not_equal(i64 %arg1, i8* %arg2) local_unnamed_addr {
dec_label_pc_1919:
  %0 = alloca i64
  %rbp.0.reg2mem = alloca i64, !insn.addr !277
  %rbx.0.reg2mem = alloca i64, !insn.addr !277
  %rdx.0.reg2mem = alloca i64, !insn.addr !277
  %1 = load i64, i64* %0
  %2 = load i64, i64* %0
  %3 = ptrtoint i8* %arg2 to i64
  %4 = call i64 @string_length(i64 %arg1), !insn.addr !278
  %5 = trunc i64 %4 to i32, !insn.addr !279
  %6 = call i64 @string_length(i64 %3), !insn.addr !280
  %7 = trunc i64 %6 to i32, !insn.addr !281
  %8 = icmp eq i32 %5, %7, !insn.addr !281
  store i64 1, i64* %rdx.0.reg2mem, !insn.addr !282
  br i1 %8, label %dec_label_pc_1944, label %dec_label_pc_193d, !insn.addr !282

dec_label_pc_193d:                                ; preds = %dec_label_pc_1950, %dec_label_pc_195f, %dec_label_pc_194b, %dec_label_pc_1944, %dec_label_pc_1919
  %rdx.0.reload = load i64, i64* %rdx.0.reg2mem
  ret i64 %rdx.0.reload, !insn.addr !283

dec_label_pc_1944:                                ; preds = %dec_label_pc_1919
  %9 = trunc i64 %1 to i8
  %10 = icmp eq i8 %9, 0, !insn.addr !284
  store i64 0, i64* %rdx.0.reg2mem, !insn.addr !285
  br i1 %10, label %dec_label_pc_193d, label %dec_label_pc_194b, !insn.addr !285

dec_label_pc_194b:                                ; preds = %dec_label_pc_1944
  %11 = trunc i64 %2 to i8
  %12 = icmp eq i8 %11, %9, !insn.addr !286
  %13 = icmp eq i1 %12, false, !insn.addr !287
  store i64 1, i64* %rdx.0.reg2mem, !insn.addr !287
  store i64 %arg1, i64* %rbx.0.reg2mem, !insn.addr !287
  store i64 %3, i64* %rbp.0.reg2mem, !insn.addr !287
  br i1 %13, label %dec_label_pc_193d, label %dec_label_pc_1950, !insn.addr !287

dec_label_pc_1950:                                ; preds = %dec_label_pc_194b, %dec_label_pc_195f
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %14 = add i64 %rbx.0.reload, 1, !insn.addr !288
  %15 = inttoptr i64 %14 to i8*, !insn.addr !289
  %16 = load i8, i8* %15, align 1, !insn.addr !289
  %17 = icmp eq i8 %16, 0, !insn.addr !290
  store i64 0, i64* %rdx.0.reg2mem, !insn.addr !291
  br i1 %17, label %dec_label_pc_193d, label %dec_label_pc_195f, !insn.addr !291

dec_label_pc_195f:                                ; preds = %dec_label_pc_1950
  %rbp.0.reload = load i64, i64* %rbp.0.reg2mem
  %18 = add i64 %rbp.0.reload, 1, !insn.addr !292
  %19 = inttoptr i64 %18 to i8*, !insn.addr !293
  %20 = load i8, i8* %19, align 1, !insn.addr !293
  %21 = icmp eq i8 %20, %16, !insn.addr !293
  store i64 1, i64* %rdx.0.reg2mem, !insn.addr !294
  store i64 %14, i64* %rbx.0.reg2mem, !insn.addr !294
  store i64 %18, i64* %rbp.0.reg2mem, !insn.addr !294
  br i1 %21, label %dec_label_pc_1950, label %dec_label_pc_193d, !insn.addr !294

; uselistorder directives
  uselistorder i8 %9, { 1, 0 }
  uselistorder i64* %rdx.0.reg2mem, { 2, 1, 3, 4, 0, 5 }
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64* %rbp.0.reg2mem, { 2, 0, 1 }
  uselistorder i64* %0, { 1, 0 }
  uselistorder i64 (i64)* @string_length, { 2, 1, 0 }
  uselistorder label %dec_label_pc_1950, { 1, 0 }
  uselistorder label %dec_label_pc_193d, { 1, 0, 2, 3, 4 }
}

define i64 @initialize_bomb() local_unnamed_addr {
dec_label_pc_1980:
  %stack_var_-8216 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !295
  %1 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 6265 to void (i32)*)), !insn.addr !296
  %2 = call i64 @init_driver(i64* nonnull %stack_var_-8216), !insn.addr !297
  %3 = trunc i64 %2 to i32, !insn.addr !298
  %4 = icmp slt i32 %3, 0, !insn.addr !298
  br i1 %4, label %dec_label_pc_19d2, label %dec_label_pc_19b7, !insn.addr !299

dec_label_pc_19b7:                                ; preds = %dec_label_pc_1980
  %5 = call i64 @__readfsqword(i64 40), !insn.addr !300
  %6 = xor i64 %5, %0, !insn.addr !300
  %7 = icmp eq i64 %6, 0, !insn.addr !300
  %8 = icmp eq i1 %7, false, !insn.addr !301
  br i1 %8, label %dec_label_pc_19f5, label %dec_label_pc_19ca, !insn.addr !301

dec_label_pc_19ca:                                ; preds = %dec_label_pc_19b7
  ret i64 %6, !insn.addr !302

dec_label_pc_19d2:                                ; preds = %dec_label_pc_1980
  %9 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_var_339a, i64 0, i64 0), i64* nonnull %stack_var_-8216), !insn.addr !303
  call void @exit(i32 8), !insn.addr !304
  unreachable, !insn.addr !304

dec_label_pc_19f5:                                ; preds = %dec_label_pc_19b7
  call void @__stack_chk_fail(), !insn.addr !305
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !305
}

define i64 @initialize_bomb_solve() local_unnamed_addr {
dec_label_pc_19fa:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !306
}

define i64 @blank_line(i64 %arg1) local_unnamed_addr {
dec_label_pc_19fc:
  %storemerge.reg2mem = alloca i64, !insn.addr !307
  %rbp.0.reg2mem = alloca i64, !insn.addr !307
  store i64 %arg1, i64* %rbp.0.reg2mem, !insn.addr !308
  br label %dec_label_pc_1a05, !insn.addr !308

dec_label_pc_1a05:                                ; preds = %dec_label_pc_1a0d, %dec_label_pc_19fc
  %rbp.0.reload = load i64, i64* %rbp.0.reg2mem
  %0 = inttoptr i64 %rbp.0.reload to i8*, !insn.addr !309
  %1 = load i8, i8* %0, align 1, !insn.addr !309
  %2 = icmp eq i8 %1, 0, !insn.addr !310
  store i64 1, i64* %storemerge.reg2mem, !insn.addr !311
  br i1 %2, label %dec_label_pc_1a30, label %dec_label_pc_1a0d, !insn.addr !311

dec_label_pc_1a0d:                                ; preds = %dec_label_pc_1a05
  %3 = zext i8 %1 to i64, !insn.addr !309
  %4 = call i16** @__ctype_b_loc(), !insn.addr !312
  %5 = add i64 %rbp.0.reload, 1, !insn.addr !313
  %sext = mul i64 %3, 72057594037927936
  %6 = load i16*, i16** %4, align 8, !insn.addr !314
  %7 = ptrtoint i16* %6 to i64, !insn.addr !314
  %8 = ashr exact i64 %sext, 55, !insn.addr !315
  %9 = or i64 %8, 1, !insn.addr !315
  %10 = add i64 %9, %7, !insn.addr !315
  %11 = inttoptr i64 %10 to i8*, !insn.addr !315
  %12 = load i8, i8* %11, align 1, !insn.addr !315
  %13 = and i8 %12, 32, !insn.addr !315
  %14 = icmp eq i8 %13, 0, !insn.addr !315
  %15 = icmp eq i1 %14, false, !insn.addr !316
  store i64 %5, i64* %rbp.0.reg2mem, !insn.addr !316
  store i64 0, i64* %storemerge.reg2mem, !insn.addr !316
  br i1 %15, label %dec_label_pc_1a05, label %dec_label_pc_1a30, !insn.addr !316

dec_label_pc_1a30:                                ; preds = %dec_label_pc_1a05, %dec_label_pc_1a0d
  %storemerge.reload = load i64, i64* %storemerge.reg2mem
  ret i64 %storemerge.reload, !insn.addr !317

; uselistorder directives
  uselistorder i8 %1, { 1, 0 }
  uselistorder i64 %rbp.0.reload, { 1, 0 }
  uselistorder i64* %rbp.0.reg2mem, { 1, 0, 2 }
  uselistorder i64* %storemerge.reg2mem, { 0, 2, 1 }
  uselistorder label %dec_label_pc_1a30, { 1, 0 }
}

define i64 @skip() local_unnamed_addr {
dec_label_pc_1a37:
  br label %dec_label_pc_1a44, !insn.addr !318

dec_label_pc_1a44:                                ; preds = %dec_label_pc_1a6f, %dec_label_pc_1a37
  %0 = load i32, i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !319
  %1 = sext i32 %0 to i64, !insn.addr !319
  %2 = mul nsw i64 %1, 80, !insn.addr !320
  %3 = add i64 %2, ptrtoint (i8** @global_var_56c0 to i64), !insn.addr !321
  %4 = load i32*, i32** @infile, align 8, !insn.addr !322
  %5 = inttoptr i64 %3 to i8*, !insn.addr !323
  %6 = bitcast i32* %4 to %_IO_FILE*, !insn.addr !323
  %7 = call i8* @fgets(i8* %5, i32 80, %_IO_FILE* %6), !insn.addr !323
  %8 = icmp eq i8* %7, null, !insn.addr !324
  br i1 %8, label %dec_label_pc_1a7b, label %dec_label_pc_1a6f, !insn.addr !325

dec_label_pc_1a6f:                                ; preds = %dec_label_pc_1a44
  %9 = ptrtoint i8* %7 to i64, !insn.addr !323
  %10 = call i64 @blank_line(i64 %9), !insn.addr !326
  %11 = trunc i64 %10 to i32, !insn.addr !327
  %12 = icmp eq i32 %11, 0, !insn.addr !327
  %13 = icmp eq i1 %12, false, !insn.addr !328
  br i1 %13, label %dec_label_pc_1a44, label %dec_label_pc_1a7b, !insn.addr !328

dec_label_pc_1a7b:                                ; preds = %dec_label_pc_1a44, %dec_label_pc_1a6f
  %14 = ptrtoint i8* %7 to i64, !insn.addr !323
  ret i64 %14, !insn.addr !329

; uselistorder directives
  uselistorder i8* %7, { 0, 2, 1 }
  uselistorder label %dec_label_pc_1a7b, { 1, 0 }
}

define i64 @test_connection() local_unnamed_addr {
dec_label_pc_1a85:
  %0 = call i64 @driver_ping(), !insn.addr !330
  %1 = trunc i64 %0 to i32, !insn.addr !331
  %2 = icmp eq i32 %1, 0, !insn.addr !331
  %3 = icmp eq i1 %2, false, !insn.addr !332
  br i1 %3, label %dec_label_pc_1a9c, label %dec_label_pc_1a97, !insn.addr !332

dec_label_pc_1a97:                                ; preds = %dec_label_pc_1a85
  ret i64 %0, !insn.addr !333

dec_label_pc_1a9c:                                ; preds = %dec_label_pc_1a85
  %4 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_var_3238, i64 0, i64 0)), !insn.addr !334
  call void @exit(i32 10), !insn.addr !335
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !335
}

define i64 @send_msg(i64 %arg1) local_unnamed_addr {
dec_label_pc_1ab2:
  %0 = alloca i1
  %rcx.1.reg2mem = alloca i64, !insn.addr !336
  %rdi.0.reg2mem = alloca i64, !insn.addr !336
  %rcx.0.reg2mem = alloca i64, !insn.addr !336
  %1 = load i1, i1* %0
  %stack_var_-8216 = alloca i64, align 8
  %stack_var_-16408 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40), !insn.addr !337
  %3 = load i32, i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !338
  %4 = zext i32 %3 to i64, !insn.addr !338
  %5 = select i1 %1, i64 -1, i64 1
  store i64 -1, i64* %rcx.0.reg2mem, !insn.addr !339
  store i64 add (i64 shl (i64 add (i64 sext (i32 ptrtoint (i32* @global_var_56ab to i32) to i64), i64 mul (i64 sext (i32 ptrtoint (i32* @global_var_56ab to i32) to i64), i64 4)), i64 4), i64 ptrtoint (i8** @global_var_56c0 to i64)), i64* %rdi.0.reg2mem, !insn.addr !339
  br label %6, !insn.addr !339

; <label>:6:                                      ; preds = %8, %dec_label_pc_1ab2
  %rcx.0.reload = load i64, i64* %rcx.0.reg2mem
  %7 = icmp eq i64 %rcx.0.reload, 0, !insn.addr !339
  store i64 0, i64* %rcx.1.reg2mem, !insn.addr !339
  br i1 %7, label %14, label %8, !insn.addr !339

; <label>:8:                                      ; preds = %6
  %rdi.0.reload = load i64, i64* %rdi.0.reg2mem
  %9 = inttoptr i64 %rdi.0.reload to i8*, !insn.addr !339
  %10 = load i8, i8* %9, align 1, !insn.addr !339
  %11 = icmp eq i8 %10, 0, !insn.addr !339
  %12 = add i64 %rdi.0.reload, %5, !insn.addr !339
  %13 = add i64 %rcx.0.reload, -1, !insn.addr !339
  store i64 %13, i64* %rcx.0.reg2mem, !insn.addr !339
  store i64 %12, i64* %rdi.0.reg2mem, !insn.addr !339
  store i64 %13, i64* %rcx.1.reg2mem, !insn.addr !339
  br i1 %11, label %14, label %6, !insn.addr !339

; <label>:14:                                     ; preds = %6, %8
  %rcx.1.reload = load i64, i64* %rcx.1.reg2mem
  %15 = sub i64 98, %rcx.1.reload, !insn.addr !340
  %16 = icmp ult i64 %15, 8193
  br i1 %16, label %dec_label_pc_1b14, label %dec_label_pc_1b9a, !insn.addr !341

dec_label_pc_1b14:                                ; preds = %14
  %17 = trunc i64 %arg1 to i32, !insn.addr !342
  %18 = icmp eq i32 %17, 0, !insn.addr !342
  %19 = load i32, i32* @global_var_5144, align 4, !insn.addr !343
  %20 = zext i32 %19 to i64, !insn.addr !343
  %21 = bitcast i64* %stack_var_-16408 to i8*, !insn.addr !344
  %22 = select i1 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_33bc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_33b4, i64 0, i64 0), !insn.addr !344
  %23 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* nonnull %21, i32 1, i32 8192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_var_33c5, i64 0, i64 0), i64 %20, i8* %22, i64 %4, i8* inttoptr (i64 add (i64 shl (i64 add (i64 sext (i32 ptrtoint (i32* @global_var_56ab to i32) to i64), i64 mul (i64 sext (i32 ptrtoint (i32* @global_var_56ab to i32) to i64), i64 4)), i64 4), i64 ptrtoint (i8** @global_var_56c0 to i64)) to i8*)), !insn.addr !344
  %24 = call i64 @driver_post(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_5138, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_5120, i64 0, i64 0), i64* nonnull %stack_var_-16408, i64 0, i64* nonnull %stack_var_-8216), !insn.addr !345
  %25 = trunc i64 %24 to i32, !insn.addr !346
  %26 = icmp slt i32 %25, 0, !insn.addr !346
  br i1 %26, label %dec_label_pc_1bba, label %dec_label_pc_1b7e, !insn.addr !347

dec_label_pc_1b7e:                                ; preds = %dec_label_pc_1b14
  %27 = call i64 @__readfsqword(i64 40), !insn.addr !348
  %28 = xor i64 %27, %2, !insn.addr !348
  %29 = icmp eq i64 %28, 0, !insn.addr !348
  %30 = icmp eq i1 %29, false, !insn.addr !349
  br i1 %30, label %dec_label_pc_1bd1, label %dec_label_pc_1b91, !insn.addr !349

dec_label_pc_1b91:                                ; preds = %dec_label_pc_1b7e
  ret i64 %28, !insn.addr !350

dec_label_pc_1b9a:                                ; preds = %14
  %31 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_var_3258, i64 0, i64 0)), !insn.addr !351
  call void @exit(i32 8), !insn.addr !352
  unreachable, !insn.addr !352

dec_label_pc_1bba:                                ; preds = %dec_label_pc_1b14
  %32 = bitcast i64* %stack_var_-8216 to i8*, !insn.addr !353
  %33 = call i32 @puts(i8* nonnull %32), !insn.addr !353
  call void @exit(i32 0), !insn.addr !354
  unreachable, !insn.addr !354

dec_label_pc_1bd1:                                ; preds = %dec_label_pc_1b7e
  call void @__stack_chk_fail(), !insn.addr !355
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !355

; uselistorder directives
  uselistorder i64 %rdi.0.reload, { 1, 0 }
  uselistorder i64* %rcx.0.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.0.reg2mem, { 1, 0, 2 }
  uselistorder i64 add (i64 shl (i64 add (i64 sext (i32 ptrtoint (i32* @global_var_56ab to i32) to i64), i64 mul (i64 sext (i32 ptrtoint (i32* @global_var_56ab to i32) to i64), i64 4)), i64 4), i64 ptrtoint (i8** @global_var_56c0 to i64)), { 1, 0 }
  uselistorder label %14, { 1, 0 }
}

define i64 @explode_bomb() local_unnamed_addr {
dec_label_pc_1bd6:
  %0 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_33d1, i64 0, i64 0)), !insn.addr !356
  %1 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_var_33da, i64 0, i64 0)), !insn.addr !357
  %2 = call i64 @send_msg(i64 0), !insn.addr !358
  %3 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_var_3280, i64 0, i64 0)), !insn.addr !359
  call void @exit(i32 8), !insn.addr !360
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !360
}

define i64 @read_six_numbers(i64 %arg1, i64* %arg2) local_unnamed_addr {
dec_label_pc_1c12:
  %0 = ptrtoint i64* %arg2 to i64
  %1 = add i64 %0, 4, !insn.addr !361
  %2 = add i64 %0, 20, !insn.addr !362
  %3 = add i64 %0, 16, !insn.addr !363
  %4 = add i64 %0, 12, !insn.addr !364
  %5 = add i64 %0, 8, !insn.addr !365
  %6 = inttoptr i64 %arg1 to i8*, !insn.addr !366
  %7 = inttoptr i64 %1 to i64*, !insn.addr !366
  %8 = inttoptr i64 %5 to i64*, !insn.addr !366
  %9 = inttoptr i64 %4 to i64*, !insn.addr !366
  %10 = inttoptr i64 %3 to i64*, !insn.addr !366
  %11 = inttoptr i64 %2 to i64*, !insn.addr !366
  %12 = call i32 (i8*, i8*, ...) @sscanf(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_var_33f1, i64 0, i64 0), i64* %arg2, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11), !insn.addr !366
  %13 = icmp slt i32 %12, 6, !insn.addr !367
  br i1 %13, label %dec_label_pc_1c4e, label %dec_label_pc_1c49, !insn.addr !367

dec_label_pc_1c49:                                ; preds = %dec_label_pc_1c12
  %14 = sext i32 %12 to i64, !insn.addr !366
  ret i64 %14, !insn.addr !368

dec_label_pc_1c4e:                                ; preds = %dec_label_pc_1c12
  %15 = call i64 @explode_bomb(), !insn.addr !369
  ret i64 %15, !insn.addr !369

; uselistorder directives
  uselistorder i32 %12, { 1, 0 }
  uselistorder i64 %0, { 4, 3, 2, 1, 0 }
}

define i64 @read_line() local_unnamed_addr {
dec_label_pc_1c53:
  %0 = alloca i1
  %rcx.1.reg2mem = alloca i64, !insn.addr !370
  %rdi.0.reg2mem = alloca i64, !insn.addr !370
  %rcx.0.reg2mem = alloca i64, !insn.addr !370
  %1 = load i1, i1* %0
  %2 = call i64 @skip(), !insn.addr !371
  %3 = icmp eq i64 %2, 0, !insn.addr !372
  br i1 %3, label %dec_label_pc_1cee, label %dec_label_pc_1c67, !insn.addr !373

dec_label_pc_1c67:                                ; preds = %dec_label_pc_1d2f, %dec_label_pc_1c53
  %4 = load i32, i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !374
  %5 = zext i32 %4 to i64, !insn.addr !374
  %6 = sext i32 %4 to i64, !insn.addr !375
  %7 = mul nsw i64 %6, 80, !insn.addr !376
  %8 = add i64 %7, ptrtoint (i8** @global_var_56c0 to i64), !insn.addr !377
  %9 = select i1 %1, i64 -1, i64 1
  store i64 -1, i64* %rcx.0.reg2mem, !insn.addr !378
  store i64 %8, i64* %rdi.0.reg2mem, !insn.addr !378
  br label %10, !insn.addr !378

; <label>:10:                                     ; preds = %12, %dec_label_pc_1c67
  %rcx.0.reload = load i64, i64* %rcx.0.reg2mem
  %11 = icmp eq i64 %rcx.0.reload, 0, !insn.addr !378
  store i64 0, i64* %rcx.1.reg2mem, !insn.addr !378
  br i1 %11, label %18, label %12, !insn.addr !378

; <label>:12:                                     ; preds = %10
  %rdi.0.reload = load i64, i64* %rdi.0.reg2mem
  %13 = inttoptr i64 %rdi.0.reload to i8*, !insn.addr !378
  %14 = load i8, i8* %13, align 1, !insn.addr !378
  %15 = icmp eq i8 %14, 0, !insn.addr !378
  %16 = add i64 %rdi.0.reload, %9, !insn.addr !378
  %17 = add i64 %rcx.0.reload, -1, !insn.addr !378
  store i64 %17, i64* %rcx.0.reg2mem, !insn.addr !378
  store i64 %16, i64* %rdi.0.reg2mem, !insn.addr !378
  store i64 %17, i64* %rcx.1.reg2mem, !insn.addr !378
  br i1 %15, label %18, label %10, !insn.addr !378

; <label>:18:                                     ; preds = %10, %12
  %rcx.1.reload = load i64, i64* %rcx.1.reg2mem
  %19 = sub i64 -2, %rcx.1.reload, !insn.addr !379
  %20 = trunc i64 %19 to i32, !insn.addr !380
  %21 = icmp sgt i32 %20, 78, !insn.addr !380
  br i1 %21, label %dec_label_pc_1d66, label %dec_label_pc_1ca7, !insn.addr !380

dec_label_pc_1ca7:                                ; preds = %18
  %22 = mul i64 %19, 4294967296, !insn.addr !381
  %sext = add i64 %22, -4294967296
  %23 = ashr exact i64 %sext, 32, !insn.addr !382
  %sext1 = mul i64 %5, 4294967296
  %24 = ashr exact i64 %sext1, 30, !insn.addr !383
  %25 = add nsw i64 %24, %6, !insn.addr !383
  %26 = mul i64 %25, 16, !insn.addr !384
  %27 = add i64 %26, ptrtoint (i8** @global_var_56c0 to i64), !insn.addr !385
  %28 = add i64 %27, %23, !insn.addr !386
  %29 = inttoptr i64 %28 to i8*, !insn.addr !386
  store i8 0, i8* %29, align 1, !insn.addr !386
  %30 = call i64 @test_connection(), !insn.addr !387
  %31 = load i32, i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !388
  store i32 ptrtoint (i32* @global_var_56ad to i32), i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !389
  %32 = sext i32 %31 to i64, !insn.addr !390
  %33 = mul nsw i64 %32, 80, !insn.addr !391
  %34 = add i64 %33, ptrtoint (i8** @global_var_56c0 to i64), !insn.addr !392
  ret i64 %34, !insn.addr !393

dec_label_pc_1cee:                                ; preds = %dec_label_pc_1c53
  %35 = load i64, i64* @global_var_5690, align 8, !insn.addr !394
  %36 = load i32*, i32** @infile, align 8, !insn.addr !395
  %37 = ptrtoint i32* %36 to i64, !insn.addr !395
  %38 = icmp eq i64 %35, %37, !insn.addr !395
  br i1 %38, label %dec_label_pc_1d19, label %dec_label_pc_1cfe, !insn.addr !396

dec_label_pc_1cfe:                                ; preds = %dec_label_pc_1cee
  %39 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_var_3421, i64 0, i64 0)), !insn.addr !397
  %40 = icmp eq i8* %39, null, !insn.addr !398
  br i1 %40, label %dec_label_pc_1d2f, label %dec_label_pc_1d0f, !insn.addr !399

dec_label_pc_1d0f:                                ; preds = %dec_label_pc_1cfe
  call void @exit(i32 0), !insn.addr !400
  unreachable, !insn.addr !400

dec_label_pc_1d19:                                ; preds = %dec_label_pc_1cee
  %41 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_var_3403, i64 0, i64 0)), !insn.addr !401
  call void @exit(i32 8), !insn.addr !402
  unreachable, !insn.addr !402

dec_label_pc_1d2f:                                ; preds = %dec_label_pc_1cfe
  %42 = load i64, i64* @global_var_5690, align 8, !insn.addr !403
  store i64 %42, i64* bitcast (i32** @infile to i64*), align 8, !insn.addr !404
  %43 = call i64 @skip(), !insn.addr !405
  %44 = icmp eq i64 %43, 0, !insn.addr !406
  %45 = icmp eq i1 %44, false, !insn.addr !407
  br i1 %45, label %dec_label_pc_1c67, label %dec_label_pc_1d50, !insn.addr !407

dec_label_pc_1d50:                                ; preds = %dec_label_pc_1d2f
  %46 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_var_3403, i64 0, i64 0)), !insn.addr !408
  call void @exit(i32 0), !insn.addr !409
  unreachable, !insn.addr !409

dec_label_pc_1d66:                                ; preds = %18
  %47 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_342c, i64 0, i64 0)), !insn.addr !410
  %48 = load i32, i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !411
  store i32 ptrtoint (i32* @global_var_56ad to i32), i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !412
  %49 = sext i32 %48 to i64, !insn.addr !413
  %50 = mul nsw i64 %49, 80, !insn.addr !413
  %51 = add i64 %50, ptrtoint (i8** @global_var_56c0 to i64), !insn.addr !414
  %52 = inttoptr i64 %51 to i64*, !insn.addr !414
  store i64 7164793191628679722, i64* %52, align 8, !insn.addr !414
  %53 = add i64 %50, add (i64 ptrtoint (i8** @global_var_56c0 to i64), i64 8), !insn.addr !415
  %54 = inttoptr i64 %53 to i64*, !insn.addr !415
  store i64 11868310583211105, i64* %54, align 8, !insn.addr !415
  %55 = call i64 @explode_bomb(), !insn.addr !416
  ret i64 %55, !insn.addr !416

; uselistorder directives
  uselistorder i64 %rdi.0.reload, { 1, 0 }
  uselistorder i64* %rcx.0.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.0.reg2mem, { 1, 0, 2 }
  uselistorder i64 ()* @explode_bomb, { 13, 12, 15, 14, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i8* getelementptr inbounds ([30 x i8], [30 x i8]* @global_var_3403, i64 0, i64 0), { 1, 0 }
  uselistorder i64 ptrtoint (i8** @global_var_56c0 to i64), { 3, 1, 5, 6, 2, 4, 0 }
  uselistorder i64 ()* @skip, { 1, 0 }
  uselistorder label %18, { 1, 0 }
}

define i64 @phase_defused() local_unnamed_addr {
dec_label_pc_1db0:
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-108 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !417
  %1 = call i64 @send_msg(i64 1), !insn.addr !418
  %2 = load i32, i32* bitcast (i128* @global_var_56ac to i32*), align 8, !insn.addr !419
  %3 = icmp eq i32 %2, 6, !insn.addr !419
  br i1 %3, label %dec_label_pc_1df0, label %dec_label_pc_1dd7, !insn.addr !420

dec_label_pc_1dd7:                                ; preds = %dec_label_pc_1e1c, %dec_label_pc_1db0
  %4 = call i64 @__readfsqword(i64 40), !insn.addr !421
  %5 = xor i64 %4, %0, !insn.addr !421
  %6 = icmp eq i64 %5, 0, !insn.addr !421
  %7 = icmp eq i1 %6, false, !insn.addr !422
  br i1 %7, label %dec_label_pc_1e6f, label %dec_label_pc_1deb, !insn.addr !422

dec_label_pc_1deb:                                ; preds = %dec_label_pc_1dd7
  ret i64 %5, !insn.addr !423

dec_label_pc_1df0:                                ; preds = %dec_label_pc_1db0
  %8 = call i32 (i8*, i8*, ...) @sscanf(i8* bitcast (i8** @global_var_57b0 to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @global_var_3447, i64 0, i64 0), i64* nonnull %stack_var_-112, i64* nonnull %stack_var_-108, i64* nonnull %stack_var_-104), !insn.addr !424
  %9 = icmp eq i32 %8, 3, !insn.addr !425
  br i1 %9, label %dec_label_pc_1e36, label %dec_label_pc_1e1c, !insn.addr !426

dec_label_pc_1e1c:                                ; preds = %dec_label_pc_1e4b, %dec_label_pc_1e36, %dec_label_pc_1df0
  %10 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @global_var_3308, i64 0, i64 0)), !insn.addr !427
  %11 = call i32 @puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @global_var_3338, i64 0, i64 0)), !insn.addr !428
  br label %dec_label_pc_1dd7, !insn.addr !429

dec_label_pc_1e36:                                ; preds = %dec_label_pc_1df0
  %12 = ptrtoint i64* %stack_var_-104 to i64, !insn.addr !430
  %13 = call i64 @strings_not_equal(i64 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_3450, i64 0, i64 0)), !insn.addr !431
  %14 = trunc i64 %13 to i32, !insn.addr !432
  %15 = icmp eq i32 %14, 0, !insn.addr !432
  %16 = icmp eq i1 %15, false, !insn.addr !433
  br i1 %16, label %dec_label_pc_1e1c, label %dec_label_pc_1e4b, !insn.addr !433

dec_label_pc_1e4b:                                ; preds = %dec_label_pc_1e36
  %17 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_var_32a8, i64 0, i64 0)), !insn.addr !434
  %18 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @global_var_32d0, i64 0, i64 0)), !insn.addr !435
  %19 = call i64 @secret_phase(), !insn.addr !436
  br label %dec_label_pc_1e1c, !insn.addr !437

dec_label_pc_1e6f:                                ; preds = %dec_label_pc_1dd7
  call void @__stack_chk_fail(), !insn.addr !438
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !438

; uselistorder directives
  uselistorder i64* %stack_var_-104, { 1, 0 }
  uselistorder i64 (i64, i8*)* @strings_not_equal, { 1, 0 }
  uselistorder i32 (i8*)* @puts, { 18, 17, 16, 15, 13, 12, 11, 9, 8, 7, 10, 14, 21, 20, 19, 6, 5, 4, 3, 2, 1, 0, 22 }
  uselistorder i32 6, { 1, 2, 3, 4, 0, 5 }
  uselistorder i32* bitcast (i128* @global_var_56ac to i32*), { 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder i64 (i64)* @send_msg, { 1, 0 }
}

define i64 @sigalrm_handler() local_unnamed_addr {
dec_label_pc_1e74:
  %0 = load %_IO_FILE*, %_IO_FILE** @global_var_56a0, align 8, !insn.addr !439
  %1 = call i32 (%_IO_FILE*, i32, i8*, ...) @__fprintf_chk(%_IO_FILE* %0, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_var_3490, i64 0, i64 0), i64 0), !insn.addr !440
  call void @exit(i32 1), !insn.addr !441
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !441

; uselistorder directives
  uselistorder void (i32)* @exit, { 12, 8, 7, 6, 3, 5, 4, 9, 2, 11, 10, 1, 0, 13 }
}

define i64 @rio_readlineb(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1ea4:
  %rax.0.reg2mem = alloca i64, !insn.addr !442
  %r13.1.reg2mem = alloca i64, !insn.addr !442
  %r12.1.reg2mem = alloca i64, !insn.addr !442
  %.lcssa.reg2mem = alloca i32, !insn.addr !442
  %r13.0.ph.reg2mem = alloca i64, !insn.addr !442
  %r12.0.ph.reg2mem = alloca i64, !insn.addr !442
  %rdi = alloca i64, align 8
  %0 = icmp ult i64 %arg3, 2
  store i64 %arg2, i64* %r12.1.reg2mem, !insn.addr !443
  store i64 1, i64* %r13.1.reg2mem, !insn.addr !443
  br i1 %0, label %dec_label_pc_1f27, label %dec_label_pc_1ed1.preheader, !insn.addr !443

dec_label_pc_1ed1.preheader:                      ; preds = %dec_label_pc_1ea4
  %1 = add i64 %arg1, 16, !insn.addr !444
  %2 = add i64 %arg1, 4, !insn.addr !445
  %3 = inttoptr i64 %2 to i32*, !insn.addr !445
  %4 = bitcast i64* %rdi to i32*
  %5 = inttoptr i64 %1 to i64*
  %6 = add i64 %arg1, 8
  %7 = inttoptr i64 %6 to i64*
  store i64 %arg2, i64* %r12.0.ph.reg2mem
  store i64 1, i64* %r13.0.ph.reg2mem
  br label %dec_label_pc_1ed1.outer

dec_label_pc_1ed1.outer:                          ; preds = %dec_label_pc_1ed1.preheader, %dec_label_pc_1f1b
  %r13.0.ph.reload = load i64, i64* %r13.0.ph.reg2mem
  %r12.0.ph.reload = load i64, i64* %r12.0.ph.reg2mem
  %8 = load i32, i32* %3, align 4, !insn.addr !445
  %9 = icmp eq i32 %8, 0, !insn.addr !446
  %10 = icmp slt i32 %8, 0, !insn.addr !446
  %11 = icmp eq i1 %10, false, !insn.addr !447
  %12 = icmp eq i1 %9, false, !insn.addr !447
  %13 = icmp eq i1 %11, %12, !insn.addr !447
  store i32 %8, i32* %.lcssa.reg2mem, !insn.addr !447
  br i1 %13, label %dec_label_pc_1ef8, label %dec_label_pc_1ed8, !insn.addr !447

dec_label_pc_1ec7:                                ; preds = %dec_label_pc_1ed8
  %14 = call i32* @__errno_location(), !insn.addr !448
  %15 = load i32, i32* %14, align 4, !insn.addr !449
  %16 = icmp eq i32 %15, 4, !insn.addr !449
  %17 = icmp eq i1 %16, false, !insn.addr !450
  store i64 -1, i64* %rax.0.reg2mem, !insn.addr !450
  br i1 %17, label %dec_label_pc_1f2f, label %dec_label_pc_1ed1.backedge, !insn.addr !450

dec_label_pc_1ed8:                                ; preds = %dec_label_pc_1ed1.outer, %dec_label_pc_1ed1.backedge
  %18 = load i32, i32* %4, align 8, !insn.addr !451
  %19 = call i32 @read(i32 %18, i64* %5, i32 8192), !insn.addr !452
  store i32 %19, i32* %3, align 4, !insn.addr !453
  %20 = icmp slt i32 %19, 0, !insn.addr !454
  br i1 %20, label %dec_label_pc_1ec7, label %dec_label_pc_1eee, !insn.addr !455

dec_label_pc_1eee:                                ; preds = %dec_label_pc_1ed8
  %21 = icmp eq i32 %19, 0, !insn.addr !456
  br i1 %21, label %dec_label_pc_1f4a, label %dec_label_pc_1ef2, !insn.addr !457

dec_label_pc_1ef2:                                ; preds = %dec_label_pc_1eee
  store i64 %1, i64* %7, align 8, !insn.addr !458
  br label %dec_label_pc_1ed1.backedge, !insn.addr !459

dec_label_pc_1ed1.backedge:                       ; preds = %dec_label_pc_1ef2, %dec_label_pc_1ec7
  %22 = load i32, i32* %3, align 4, !insn.addr !445
  %23 = icmp eq i32 %22, 0, !insn.addr !446
  %24 = icmp slt i32 %22, 0, !insn.addr !446
  %25 = icmp eq i1 %24, false, !insn.addr !447
  %26 = icmp eq i1 %23, false, !insn.addr !447
  %27 = icmp eq i1 %25, %26, !insn.addr !447
  store i32 %22, i32* %.lcssa.reg2mem, !insn.addr !447
  br i1 %27, label %dec_label_pc_1ef8, label %dec_label_pc_1ed8, !insn.addr !447

dec_label_pc_1ef8:                                ; preds = %dec_label_pc_1ed1.backedge, %dec_label_pc_1ed1.outer
  %.lcssa.reload = load i32, i32* %.lcssa.reg2mem
  %28 = load i64, i64* %7, align 8, !insn.addr !460
  %29 = inttoptr i64 %28 to i8*, !insn.addr !461
  %30 = load i8, i8* %29, align 1, !insn.addr !461
  %31 = add i64 %28, 1, !insn.addr !462
  store i64 %31, i64* %7, align 8, !insn.addr !463
  %32 = add i32 %.lcssa.reload, -1, !insn.addr !464
  store i32 %32, i32* %3, align 4, !insn.addr !465
  %33 = add i64 %r12.0.ph.reload, 1, !insn.addr !466
  %34 = inttoptr i64 %r12.0.ph.reload to i8*, !insn.addr !467
  store i8 %30, i8* %34, align 1, !insn.addr !467
  %35 = icmp eq i8 %30, 10, !insn.addr !468
  store i64 %33, i64* %r12.1.reg2mem, !insn.addr !469
  store i64 %r13.0.ph.reload, i64* %r13.1.reg2mem, !insn.addr !469
  br i1 %35, label %dec_label_pc_1f27, label %dec_label_pc_1f1b, !insn.addr !469

dec_label_pc_1f1b:                                ; preds = %dec_label_pc_1ef8
  %36 = add nuw nsw i64 %r13.0.ph.reload, 1, !insn.addr !470
  %37 = and i64 %36, 4294967295, !insn.addr !470
  %sext1 = mul i64 %36, 4294967296
  %38 = ashr exact i64 %sext1, 32, !insn.addr !471
  %39 = icmp ult i64 %38, %arg3, !insn.addr !472
  store i64 %33, i64* %r12.0.ph.reg2mem, !insn.addr !473
  store i64 %37, i64* %r13.0.ph.reg2mem, !insn.addr !473
  store i64 %33, i64* %r12.1.reg2mem, !insn.addr !473
  store i64 %37, i64* %r13.1.reg2mem, !insn.addr !473
  br i1 %39, label %dec_label_pc_1ed1.outer, label %dec_label_pc_1f27, !insn.addr !473

dec_label_pc_1f27:                                ; preds = %dec_label_pc_1f1b, %dec_label_pc_1ef8, %dec_label_pc_1ea4, %dec_label_pc_1f4a
  %r13.1.reload = load i64, i64* %r13.1.reg2mem
  %r12.1.reload = load i64, i64* %r12.1.reg2mem
  %40 = inttoptr i64 %r12.1.reload to i8*, !insn.addr !474
  store i8 0, i8* %40, align 1, !insn.addr !474
  %sext = mul i64 %r13.1.reload, 4294967296
  %41 = ashr exact i64 %sext, 32, !insn.addr !475
  store i64 %41, i64* %rax.0.reg2mem, !insn.addr !475
  br label %dec_label_pc_1f2f, !insn.addr !475

dec_label_pc_1f2f:                                ; preds = %dec_label_pc_1ec7, %dec_label_pc_1f4a, %dec_label_pc_1f27
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !476

dec_label_pc_1f4a:                                ; preds = %dec_label_pc_1eee
  %42 = icmp eq i64 %r13.0.ph.reload, 1, !insn.addr !477
  %43 = icmp eq i1 %42, false, !insn.addr !478
  store i64 %r12.0.ph.reload, i64* %r12.1.reg2mem, !insn.addr !478
  store i64 %r13.0.ph.reload, i64* %r13.1.reg2mem, !insn.addr !478
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !478
  br i1 %43, label %dec_label_pc_1f27, label %dec_label_pc_1f2f, !insn.addr !478

; uselistorder directives
  uselistorder i64 %33, { 0, 2, 1 }
  uselistorder i64 %28, { 1, 0 }
  uselistorder i32 %22, { 0, 2, 1 }
  uselistorder i64 %r12.0.ph.reload, { 0, 2, 1 }
  uselistorder i64 %r13.0.ph.reload, { 1, 3, 2, 0 }
  uselistorder i64* %7, { 1, 0, 2 }
  uselistorder i32* %3, { 0, 3, 2, 1 }
  uselistorder i64* %r12.0.ph.reg2mem, { 1, 0, 2 }
  uselistorder i64* %r13.0.ph.reg2mem, { 1, 0, 2 }
  uselistorder i64* %r12.1.reg2mem, { 3, 0, 1, 2, 4 }
  uselistorder i64* %r13.1.reg2mem, { 3, 0, 1, 2, 4 }
  uselistorder i64* %rax.0.reg2mem, { 2, 0, 3, 1 }
  uselistorder i64 4, { 4, 5, 2, 3, 0, 6, 7, 1, 8 }
  uselistorder i64 %arg2, { 1, 0 }
  uselistorder label %dec_label_pc_1f2f, { 1, 2, 0 }
  uselistorder label %dec_label_pc_1f27, { 3, 0, 1, 2 }
  uselistorder label %dec_label_pc_1ed8, { 1, 0 }
  uselistorder label %dec_label_pc_1ed1.outer, { 1, 0 }
}

define i64 @submitr(i8* %arg1, i64* %arg2, i8* %arg3, i64 %arg4, i64 %arg5, i8* %arg6, i64 %arg7, i64 %arg8) local_unnamed_addr {
dec_label_pc_1f60:
  %0 = alloca i1
  %rcx.13.reg2mem = alloca i64, !insn.addr !479
  %rdi.7.reg2mem = alloca i64, !insn.addr !479
  %rcx.12.reg2mem = alloca i64, !insn.addr !479
  %.reg2mem = alloca i64, !insn.addr !479
  %rax.1.reg2mem = alloca i64, !insn.addr !479
  %zf.4.reg2mem = alloca i1, !insn.addr !479
  %.lcssa.reg2mem = alloca i8, !insn.addr !479
  %rcx.119.reg2mem = alloca i64, !insn.addr !479
  %rsi.110.reg2mem = alloca i64, !insn.addr !479
  %rdi.611.reg2mem = alloca i64, !insn.addr !479
  %zf.2.reg2mem = alloca i1, !insn.addr !479
  %.lcssa26.reg2mem = alloca i8, !insn.addr !479
  %rcx.1012.reg2mem = alloca i64, !insn.addr !479
  %rsi.013.reg2mem = alloca i64, !insn.addr !479
  %rdi.514.reg2mem = alloca i64, !insn.addr !479
  %r13.0.reg2mem = alloca i64, !insn.addr !479
  %rbp.2.reg2mem = alloca i64, !insn.addr !479
  %rax.0.reg2mem = alloca i64, !insn.addr !479
  %rbp.1.reg2mem = alloca i64, !insn.addr !479
  %rbx.0.reg2mem = alloca i64, !insn.addr !479
  %rbp.0.reg2mem = alloca i64, !insn.addr !479
  %rcx.9.reg2mem = alloca i64, !insn.addr !479
  %rdi.4.reg2mem = alloca i64, !insn.addr !479
  %rcx.8.reg2mem = alloca i64, !insn.addr !479
  %rcx.7.reg2mem = alloca i64, !insn.addr !479
  %rdi.3.reg2mem = alloca i64, !insn.addr !479
  %rcx.6.reg2mem = alloca i64, !insn.addr !479
  %rcx.5.reg2mem = alloca i64, !insn.addr !479
  %rdi.2.reg2mem = alloca i64, !insn.addr !479
  %rcx.4.reg2mem = alloca i64, !insn.addr !479
  %rcx.3.reg2mem = alloca i64, !insn.addr !479
  %rdi.1.reg2mem = alloca i64, !insn.addr !479
  %rcx.2.reg2mem = alloca i64, !insn.addr !479
  %rcx.1.reg2mem = alloca i64, !insn.addr !479
  %rdi.0.reg2mem = alloca i64, !insn.addr !479
  %rcx.0.reg2mem = alloca i64, !insn.addr !479
  %1 = load i1, i1* %0
  %stack_var_-32840 = alloca i64, align 8
  %stack_var_-8264 = alloca i8, align 1
  %stack_var_-24648 = alloca i64, align 8
  %stack_var_-41060 = alloca i64, align 8
  %stack_var_-41064 = alloca i64, align 8
  %stack_var_-41104 = alloca i8*, align 8
  %stack_var_-41128 = alloca i64, align 8
  %2 = ptrtoint i64* %stack_var_-41128 to i64, !insn.addr !480
  store i8* %arg6, i8** %stack_var_-41104, align 8, !insn.addr !481
  %3 = call i64 @__readfsqword(i64 40), !insn.addr !482
  %4 = call i32 @socket(i32 2, i32 1, i32 0), !insn.addr !483
  %5 = icmp slt i32 %4, 0, !insn.addr !484
  br i1 %5, label %dec_label_pc_2106, label %dec_label_pc_1fd1, !insn.addr !485

dec_label_pc_1fd1:                                ; preds = %dec_label_pc_1f60
  %6 = call %hostent* @gethostbyname(i8* %arg1), !insn.addr !486
  %7 = icmp eq %hostent* %6, null, !insn.addr !487
  br i1 %7, label %dec_label_pc_2156, label %dec_label_pc_1fe5, !insn.addr !488

dec_label_pc_1fe5:                                ; preds = %dec_label_pc_1fd1
  %8 = ptrtoint %hostent* %6 to i64, !insn.addr !486
  store i64 2, i64* %stack_var_-41064, align 8, !insn.addr !489
  %9 = add i64 %8, 20, !insn.addr !490
  %10 = inttoptr i64 %9 to i32*, !insn.addr !490
  %11 = load i32, i32* %10, align 4, !insn.addr !490
  %12 = add i64 %8, 24, !insn.addr !491
  %13 = inttoptr i64 %12 to i64*, !insn.addr !491
  %14 = load i64, i64* %13, align 8, !insn.addr !491
  %15 = inttoptr i64 %14 to i64*, !insn.addr !492
  %16 = load i64, i64* %15, align 8, !insn.addr !492
  %17 = inttoptr i64 %16 to i64*, !insn.addr !493
  %18 = call i64* @__memmove_chk(i64* nonnull %stack_var_-41060, i64* %17, i32 %11, i32 12), !insn.addr !493
  %19 = bitcast i64* %stack_var_-41064 to %sockaddr*, !insn.addr !494
  %20 = call i32 @connect(i32 %4, %sockaddr* nonnull %19, i32 16), !insn.addr !494
  %21 = icmp slt i32 %20, 0, !insn.addr !495
  br i1 %21, label %dec_label_pc_21c1, label %dec_label_pc_2044.preheader, !insn.addr !496

dec_label_pc_2044.preheader:                      ; preds = %dec_label_pc_1fe5
  %22 = ptrtoint i8* %arg6 to i64
  %23 = select i1 %1, i64 -1, i64 1
  store i64 -1, i64* %rcx.0.reg2mem
  store i64 %arg7, i64* %rdi.0.reg2mem
  br label %dec_label_pc_2044

dec_label_pc_2044:                                ; preds = %dec_label_pc_2044.preheader, %25
  %rcx.0.reload = load i64, i64* %rcx.0.reg2mem
  %24 = icmp eq i64 %rcx.0.reload, 0, !insn.addr !497
  store i64 0, i64* %rcx.1.reg2mem, !insn.addr !497
  br i1 %24, label %31, label %25, !insn.addr !497

; <label>:25:                                     ; preds = %dec_label_pc_2044
  %rdi.0.reload = load i64, i64* %rdi.0.reg2mem
  %26 = inttoptr i64 %rdi.0.reload to i8*, !insn.addr !497
  %27 = load i8, i8* %26, align 1, !insn.addr !497
  %28 = icmp eq i8 %27, 0, !insn.addr !497
  %29 = add i64 %rdi.0.reload, %23, !insn.addr !497
  %30 = add i64 %rcx.0.reload, -1, !insn.addr !497
  store i64 %30, i64* %rcx.0.reg2mem, !insn.addr !497
  store i64 %29, i64* %rdi.0.reg2mem, !insn.addr !497
  store i64 %30, i64* %rcx.1.reg2mem, !insn.addr !497
  br i1 %28, label %31, label %dec_label_pc_2044, !insn.addr !497

; <label>:31:                                     ; preds = %dec_label_pc_2044, %25
  %rcx.1.reload = load i64, i64* %rcx.1.reg2mem
  %32 = ptrtoint i8* %arg3 to i64, !insn.addr !498
  store i64 -1, i64* %rcx.2.reg2mem, !insn.addr !499
  store i64 %32, i64* %rdi.1.reg2mem, !insn.addr !499
  br label %33, !insn.addr !499

; <label>:33:                                     ; preds = %35, %31
  %rcx.2.reload = load i64, i64* %rcx.2.reg2mem
  %34 = icmp eq i64 %rcx.2.reload, 0, !insn.addr !499
  store i64 0, i64* %rcx.3.reg2mem, !insn.addr !499
  br i1 %34, label %41, label %35, !insn.addr !499

; <label>:35:                                     ; preds = %33
  %rdi.1.reload = load i64, i64* %rdi.1.reg2mem
  %36 = inttoptr i64 %rdi.1.reload to i8*, !insn.addr !499
  %37 = load i8, i8* %36, align 1, !insn.addr !499
  %38 = icmp eq i8 %37, 0, !insn.addr !499
  %39 = add i64 %rdi.1.reload, %23, !insn.addr !499
  %40 = add i64 %rcx.2.reload, -1, !insn.addr !499
  store i64 %40, i64* %rcx.2.reg2mem, !insn.addr !499
  store i64 %39, i64* %rdi.1.reg2mem, !insn.addr !499
  store i64 %40, i64* %rcx.3.reg2mem, !insn.addr !499
  br i1 %38, label %41, label %33, !insn.addr !499

; <label>:41:                                     ; preds = %33, %35
  %rcx.3.reload = load i64, i64* %rcx.3.reg2mem
  store i64 -1, i64* %rcx.4.reg2mem, !insn.addr !500
  store i64 %arg4, i64* %rdi.2.reg2mem, !insn.addr !500
  br label %42, !insn.addr !500

; <label>:42:                                     ; preds = %44, %41
  %rcx.4.reload = load i64, i64* %rcx.4.reg2mem
  %43 = icmp eq i64 %rcx.4.reload, 0, !insn.addr !500
  store i64 0, i64* %rcx.5.reg2mem, !insn.addr !500
  br i1 %43, label %50, label %44, !insn.addr !500

; <label>:44:                                     ; preds = %42
  %rdi.2.reload = load i64, i64* %rdi.2.reg2mem
  %45 = inttoptr i64 %rdi.2.reload to i8*, !insn.addr !500
  %46 = load i8, i8* %45, align 1, !insn.addr !500
  %47 = icmp eq i8 %46, 0, !insn.addr !500
  %48 = add i64 %rdi.2.reload, %23, !insn.addr !500
  %49 = add i64 %rcx.4.reload, -1, !insn.addr !500
  store i64 %49, i64* %rcx.4.reg2mem, !insn.addr !500
  store i64 %48, i64* %rdi.2.reg2mem, !insn.addr !500
  store i64 %49, i64* %rcx.5.reg2mem, !insn.addr !500
  br i1 %47, label %50, label %42, !insn.addr !500

; <label>:50:                                     ; preds = %42, %44
  %rcx.5.reload = load i64, i64* %rcx.5.reg2mem
  %51 = sub i64 0, %rcx.5.reload
  %52 = sub i64 %51, 1
  store i64 -1, i64* %rcx.6.reg2mem, !insn.addr !501
  store i64 %22, i64* %rdi.3.reg2mem, !insn.addr !501
  br label %53, !insn.addr !501

; <label>:53:                                     ; preds = %55, %50
  %rcx.6.reload = load i64, i64* %rcx.6.reg2mem
  %54 = icmp eq i64 %rcx.6.reload, 0, !insn.addr !501
  store i64 0, i64* %rcx.7.reg2mem, !insn.addr !501
  br i1 %54, label %61, label %55, !insn.addr !501

; <label>:55:                                     ; preds = %53
  %rdi.3.reload = load i64, i64* %rdi.3.reg2mem
  %56 = inttoptr i64 %rdi.3.reload to i8*, !insn.addr !501
  %57 = load i8, i8* %56, align 1, !insn.addr !501
  %58 = icmp eq i8 %57, 0, !insn.addr !501
  %59 = add i64 %rdi.3.reload, %23, !insn.addr !501
  %60 = add i64 %rcx.6.reload, -1, !insn.addr !501
  store i64 %60, i64* %rcx.6.reg2mem, !insn.addr !501
  store i64 %59, i64* %rdi.3.reg2mem, !insn.addr !501
  store i64 %60, i64* %rcx.7.reg2mem, !insn.addr !501
  br i1 %58, label %61, label %53, !insn.addr !501

; <label>:61:                                     ; preds = %53, %55
  %rcx.7.reload = load i64, i64* %rcx.7.reg2mem
  %62 = mul i64 %rcx.1.reload, 2, !insn.addr !502
  %63 = xor i64 %62, -2, !insn.addr !503
  %64 = sub i64 119, %rcx.1.reload, !insn.addr !504
  %65 = add i64 %64, %63, !insn.addr !505
  %66 = sub i64 %65, %rcx.3.reload, !insn.addr !503
  %67 = add i64 %66, %52, !insn.addr !503
  %68 = sub i64 %67, %rcx.7.reload, !insn.addr !505
  %69 = icmp ult i64 %68, 8193
  br i1 %69, label %dec_label_pc_20a1, label %dec_label_pc_221e, !insn.addr !506

dec_label_pc_20a1:                                ; preds = %61
  %70 = bitcast i64* %stack_var_-24648 to i8*, !insn.addr !507
  call void @__asm_rep_stosq_memset(i8* nonnull %70, i64 0, i64 ptrtoint (i64* @global_var_400 to i64)), !insn.addr !507
  store i64 -1, i64* %rcx.8.reg2mem, !insn.addr !508
  store i64 %arg7, i64* %rdi.4.reg2mem, !insn.addr !508
  br label %71, !insn.addr !508

; <label>:71:                                     ; preds = %73, %dec_label_pc_20a1
  %rcx.8.reload = load i64, i64* %rcx.8.reg2mem
  %72 = icmp eq i64 %rcx.8.reload, 0, !insn.addr !508
  store i64 0, i64* %rcx.9.reg2mem, !insn.addr !508
  br i1 %72, label %79, label %73, !insn.addr !508

; <label>:73:                                     ; preds = %71
  %rdi.4.reload = load i64, i64* %rdi.4.reg2mem
  %74 = inttoptr i64 %rdi.4.reload to i8*, !insn.addr !508
  %75 = load i8, i8* %74, align 1, !insn.addr !508
  %76 = icmp eq i8 %75, 0, !insn.addr !508
  %77 = add i64 %rdi.4.reload, %23, !insn.addr !508
  %78 = add i64 %rcx.8.reload, -1, !insn.addr !508
  store i64 %78, i64* %rcx.8.reg2mem, !insn.addr !508
  store i64 %77, i64* %rdi.4.reg2mem, !insn.addr !508
  store i64 %78, i64* %rcx.9.reg2mem, !insn.addr !508
  br i1 %76, label %79, label %71, !insn.addr !508

; <label>:79:                                     ; preds = %71, %73
  %rcx.9.reload = load i64, i64* %rcx.9.reg2mem
  %80 = sub i64 -2, %rcx.9.reload, !insn.addr !509
  %81 = trunc i64 %80 to i32, !insn.addr !510
  %82 = icmp eq i32 %81, 0, !insn.addr !510
  store i64 %22, i64* %.reg2mem, !insn.addr !511
  br i1 %82, label %dec_label_pc_2719, label %dec_label_pc_20da, !insn.addr !511

dec_label_pc_20da:                                ; preds = %79
  %83 = add i64 %80, 4294967295, !insn.addr !512
  %84 = and i64 %83, 4294967295, !insn.addr !512
  %85 = add i64 %arg7, 1, !insn.addr !513
  %86 = add i64 %85, %84, !insn.addr !513
  %87 = ptrtoint i64* %stack_var_-24648 to i64, !insn.addr !514
  store i64 %arg7, i64* %rbx.0.reg2mem, !insn.addr !515
  store i64 %87, i64* %rbp.1.reg2mem, !insn.addr !515
  br label %dec_label_pc_22ac, !insn.addr !515

dec_label_pc_2106:                                ; preds = %dec_label_pc_1f60
  %88 = inttoptr i64 %arg8 to i64*, !insn.addr !516
  store i64 4836930262966366789, i64* %88, align 8, !insn.addr !516
  %89 = add i64 %arg8, 8, !insn.addr !517
  %90 = inttoptr i64 %89 to i64*, !insn.addr !517
  store i64 7959303600887654764, i64* %90, align 8, !insn.addr !517
  %91 = add i64 %arg8, 16, !insn.addr !518
  %92 = inttoptr i64 %91 to i64*, !insn.addr !518
  store i64 2337214414117954145, i64* %92, align 8, !insn.addr !518
  %93 = add i64 %arg8, 24, !insn.addr !519
  %94 = inttoptr i64 %93 to i64*, !insn.addr !519
  store i64 8295742064141103715, i64* %94, align 8, !insn.addr !519
  %95 = add i64 %arg8, 32, !insn.addr !520
  %96 = inttoptr i64 %95 to i32*, !insn.addr !520
  store i32 1701536623, i32* %96, align 4, !insn.addr !520
  %97 = add i64 %arg8, 36, !insn.addr !521
  %98 = inttoptr i64 %97 to i16*, !insn.addr !521
  store i16 116, i16* %98, align 2, !insn.addr !521
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !522
  br label %dec_label_pc_25f0, !insn.addr !522

dec_label_pc_2156:                                ; preds = %dec_label_pc_1fd1
  %99 = inttoptr i64 %arg8 to i64*, !insn.addr !523
  store i64 4908987857004294725, i64* %99, align 8, !insn.addr !523
  %100 = add i64 %arg8, 8, !insn.addr !524
  %101 = inttoptr i64 %100 to i64*, !insn.addr !524
  store i64 7959303596504273742, i64* %101, align 8, !insn.addr !524
  %102 = add i64 %arg8, 16, !insn.addr !525
  %103 = inttoptr i64 %102 to i64*, !insn.addr !525
  store i64 2337214414117954145, i64* %103, align 8, !insn.addr !525
  %104 = add i64 %arg8, 24, !insn.addr !526
  %105 = inttoptr i64 %104 to i64*, !insn.addr !526
  store i64 2334402189959849330, i64* %105, align 8, !insn.addr !526
  %106 = add i64 %arg8, 32, !insn.addr !527
  %107 = inttoptr i64 %106 to i64*, !insn.addr !527
  store i64 6998719601038222707, i64* %107, align 8, !insn.addr !527
  %108 = add i64 %arg8, 40, !insn.addr !528
  %109 = inttoptr i64 %108 to i32*, !insn.addr !528
  store i32 1701995620, i32* %109, align 4, !insn.addr !528
  %110 = add i64 %arg8, 44, !insn.addr !529
  %111 = inttoptr i64 %110 to i16*, !insn.addr !529
  store i16 29555, i16* %111, align 2, !insn.addr !529
  %112 = add i64 %arg8, 46, !insn.addr !530
  %113 = inttoptr i64 %112 to i8*, !insn.addr !530
  store i8 0, i8* %113, align 1, !insn.addr !530
  %114 = call i32 @close(i32 %4), !insn.addr !531
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !532
  br label %dec_label_pc_25f0, !insn.addr !532

dec_label_pc_21c1:                                ; preds = %dec_label_pc_1fe5
  %115 = inttoptr i64 %arg8 to i64*, !insn.addr !533
  store i64 6133966955649069637, i64* %115, align 8, !insn.addr !533
  %116 = add i64 %arg8, 8, !insn.addr !534
  %117 = inttoptr i64 %116 to i64*, !insn.addr !534
  store i64 8031079655490609518, i64* %117, align 8, !insn.addr !534
  %118 = add i64 %arg8, 16, !insn.addr !535
  %119 = inttoptr i64 %118 to i64*, !insn.addr !535
  store i64 8386658456067597088, i64* %119, align 8, !insn.addr !535
  %120 = add i64 %arg8, 24, !insn.addr !536
  %121 = inttoptr i64 %120 to i64*, !insn.addr !536
  store i64 2334386829831140384, i64* %121, align 8, !insn.addr !536
  %122 = add i64 %arg8, 32, !insn.addr !537
  %123 = inttoptr i64 %122 to i32*, !insn.addr !537
  store i32 1987208563, i32* %123, align 4, !insn.addr !537
  %124 = add i64 %arg8, 36, !insn.addr !538
  %125 = inttoptr i64 %124 to i16*, !insn.addr !538
  store i16 29285, i16* %125, align 2, !insn.addr !538
  %126 = add i64 %arg8, 38, !insn.addr !539
  %127 = inttoptr i64 %126 to i8*, !insn.addr !539
  store i8 0, i8* %127, align 1, !insn.addr !539
  %128 = call i32 @close(i32 %4), !insn.addr !540
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !541
  br label %dec_label_pc_25f0, !insn.addr !541

dec_label_pc_221e:                                ; preds = %61
  %129 = inttoptr i64 %arg8 to i64*, !insn.addr !542
  store i64 5917794173535285829, i64* %129, align 8, !insn.addr !542
  %130 = add i64 %arg8, 8, !insn.addr !543
  %131 = inttoptr i64 %130 to i64*, !insn.addr !543
  store i64 8391086215129297765, i64* %131, align 8, !insn.addr !543
  %132 = add i64 %arg8, 16, !insn.addr !544
  %133 = inttoptr i64 %132 to i64*, !insn.addr !544
  store i64 8029764343147948402, i64* %133, align 8, !insn.addr !544
  %134 = add i64 %arg8, 24, !insn.addr !545
  %135 = inttoptr i64 %134 to i64*, !insn.addr !545
  store i64 2318902353117408288, i64* %135, align 8, !insn.addr !545
  %136 = add i64 %arg8, 32, !insn.addr !546
  %137 = inttoptr i64 %136 to i64*, !insn.addr !546
  store i64 7310293708491157065, i64* %137, align 8, !insn.addr !546
  %138 = add i64 %arg8, 40, !insn.addr !547
  %139 = inttoptr i64 %138 to i64*, !insn.addr !547
  store i64 5932447205327983392, i64* %139, align 8, !insn.addr !547
  %140 = add i64 %arg8, 48, !insn.addr !548
  %141 = inttoptr i64 %140 to i64*, !insn.addr !548
  store i64 19796991806623071, i64* %141, align 8, !insn.addr !548
  %142 = call i32 @close(i32 %4), !insn.addr !549
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !550
  br label %dec_label_pc_25f0, !insn.addr !550

dec_label_pc_2291:                                ; preds = %dec_label_pc_22ac
  %143 = add i8 %155, 22
  %144 = urem i8 %143, 64
  %145 = zext i8 %144 to i64, !insn.addr !551
  %146 = shl i64 1, %145, !insn.addr !551
  %147 = and i64 %146, 9007199254806489, !insn.addr !551
  %148 = icmp ne i64 %147, 0, !insn.addr !551
  %149 = icmp eq i1 %148, false, !insn.addr !552
  br i1 %149, label %dec_label_pc_22b8, label %dec_label_pc_2297, !insn.addr !552

dec_label_pc_2297:                                ; preds = %dec_label_pc_2291, %dec_label_pc_22b8
  %150 = inttoptr i64 %rbp.1.reload to i8*, !insn.addr !553
  store i8 %155, i8* %150, align 1, !insn.addr !553
  %151 = add i64 %rbp.1.reload, 1, !insn.addr !554
  store i64 %151, i64* %rbp.0.reg2mem, !insn.addr !554
  br label %dec_label_pc_229f, !insn.addr !554

dec_label_pc_229f:                                ; preds = %dec_label_pc_232b, %dec_label_pc_2297, %dec_label_pc_22dd
  %rbp.0.reload = load i64, i64* %rbp.0.reg2mem
  %152 = add i64 %rbx.0.reload, 1, !insn.addr !555
  %153 = icmp eq i64 %152, %86, !insn.addr !556
  store i64 %152, i64* %rbx.0.reg2mem, !insn.addr !557
  store i64 %rbp.0.reload, i64* %rbp.1.reg2mem, !insn.addr !557
  br i1 %153, label %dec_label_pc_2719.loopexit, label %dec_label_pc_22ac, !insn.addr !557

dec_label_pc_22ac:                                ; preds = %dec_label_pc_229f, %dec_label_pc_20da
  %rbp.1.reload = load i64, i64* %rbp.1.reg2mem
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %154 = inttoptr i64 %rbx.0.reload to i8*, !insn.addr !558
  %155 = load i8, i8* %154, align 1, !insn.addr !558
  %156 = add i8 %155, -42, !insn.addr !559
  %157 = icmp ult i8 %156, 54
  br i1 %157, label %dec_label_pc_2291, label %dec_label_pc_22b8, !insn.addr !560

dec_label_pc_22b8:                                ; preds = %dec_label_pc_2291, %dec_label_pc_22ac
  %158 = and i8 %155, -33, !insn.addr !561
  %159 = add i8 %158, -65, !insn.addr !562
  %160 = icmp ult i8 %159, 26
  br i1 %160, label %dec_label_pc_2297, label %dec_label_pc_22c5, !insn.addr !563

dec_label_pc_22c5:                                ; preds = %dec_label_pc_22b8
  %161 = icmp eq i8 %155, 32, !insn.addr !564
  br i1 %161, label %dec_label_pc_232b, label %dec_label_pc_22cb, !insn.addr !565

dec_label_pc_22cb:                                ; preds = %dec_label_pc_22c5
  %162 = add i8 %155, -32, !insn.addr !566
  %163 = icmp ugt i8 %162, 95
  %164 = icmp eq i8 %155, 9, !insn.addr !567
  %165 = icmp eq i1 %164, false, !insn.addr !568
  %or.cond = icmp eq i1 %163, %165
  br i1 %or.cond, label %dec_label_pc_268c, label %dec_label_pc_22dd, !insn.addr !569

dec_label_pc_22dd:                                ; preds = %dec_label_pc_22cb
  %166 = zext i8 %155 to i32, !insn.addr !570
  %167 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* nonnull %stack_var_-8264, i32 1, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_3566, i64 0, i64 0), i32 %166), !insn.addr !571
  %168 = load i8, i8* %stack_var_-8264, align 1, !insn.addr !572
  %169 = inttoptr i64 %rbp.1.reload to i8*, !insn.addr !573
  store i8 %168, i8* %169, align 1, !insn.addr !573
  %170 = add i64 %rbp.1.reload, 1, !insn.addr !574
  %171 = inttoptr i64 %170 to i8*, !insn.addr !574
  %172 = add i64 %rbp.1.reload, 2, !insn.addr !575
  %173 = inttoptr i64 %172 to i8*, !insn.addr !575
  %174 = add i64 %rbp.1.reload, 3, !insn.addr !576
  store i64 %174, i64* %rbp.0.reg2mem, !insn.addr !577
  br label %dec_label_pc_229f, !insn.addr !577

dec_label_pc_232b:                                ; preds = %dec_label_pc_22c5
  %175 = inttoptr i64 %rbp.1.reload to i8*, !insn.addr !578
  store i8 43, i8* %175, align 1, !insn.addr !578
  %176 = add i64 %rbp.1.reload, 1, !insn.addr !579
  store i64 %176, i64* %rbp.0.reg2mem, !insn.addr !580
  br label %dec_label_pc_229f, !insn.addr !580

dec_label_pc_2338:                                ; preds = %dec_label_pc_2353, %dec_label_pc_2340
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %177 = add i64 %rax.0.reload, %r13.0.reload, !insn.addr !581
  %178 = sub i64 %rbp.2.reload, %rax.0.reload, !insn.addr !582
  %179 = icmp eq i64 %178, 0, !insn.addr !582
  store i64 %178, i64* %rbp.2.reg2mem, !insn.addr !583
  store i64 %177, i64* %r13.0.reg2mem, !insn.addr !583
  br i1 %179, label %dec_label_pc_2366, label %dec_label_pc_2340, !insn.addr !583

dec_label_pc_2340:                                ; preds = %362, %dec_label_pc_2338
  %r13.0.reload = load i64, i64* %r13.0.reg2mem
  %rbp.2.reload = load i64, i64* %rbp.2.reg2mem
  %180 = inttoptr i64 %r13.0.reload to i64*, !insn.addr !584
  %181 = trunc i64 %rbp.2.reload to i32, !insn.addr !584
  %182 = call i32 @write(i32 %4, i64* %180, i32 %181), !insn.addr !584
  %183 = sext i32 %182 to i64, !insn.addr !584
  %184 = icmp eq i32 %182, 0, !insn.addr !585
  %185 = icmp slt i32 %182, 0, !insn.addr !585
  %186 = icmp eq i1 %185, false, !insn.addr !586
  %187 = icmp eq i1 %184, false, !insn.addr !586
  %188 = icmp eq i1 %186, %187, !insn.addr !586
  store i64 %183, i64* %rax.0.reg2mem, !insn.addr !586
  br i1 %188, label %dec_label_pc_2338, label %dec_label_pc_2353, !insn.addr !586

dec_label_pc_2353:                                ; preds = %dec_label_pc_2340
  %189 = call i32* @__errno_location(), !insn.addr !587
  %190 = load i32, i32* %189, align 4, !insn.addr !588
  %191 = icmp eq i32 %190, 4, !insn.addr !588
  %192 = icmp eq i1 %191, false, !insn.addr !589
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !589
  br i1 %192, label %dec_label_pc_2492, label %dec_label_pc_2338, !insn.addr !589

dec_label_pc_2366:                                ; preds = %dec_label_pc_2338
  %193 = icmp slt i64 %363, 0, !insn.addr !590
  br i1 %193, label %dec_label_pc_2492, label %dec_label_pc_236f, !insn.addr !591

dec_label_pc_236f:                                ; preds = %362, %dec_label_pc_2366
  %194 = add i64 %2, 80, !insn.addr !592
  %195 = inttoptr i64 %194 to i32*, !insn.addr !592
  store i32 %4, i32* %195, align 8, !insn.addr !592
  %196 = add i64 %2, 84, !insn.addr !593
  %197 = inttoptr i64 %196 to i32*, !insn.addr !593
  store i32 0, i32* %197, align 4, !insn.addr !593
  %198 = add i64 %2, 96, !insn.addr !594
  %199 = add i64 %2, 88, !insn.addr !595
  %200 = inttoptr i64 %199 to i64*, !insn.addr !595
  store i64 %198, i64* %200, align 8, !insn.addr !595
  %201 = add i64 %2, 8288, !insn.addr !596
  %202 = call i64 @rio_readlineb(i64 %194, i64 %201, i64 8192), !insn.addr !597
  %203 = icmp slt i64 %202, 1
  br i1 %203, label %dec_label_pc_24f1, label %dec_label_pc_23a5, !insn.addr !598

dec_label_pc_23a5:                                ; preds = %dec_label_pc_236f
  %204 = add i64 %2, 60, !insn.addr !599
  %205 = add i64 %2, 24672, !insn.addr !600
  %206 = add i64 %2, 32864, !insn.addr !601
  %207 = inttoptr i64 %201 to i8*, !insn.addr !602
  %208 = inttoptr i64 %205 to i8**, !insn.addr !602
  %209 = inttoptr i64 %204 to i64*, !insn.addr !602
  %210 = inttoptr i64 %206 to i64*, !insn.addr !602
  %211 = call i32 (i8*, i8*, ...) @sscanf(i8* %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_var_356d, i64 0, i64 0), i8** %208, i64* nonnull %209, i64* %210), !insn.addr !602
  %212 = inttoptr i64 %204 to i32*, !insn.addr !603
  %213 = load i32, i32* %212, align 4, !insn.addr !603
  %214 = icmp eq i32 %213, 200, !insn.addr !604
  %215 = icmp eq i1 %214, false, !insn.addr !605
  br i1 %215, label %dec_label_pc_2565, label %dec_label_pc_23f9, !insn.addr !605

dec_label_pc_23f9:                                ; preds = %dec_label_pc_23a5, %dec_label_pc_2413
  store i64 ptrtoint ([3 x i8]* @global_var_357e to i64), i64* %rdi.514.reg2mem
  store i64 %201, i64* %rsi.013.reg2mem
  store i64 3, i64* %rcx.1012.reg2mem
  br label %221

; <label>:216:                                    ; preds = %221
  %rcx.1012.reload = load i64, i64* %rcx.1012.reg2mem
  %217 = add nsw i64 %rcx.1012.reload, -1, !insn.addr !606
  %218 = add i64 %rdi.514.reload, %23, !insn.addr !606
  %219 = add i64 %rsi.013.reload, %23, !insn.addr !606
  %220 = icmp eq i64 %217, 0, !insn.addr !606
  store i64 %218, i64* %rdi.514.reg2mem, !insn.addr !606
  store i64 %219, i64* %rsi.013.reg2mem, !insn.addr !606
  store i64 %217, i64* %rcx.1012.reg2mem, !insn.addr !606
  store i8 %223, i8* %.lcssa26.reg2mem, !insn.addr !606
  store i1 true, i1* %zf.2.reg2mem, !insn.addr !606
  br i1 %220, label %227, label %221, !insn.addr !606

; <label>:221:                                    ; preds = %dec_label_pc_23f9, %216
  %rsi.013.reload = load i64, i64* %rsi.013.reg2mem
  %rdi.514.reload = load i64, i64* %rdi.514.reg2mem
  %222 = inttoptr i64 %rsi.013.reload to i8*, !insn.addr !606
  %223 = load i8, i8* %222, align 1, !insn.addr !606
  %224 = inttoptr i64 %rdi.514.reload to i8*, !insn.addr !606
  %225 = load i8, i8* %224, align 1, !insn.addr !606
  %226 = icmp eq i8 %223, %225, !insn.addr !606
  store i8 %225, i8* %.lcssa26.reg2mem, !insn.addr !606
  store i1 false, i1* %zf.2.reg2mem, !insn.addr !606
  br i1 %226, label %216, label %227, !insn.addr !606

; <label>:227:                                    ; preds = %216, %221
  %zf.2.reload = load i1, i1* %zf.2.reg2mem
  %.lcssa26.reload = load i8, i8* %.lcssa26.reg2mem
  %228 = icmp ult i8 %223, %.lcssa26.reload, !insn.addr !606
  %229 = or i1 %228, %zf.2.reload, !insn.addr !607
  %230 = icmp ne i1 %229, true, !insn.addr !607
  %231 = icmp eq i1 %230, %228, !insn.addr !608
  %232 = call i64 @rio_readlineb(i64 %194, i64 %201, i64 8192)
  br i1 %231, label %dec_label_pc_259c, label %dec_label_pc_2413, !insn.addr !609

dec_label_pc_2413:                                ; preds = %227
  %233 = icmp eq i64 %232, 0, !insn.addr !610
  %234 = icmp slt i64 %232, 0, !insn.addr !610
  %235 = icmp eq i1 %234, false, !insn.addr !611
  %236 = icmp eq i1 %233, false, !insn.addr !611
  %237 = icmp eq i1 %235, %236, !insn.addr !611
  br i1 %237, label %dec_label_pc_23f9, label %dec_label_pc_2428, !insn.addr !611

dec_label_pc_2428:                                ; preds = %dec_label_pc_2413
  %238 = inttoptr i64 %arg8 to i64*, !insn.addr !612
  store i64 4836930262966366789, i64* %238, align 8, !insn.addr !612
  %239 = add i64 %arg8, 8, !insn.addr !613
  %240 = inttoptr i64 %239 to i64*, !insn.addr !613
  store i64 7959303600887654764, i64* %240, align 8, !insn.addr !613
  %241 = add i64 %arg8, 16, !insn.addr !614
  %242 = inttoptr i64 %241 to i64*, !insn.addr !614
  store i64 2337214414117954145, i64* %242, align 8, !insn.addr !614
  %243 = add i64 %arg8, 24, !insn.addr !615
  %244 = inttoptr i64 %243 to i64*, !insn.addr !615
  store i64 7018130082659132786, i64* %244, align 8, !insn.addr !615
  %245 = add i64 %arg8, 32, !insn.addr !616
  %246 = inttoptr i64 %245 to i64*, !insn.addr !616
  store i64 8030593375116879204, i64* %246, align 8, !insn.addr !616
  %247 = add i64 %arg8, 40, !insn.addr !617
  %248 = inttoptr i64 %247 to i64*, !insn.addr !617
  store i64 8243124926671954029, i64* %248, align 8, !insn.addr !617
  %249 = add i64 %arg8, 48, !insn.addr !618
  %250 = inttoptr i64 %249 to i8*, !insn.addr !618
  store i8 0, i8* %250, align 1, !insn.addr !618
  %251 = call i32 @close(i32 %4), !insn.addr !619
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !620
  br label %dec_label_pc_25f0, !insn.addr !620

dec_label_pc_2492:                                ; preds = %dec_label_pc_2353, %dec_label_pc_2366
  %252 = inttoptr i64 %arg8 to i64*, !insn.addr !621
  store i64 4836930262966366789, i64* %252, align 8, !insn.addr !621
  %253 = add i64 %arg8, 8, !insn.addr !622
  %254 = inttoptr i64 %253 to i64*, !insn.addr !622
  store i64 7959303600887654764, i64* %254, align 8, !insn.addr !622
  %255 = add i64 %arg8, 16, !insn.addr !623
  %256 = inttoptr i64 %255 to i64*, !insn.addr !623
  store i64 2337214414117954145, i64* %256, align 8, !insn.addr !623
  %257 = add i64 %arg8, 24, !insn.addr !624
  %258 = inttoptr i64 %257 to i64*, !insn.addr !624
  store i64 8031079655625290359, i64* %258, align 8, !insn.addr !624
  %259 = add i64 %arg8, 32, !insn.addr !625
  %260 = inttoptr i64 %259 to i64*, !insn.addr !625
  store i64 8243121275949052960, i64* %260, align 8, !insn.addr !625
  %261 = add i64 %arg8, 40, !insn.addr !626
  %262 = inttoptr i64 %261 to i32*, !insn.addr !626
  store i32 7497078, i32* %262, align 4, !insn.addr !626
  %263 = call i32 @close(i32 %4), !insn.addr !627
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !628
  br label %dec_label_pc_25f0, !insn.addr !628

dec_label_pc_24f1:                                ; preds = %dec_label_pc_236f
  %264 = inttoptr i64 %arg8 to i64*, !insn.addr !629
  store i64 4836930262966366789, i64* %264, align 8, !insn.addr !629
  %265 = add i64 %arg8, 8, !insn.addr !630
  %266 = inttoptr i64 %265 to i64*, !insn.addr !630
  store i64 7959303600887654764, i64* %266, align 8, !insn.addr !630
  %267 = add i64 %arg8, 16, !insn.addr !631
  %268 = inttoptr i64 %267 to i64*, !insn.addr !631
  store i64 2337214414117954145, i64* %268, align 8, !insn.addr !631
  %269 = add i64 %arg8, 24, !insn.addr !632
  %270 = inttoptr i64 %269 to i64*, !insn.addr !632
  store i64 8244232882187494770, i64* %270, align 8, !insn.addr !632
  %271 = add i64 %arg8, 32, !insn.addr !633
  %272 = inttoptr i64 %271 to i64*, !insn.addr !633
  store i64 7306071583668335731, i64* %272, align 8, !insn.addr !633
  %273 = add i64 %arg8, 40, !insn.addr !634
  %274 = inttoptr i64 %273 to i64*, !insn.addr !634
  store i64 8295750839044546674, i64* %274, align 8, !insn.addr !634
  %275 = add i64 %arg8, 48, !insn.addr !635
  %276 = inttoptr i64 %275 to i32*, !insn.addr !635
  store i32 1702261349, i32* %276, align 4, !insn.addr !635
  %277 = add i64 %arg8, 52, !insn.addr !636
  %278 = inttoptr i64 %277 to i16*, !insn.addr !636
  store i16 114, i16* %278, align 2, !insn.addr !636
  %279 = call i32 @close(i32 %4), !insn.addr !637
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !638
  br label %dec_label_pc_25f0, !insn.addr !638

dec_label_pc_2565:                                ; preds = %dec_label_pc_23a5
  %280 = zext i32 %213 to i64, !insn.addr !603
  %281 = inttoptr i64 %arg8 to i8*, !insn.addr !639
  %282 = inttoptr i64 %206 to i8*, !insn.addr !639
  %283 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* %281, i32 1, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @global_var_34b8, i64 0, i64 0), i64 %280, i8* %282), !insn.addr !639
  %284 = call i32 @close(i32 %4), !insn.addr !640
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !641
  br label %dec_label_pc_25f0, !insn.addr !641

dec_label_pc_259c:                                ; preds = %227
  %285 = icmp slt i64 %232, 1
  br i1 %285, label %dec_label_pc_2619, label %dec_label_pc_25b8, !insn.addr !642

dec_label_pc_25b8:                                ; preds = %dec_label_pc_259c
  %286 = inttoptr i64 %arg8 to i8*, !insn.addr !643
  %287 = call i8* @strcpy(i8* %286, i8* %207), !insn.addr !643
  %288 = call i32 @close(i32 %4), !insn.addr !644
  store i64 ptrtoint ([3 x i8]* @global_var_3581 to i64), i64* %rdi.611.reg2mem
  store i64 %arg8, i64* %rsi.110.reg2mem
  store i64 3, i64* %rcx.119.reg2mem
  br label %294

; <label>:289:                                    ; preds = %294
  %rcx.119.reload = load i64, i64* %rcx.119.reg2mem
  %290 = add nsw i64 %rcx.119.reload, -1, !insn.addr !645
  %291 = add i64 %rdi.611.reload, %23, !insn.addr !645
  %292 = add i64 %rsi.110.reload, %23, !insn.addr !645
  %293 = icmp eq i64 %290, 0, !insn.addr !645
  store i64 %291, i64* %rdi.611.reg2mem, !insn.addr !645
  store i64 %292, i64* %rsi.110.reg2mem, !insn.addr !645
  store i64 %290, i64* %rcx.119.reg2mem, !insn.addr !645
  store i8 %296, i8* %.lcssa.reg2mem, !insn.addr !645
  store i1 true, i1* %zf.4.reg2mem, !insn.addr !645
  br i1 %293, label %300, label %294, !insn.addr !645

; <label>:294:                                    ; preds = %dec_label_pc_25b8, %289
  %rsi.110.reload = load i64, i64* %rsi.110.reg2mem
  %rdi.611.reload = load i64, i64* %rdi.611.reg2mem
  %295 = inttoptr i64 %rsi.110.reload to i8*, !insn.addr !645
  %296 = load i8, i8* %295, align 1, !insn.addr !645
  %297 = inttoptr i64 %rdi.611.reload to i8*, !insn.addr !645
  %298 = load i8, i8* %297, align 1, !insn.addr !645
  %299 = icmp eq i8 %296, %298, !insn.addr !645
  store i8 %298, i8* %.lcssa.reg2mem, !insn.addr !645
  store i1 false, i1* %zf.4.reg2mem, !insn.addr !645
  br i1 %299, label %289, label %300, !insn.addr !645

; <label>:300:                                    ; preds = %289, %294
  %zf.4.reload = load i1, i1* %zf.4.reg2mem
  %.lcssa.reload = load i8, i8* %.lcssa.reg2mem
  %301 = icmp ult i8 %296, %.lcssa.reload, !insn.addr !645
  %302 = or i1 %301, %zf.4.reload, !insn.addr !646
  %303 = icmp ne i1 %302, true, !insn.addr !646
  %304 = icmp eq i1 %303, %301, !insn.addr !647
  %305 = icmp eq i1 %304, false, !insn.addr !648
  %306 = select i1 %305, i64 4294967295, i64 0, !insn.addr !649
  store i64 %306, i64* %rax.1.reg2mem, !insn.addr !649
  br label %dec_label_pc_25f0, !insn.addr !649

dec_label_pc_25f0:                                ; preds = %dec_label_pc_2619, %300, %dec_label_pc_2565, %dec_label_pc_24f1, %dec_label_pc_2492, %dec_label_pc_2428, %dec_label_pc_268c, %dec_label_pc_221e, %dec_label_pc_21c1, %dec_label_pc_2156, %dec_label_pc_2106
  %307 = add i64 %2, 41064, !insn.addr !650
  %308 = inttoptr i64 %307 to i64*, !insn.addr !650
  %309 = load i64, i64* %308, align 8, !insn.addr !650
  %310 = call i64 @__readfsqword(i64 40), !insn.addr !651
  %311 = icmp eq i64 %309, %310, !insn.addr !651
  %312 = icmp eq i1 %311, false, !insn.addr !652
  br i1 %312, label %dec_label_pc_279c, label %dec_label_pc_2607, !insn.addr !652

dec_label_pc_2607:                                ; preds = %dec_label_pc_25f0
  %rax.1.reload = load i64, i64* %rax.1.reg2mem
  ret i64 %rax.1.reload, !insn.addr !653

dec_label_pc_2619:                                ; preds = %dec_label_pc_259c
  %313 = inttoptr i64 %arg8 to i64*, !insn.addr !654
  store i64 4836930262966366789, i64* %313, align 8, !insn.addr !654
  %314 = add i64 %arg8, 8, !insn.addr !655
  %315 = inttoptr i64 %314 to i64*, !insn.addr !655
  store i64 7959303600887654764, i64* %315, align 8, !insn.addr !655
  %316 = add i64 %arg8, 16, !insn.addr !656
  %317 = inttoptr i64 %316 to i64*, !insn.addr !656
  store i64 2337214414117954145, i64* %317, align 8, !insn.addr !656
  %318 = add i64 %arg8, 24, !insn.addr !657
  %319 = inttoptr i64 %318 to i64*, !insn.addr !657
  store i64 7022364301937698162, i64* %319, align 8, !insn.addr !657
  %320 = add i64 %arg8, 32, !insn.addr !658
  %321 = inttoptr i64 %320 to i64*, !insn.addr !658
  store i64 8319104456053716340, i64* %321, align 8, !insn.addr !658
  %322 = add i64 %arg8, 40, !insn.addr !659
  %323 = inttoptr i64 %322 to i64*, !insn.addr !659
  store i64 7885647255504775009, i64* %323, align 8, !insn.addr !659
  %324 = add i64 %arg8, 48, !insn.addr !660
  %325 = inttoptr i64 %324 to i64*, !insn.addr !660
  store i64 32199706744812320, i64* %325, align 8, !insn.addr !660
  %326 = call i32 @close(i32 %4), !insn.addr !661
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !662
  br label %dec_label_pc_25f0, !insn.addr !662

dec_label_pc_268c:                                ; preds = %dec_label_pc_22cb
  %327 = inttoptr i64 %arg8 to i64*, !insn.addr !663
  store i64 5917794173535285829, i64* %327, align 8, !insn.addr !663
  %328 = add i64 %arg8, 8, !insn.addr !664
  %329 = inttoptr i64 %328 to i64*, !insn.addr !664
  store i64 8391086215129297765, i64* %329, align 8, !insn.addr !664
  %330 = add i64 %arg8, 16, !insn.addr !665
  %331 = inttoptr i64 %330 to i64*, !insn.addr !665
  store i64 7957688057412348274, i64* %331, align 8, !insn.addr !665
  %332 = add i64 %arg8, 24, !insn.addr !666
  %333 = inttoptr i64 %332 to i64*, !insn.addr !666
  store i64 7953674097058734452, i64* %333, align 8, !insn.addr !666
  %334 = add i64 %arg8, 32, !insn.addr !667
  %335 = inttoptr i64 %334 to i64*, !insn.addr !667
  store i64 7809636914145552672, i64* %335, align 8, !insn.addr !667
  %336 = add i64 %arg8, 40, !insn.addr !668
  %337 = inttoptr i64 %336 to i64*, !insn.addr !668
  store i64 8246212367049977632, i64* %337, align 8, !insn.addr !668
  %338 = add i64 %arg8, 48, !insn.addr !669
  %339 = inttoptr i64 %338 to i64*, !insn.addr !669
  store i64 2334391151659085417, i64* %339, align 8, !insn.addr !669
  %340 = add i64 %arg8, 56, !insn.addr !670
  %341 = inttoptr i64 %340 to i64*, !insn.addr !670
  store i64 7310577365311121507, i64* %341, align 8, !insn.addr !670
  %342 = add i64 %arg8, 64, !insn.addr !671
  %343 = inttoptr i64 %342 to i16*, !insn.addr !671
  store i16 11890, i16* %343, align 2, !insn.addr !671
  %344 = add i64 %arg8, 66, !insn.addr !672
  %345 = inttoptr i64 %344 to i8*, !insn.addr !672
  store i8 0, i8* %345, align 1, !insn.addr !672
  %346 = call i32 @close(i32 %4), !insn.addr !673
  store i64 4294967295, i64* %rax.1.reg2mem, !insn.addr !674
  br label %dec_label_pc_25f0, !insn.addr !674

dec_label_pc_2719.loopexit:                       ; preds = %dec_label_pc_229f
  %347 = load i8*, i8** %stack_var_-41104, align 8
  %348 = ptrtoint i8* %347 to i64
  store i64 %348, i64* %.reg2mem
  br label %dec_label_pc_2719

dec_label_pc_2719:                                ; preds = %79, %dec_label_pc_2719.loopexit
  %.reload = load i64, i64* %.reg2mem
  %349 = bitcast i64* %stack_var_-32840 to i8*, !insn.addr !675
  %350 = inttoptr i64 %arg4 to i8*, !insn.addr !675
  %351 = inttoptr i64 %arg5 to i8*, !insn.addr !675
  %.cast = inttoptr i64 %.reload to i8*
  %352 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* nonnull %349, i32 1, i32 8192, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @global_var_34e8, i64 0, i64 0), i8* %arg3, i8* %350, i8* %351, i8* %.cast, i64* nonnull %stack_var_-24648), !insn.addr !675
  %353 = ptrtoint i64* %stack_var_-32840 to i64, !insn.addr !676
  store i64 -1, i64* %rcx.12.reg2mem, !insn.addr !677
  store i64 %353, i64* %rdi.7.reg2mem, !insn.addr !677
  br label %354, !insn.addr !677

; <label>:354:                                    ; preds = %356, %dec_label_pc_2719
  %rcx.12.reload = load i64, i64* %rcx.12.reg2mem
  %355 = icmp eq i64 %rcx.12.reload, 0, !insn.addr !677
  store i64 0, i64* %rcx.13.reg2mem, !insn.addr !677
  br i1 %355, label %362, label %356, !insn.addr !677

; <label>:356:                                    ; preds = %354
  %rdi.7.reload = load i64, i64* %rdi.7.reg2mem
  %357 = inttoptr i64 %rdi.7.reload to i8*, !insn.addr !677
  %358 = load i8, i8* %357, align 1, !insn.addr !677
  %359 = icmp eq i8 %358, 0, !insn.addr !677
  %360 = add i64 %rdi.7.reload, %23, !insn.addr !677
  %361 = add i64 %rcx.12.reload, -1, !insn.addr !677
  store i64 %361, i64* %rcx.12.reg2mem, !insn.addr !677
  store i64 %360, i64* %rdi.7.reg2mem, !insn.addr !677
  store i64 %361, i64* %rcx.13.reg2mem, !insn.addr !677
  br i1 %359, label %362, label %354, !insn.addr !677

; <label>:362:                                    ; preds = %354, %356
  %rcx.13.reload = load i64, i64* %rcx.13.reg2mem
  %363 = sub i64 -2, %rcx.13.reload, !insn.addr !678
  %364 = icmp eq i64 %363, 0, !insn.addr !679
  %365 = icmp eq i1 %364, false, !insn.addr !680
  store i64 %363, i64* %rbp.2.reg2mem, !insn.addr !680
  store i64 %353, i64* %r13.0.reg2mem, !insn.addr !680
  br i1 %365, label %dec_label_pc_2340, label %dec_label_pc_236f, !insn.addr !680

dec_label_pc_279c:                                ; preds = %dec_label_pc_25f0
  call void @__stack_chk_fail(), !insn.addr !681
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !681

; uselistorder directives
  uselistorder i64 %363, { 0, 2, 1 }
  uselistorder i64 %rdi.7.reload, { 1, 0 }
  uselistorder i64 %353, { 1, 0 }
  uselistorder i8 %296, { 1, 2, 0 }
  uselistorder i64 %232, { 0, 2, 1 }
  uselistorder i8 %223, { 1, 2, 0 }
  uselistorder i32 %213, { 1, 0 }
  uselistorder i64 %201, { 1, 0, 2, 3 }
  uselistorder i8 %155, { 4, 0, 5, 6, 7, 1, 2, 3 }
  uselistorder i64 %rbp.1.reload, { 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder i64 %rdi.4.reload, { 1, 0 }
  uselistorder i64 %rdi.3.reload, { 1, 0 }
  uselistorder i64 %rdi.2.reload, { 1, 0 }
  uselistorder i64 %rdi.1.reload, { 1, 0 }
  uselistorder i64 %rdi.0.reload, { 1, 0 }
  uselistorder i64 %23, { 4, 0, 1, 2, 3, 5, 6, 7, 8, 9 }
  uselistorder i64 %8, { 1, 0 }
  uselistorder %hostent* %6, { 1, 0 }
  uselistorder i32 %4, { 2, 7, 8, 6, 5, 3, 9, 10, 4, 11, 1, 0, 12, 13 }
  uselistorder i64 %2, { 0, 3, 2, 1, 4, 6, 5, 7, 8 }
  uselistorder i64* %stack_var_-24648, { 0, 2, 1 }
  uselistorder i8* %stack_var_-8264, { 1, 0 }
  uselistorder i64* %stack_var_-32840, { 1, 0 }
  uselistorder i64* %rcx.0.reg2mem, { 2, 0, 1 }
  uselistorder i64* %rdi.0.reg2mem, { 2, 0, 1 }
  uselistorder i64* %rcx.2.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.1.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rcx.4.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.2.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rcx.6.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.3.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rcx.8.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.4.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rbp.0.reg2mem, { 2, 1, 0, 3 }
  uselistorder i64* %rax.0.reg2mem, { 1, 2, 0 }
  uselistorder i64* %rbp.2.reg2mem, { 1, 0, 2 }
  uselistorder i64* %r13.0.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rcx.1012.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rcx.119.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rax.1.reg2mem, { 2, 5, 0, 4, 6, 7, 8, 3, 1, 9, 10, 11 }
  uselistorder i64* %.reg2mem, { 0, 2, 1 }
  uselistorder i64* %rcx.12.reg2mem, { 1, 0, 2 }
  uselistorder i64* %rdi.7.reg2mem, { 1, 0, 2 }
  uselistorder i1 true, { 2, 0, 3, 1 }
  uselistorder i32 (i8*, i8*, ...)* @sscanf, { 3, 4, 1, 2, 0, 5 }
  uselistorder i64 (i64, i64, i64)* @rio_readlineb, { 1, 0 }
  uselistorder i64 80, { 4, 0, 1, 2, 3 }
  uselistorder i32* ()* @__errno_location, { 1, 0, 2 }
  uselistorder i64 48, { 3, 0, 1, 2, 4 }
  uselistorder i64 -2, { 1, 2, 0, 3 }
  uselistorder i64 -1, { 14, 0, 16, 15, 13, 1, 12, 2, 11, 3, 10, 4, 9, 5, 19, 6, 17, 7, 20, 18, 8, 21 }
  uselistorder i64 %arg8, { 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 26, 27, 28, 29, 30, 31, 32, 0, 25, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68 }
  uselistorder i64 %arg7, { 0, 3, 1, 2 }
  uselistorder i64 %arg4, { 1, 0 }
  uselistorder label %362, { 1, 0 }
  uselistorder label %dec_label_pc_2719, { 1, 0 }
  uselistorder label %dec_label_pc_25f0, { 6, 0, 1, 2, 3, 4, 5, 7, 8, 9, 10 }
  uselistorder label %300, { 1, 0 }
  uselistorder label %294, { 1, 0 }
  uselistorder label %dec_label_pc_2492, { 1, 0 }
  uselistorder label %227, { 1, 0 }
  uselistorder label %221, { 1, 0 }
  uselistorder label %dec_label_pc_23f9, { 1, 0 }
  uselistorder label %dec_label_pc_22b8, { 1, 0 }
  uselistorder label %dec_label_pc_229f, { 0, 2, 1 }
  uselistorder label %dec_label_pc_2297, { 1, 0 }
  uselistorder label %79, { 1, 0 }
  uselistorder label %61, { 1, 0 }
  uselistorder label %50, { 1, 0 }
  uselistorder label %41, { 1, 0 }
  uselistorder label %31, { 1, 0 }
  uselistorder label %dec_label_pc_2044, { 1, 0 }
}

define i64 @init_timeout(i64 %arg1) local_unnamed_addr {
dec_label_pc_27a1:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = trunc i64 %arg1 to i32, !insn.addr !682
  %3 = icmp eq i32 %2, 0, !insn.addr !682
  br i1 %3, label %dec_label_pc_27ca, label %dec_label_pc_27a5, !insn.addr !683

dec_label_pc_27a5:                                ; preds = %dec_label_pc_27a1
  %4 = call void (i32)* @signal(i32 14, void (i32)* inttoptr (i64 7796 to void (i32)*)), !insn.addr !684
  %5 = icmp slt i32 %2, 0, !insn.addr !685
  %6 = icmp eq i1 %5, false, !insn.addr !686
  %7 = select i1 %6, i32 %2, i32 0, !insn.addr !686
  %8 = call i32 @alarm(i32 %7), !insn.addr !687
  %9 = sext i32 %8 to i64, !insn.addr !687
  ret i64 %9, !insn.addr !688

dec_label_pc_27ca:                                ; preds = %dec_label_pc_27a1
  ret i64 %1, !insn.addr !689

; uselistorder directives
  uselistorder i32 %2, { 1, 0, 2 }
}

define i64 @init_driver(i64* %arg1) local_unnamed_addr {
dec_label_pc_27cc:
  %rax.0.reg2mem = alloca i64, !insn.addr !690
  %0 = ptrtoint i64* %arg1 to i64
  %stack_var_-52 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40), !insn.addr !691
  %2 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)), !insn.addr !692
  %3 = call void (i32)* @signal(i32 29, void (i32)* inttoptr (i64 1 to void (i32)*)), !insn.addr !693
  %4 = call void (i32)* @signal(i32 29, void (i32)* inttoptr (i64 1 to void (i32)*)), !insn.addr !694
  %5 = call i32 @socket(i32 2, i32 1, i32 0), !insn.addr !695
  %6 = icmp slt i32 %5, 0, !insn.addr !696
  br i1 %6, label %dec_label_pc_28d3, label %dec_label_pc_2830, !insn.addr !697

dec_label_pc_2830:                                ; preds = %dec_label_pc_27cc
  %7 = call %hostent* @gethostbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_3584, i64 0, i64 0)), !insn.addr !698
  %8 = icmp eq %hostent* %7, null, !insn.addr !699
  br i1 %8, label %dec_label_pc_2926, label %dec_label_pc_2847, !insn.addr !700

dec_label_pc_2847:                                ; preds = %dec_label_pc_2830
  %9 = ptrtoint %hostent* %7 to i64, !insn.addr !698
  store i64 2, i64* %stack_var_-56, align 8, !insn.addr !701
  %10 = add i64 %9, 20, !insn.addr !702
  %11 = inttoptr i64 %10 to i32*, !insn.addr !702
  %12 = load i32, i32* %11, align 4, !insn.addr !702
  %13 = add i64 %9, 24, !insn.addr !703
  %14 = inttoptr i64 %13 to i64*, !insn.addr !703
  %15 = load i64, i64* %14, align 8, !insn.addr !703
  %16 = inttoptr i64 %15 to i64*, !insn.addr !704
  %17 = load i64, i64* %16, align 8, !insn.addr !704
  %18 = inttoptr i64 %17 to i64*, !insn.addr !705
  %19 = call i64* @__memmove_chk(i64* nonnull %stack_var_-52, i64* %18, i32 %12, i32 12), !insn.addr !705
  %20 = bitcast i64* %stack_var_-56 to %sockaddr*, !insn.addr !706
  %21 = call i32 @connect(i32 %5, %sockaddr* nonnull %20, i32 16), !insn.addr !706
  %22 = icmp slt i32 %21, 0, !insn.addr !707
  br i1 %22, label %dec_label_pc_2998, label %dec_label_pc_289d, !insn.addr !708

dec_label_pc_289d:                                ; preds = %dec_label_pc_2847
  %23 = call i32 @close(i32 %5), !insn.addr !709
  %24 = bitcast i64* %arg1 to i16*, !insn.addr !710
  store i16 19279, i16* %24, align 2, !insn.addr !710
  %25 = add i64 %0, 2, !insn.addr !711
  %26 = inttoptr i64 %25 to i8*, !insn.addr !711
  store i8 0, i8* %26, align 1, !insn.addr !711
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !712
  br label %dec_label_pc_28b6, !insn.addr !712

dec_label_pc_28b6:                                ; preds = %dec_label_pc_2998, %dec_label_pc_2926, %dec_label_pc_28d3, %dec_label_pc_289d
  %27 = call i64 @__readfsqword(i64 40), !insn.addr !713
  %28 = icmp eq i64 %1, %27, !insn.addr !713
  %29 = icmp eq i1 %28, false, !insn.addr !714
  br i1 %29, label %dec_label_pc_29d0, label %dec_label_pc_28ca, !insn.addr !714

dec_label_pc_28ca:                                ; preds = %dec_label_pc_28b6
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !715

dec_label_pc_28d3:                                ; preds = %dec_label_pc_27cc
  store i64 4836930262966366789, i64* %arg1, align 8, !insn.addr !716
  %30 = add i64 %0, 8, !insn.addr !717
  %31 = inttoptr i64 %30 to i64*, !insn.addr !717
  store i64 7959303600887654764, i64* %31, align 8, !insn.addr !717
  %32 = add i64 %0, 16, !insn.addr !718
  %33 = inttoptr i64 %32 to i64*, !insn.addr !718
  store i64 2337214414117954145, i64* %33, align 8, !insn.addr !718
  %34 = add i64 %0, 24, !insn.addr !719
  %35 = inttoptr i64 %34 to i64*, !insn.addr !719
  store i64 8295742064141103715, i64* %35, align 8, !insn.addr !719
  %36 = add i64 %0, 32, !insn.addr !720
  %37 = inttoptr i64 %36 to i32*, !insn.addr !720
  store i32 1701536623, i32* %37, align 4, !insn.addr !720
  %38 = add i64 %0, 36, !insn.addr !721
  %39 = inttoptr i64 %38 to i16*, !insn.addr !721
  store i16 116, i16* %39, align 2, !insn.addr !721
  store i64 4294967295, i64* %rax.0.reg2mem, !insn.addr !722
  br label %dec_label_pc_28b6, !insn.addr !722

dec_label_pc_2926:                                ; preds = %dec_label_pc_2830
  store i64 4908987857004294725, i64* %arg1, align 8, !insn.addr !723
  %40 = add i64 %0, 8, !insn.addr !724
  %41 = inttoptr i64 %40 to i64*, !insn.addr !724
  store i64 7959303596504273742, i64* %41, align 8, !insn.addr !724
  %42 = add i64 %0, 16, !insn.addr !725
  %43 = inttoptr i64 %42 to i64*, !insn.addr !725
  store i64 2337214414117954145, i64* %43, align 8, !insn.addr !725
  %44 = add i64 %0, 24, !insn.addr !726
  %45 = inttoptr i64 %44 to i64*, !insn.addr !726
  store i64 2334402189959849330, i64* %45, align 8, !insn.addr !726
  %46 = add i64 %0, 32, !insn.addr !727
  %47 = inttoptr i64 %46 to i64*, !insn.addr !727
  store i64 6998719601038222707, i64* %47, align 8, !insn.addr !727
  %48 = add i64 %0, 40, !insn.addr !728
  %49 = inttoptr i64 %48 to i32*, !insn.addr !728
  store i32 1701995620, i32* %49, align 4, !insn.addr !728
  %50 = add i64 %0, 44, !insn.addr !729
  %51 = inttoptr i64 %50 to i16*, !insn.addr !729
  store i16 29555, i16* %51, align 2, !insn.addr !729
  %52 = add i64 %0, 46, !insn.addr !730
  %53 = inttoptr i64 %52 to i8*, !insn.addr !730
  store i8 0, i8* %53, align 1, !insn.addr !730
  %54 = call i32 @close(i32 %5), !insn.addr !731
  store i64 4294967295, i64* %rax.0.reg2mem, !insn.addr !732
  br label %dec_label_pc_28b6, !insn.addr !732

dec_label_pc_2998:                                ; preds = %dec_label_pc_2847
  %55 = bitcast i64* %arg1 to i8*, !insn.addr !733
  %56 = call i32 (i8*, i32, i32, i8*, ...) @__sprintf_chk(i8* %55, i32 1, i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_var_3540, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_3584, i64 0, i64 0)), !insn.addr !733
  %57 = call i32 @close(i32 %5), !insn.addr !734
  store i64 4294967295, i64* %rax.0.reg2mem, !insn.addr !735
  br label %dec_label_pc_28b6, !insn.addr !735

dec_label_pc_29d0:                                ; preds = %dec_label_pc_28b6
  call void @__stack_chk_fail(), !insn.addr !736
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !736

; uselistorder directives
  uselistorder i64 %9, { 1, 0 }
  uselistorder %hostent* %7, { 1, 0 }
  uselistorder i32 %5, { 1, 0, 2, 3, 4 }
  uselistorder i64 %0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0 }
  uselistorder i64* %rax.0.reg2mem, { 2, 3, 4, 0, 1 }
  uselistorder i32 (i8*, i32, i32, i8*, ...)* @__sprintf_chk, { 4, 0, 2, 3, 1, 5 }
  uselistorder i32 -1, { 2, 3, 4, 5, 6, 7, 0, 1 }
  uselistorder i64 46, { 1, 0 }
  uselistorder i16 29555, { 1, 0 }
  uselistorder i64 44, { 1, 0 }
  uselistorder i32 1701995620, { 1, 0 }
  uselistorder i16 116, { 1, 0 }
  uselistorder i64 36, { 2, 0, 1 }
  uselistorder i32 1701536623, { 1, 0 }
  uselistorder i64 32, { 12, 13, 7, 3, 4, 5, 6, 8, 9, 10, 11, 1, 0, 2, 14 }
  uselistorder i64 16, { 11, 12, 6, 2, 3, 4, 5, 7, 8, 9, 10, 1, 0, 14, 13 }
  uselistorder i64 8, { 12, 13, 7, 3, 4, 5, 6, 8, 9, 10, 11, 2, 1, 15, 14, 16, 17, 18, 19, 20, 21, 22, 0, 23, 24, 25 }
  uselistorder void (i32)* (i32, void (i32)*)* @signal, { 3, 2, 1, 4, 0, 5 }
  uselistorder i64* %arg1, { 2, 1, 0, 3, 4 }
}

define i64 @driver_ping() local_unnamed_addr {
dec_label_pc_29d5:
  %rax.0.reg2mem = alloca i64, !insn.addr !737
  %stack_var_-52 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !738
  %1 = call i32 @socket(i32 2, i32 1, i32 0), !insn.addr !739
  %2 = icmp slt i32 %1, 0, !insn.addr !740
  store i64 4294967295, i64* %rax.0.reg2mem, !insn.addr !741
  br i1 %2, label %dec_label_pc_2a78, label %dec_label_pc_2a07, !insn.addr !741

dec_label_pc_2a07:                                ; preds = %dec_label_pc_29d5
  %3 = call %hostent* @gethostbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_3584, i64 0, i64 0)), !insn.addr !742
  %4 = icmp eq %hostent* %3, null, !insn.addr !743
  br i1 %4, label %dec_label_pc_2a8f, label %dec_label_pc_2a1a, !insn.addr !744

dec_label_pc_2a1a:                                ; preds = %dec_label_pc_2a07
  %5 = ptrtoint %hostent* %3 to i64, !insn.addr !742
  store i64 2, i64* %stack_var_-56, align 8, !insn.addr !745
  %6 = add i64 %5, 20, !insn.addr !746
  %7 = inttoptr i64 %6 to i32*, !insn.addr !746
  %8 = load i32, i32* %7, align 4, !insn.addr !746
  %9 = add i64 %5, 24, !insn.addr !747
  %10 = inttoptr i64 %9 to i64*, !insn.addr !747
  %11 = load i64, i64* %10, align 8, !insn.addr !747
  %12 = inttoptr i64 %11 to i64*, !insn.addr !748
  %13 = load i64, i64* %12, align 8, !insn.addr !748
  %14 = inttoptr i64 %13 to i64*, !insn.addr !749
  %15 = call i64* @__memmove_chk(i64* nonnull %stack_var_-52, i64* %14, i32 %8, i32 12), !insn.addr !749
  %16 = bitcast i64* %stack_var_-56 to %sockaddr*, !insn.addr !750
  %17 = call i32 @connect(i32 %1, %sockaddr* nonnull %16, i32 16), !insn.addr !750
  %18 = icmp slt i32 %17, 0, !insn.addr !751
  %19 = call i32 @close(i32 %1)
  %. = select i1 %18, i64 4294967295, i64 0
  store i64 %., i64* %rax.0.reg2mem, !insn.addr !752
  br label %dec_label_pc_2a78, !insn.addr !752

dec_label_pc_2a78:                                ; preds = %dec_label_pc_29d5, %dec_label_pc_2a1a, %dec_label_pc_2a8f
  %20 = call i64 @__readfsqword(i64 40), !insn.addr !753
  %21 = icmp eq i64 %0, %20, !insn.addr !753
  %22 = icmp eq i1 %21, false, !insn.addr !754
  br i1 %22, label %dec_label_pc_2ab2, label %dec_label_pc_2a88, !insn.addr !754

dec_label_pc_2a88:                                ; preds = %dec_label_pc_2a78
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !755

dec_label_pc_2a8f:                                ; preds = %dec_label_pc_2a07
  %23 = call i32 @close(i32 %1), !insn.addr !756
  store i64 4294967295, i64* %rax.0.reg2mem, !insn.addr !757
  br label %dec_label_pc_2a78, !insn.addr !757

dec_label_pc_2ab2:                                ; preds = %dec_label_pc_2a78
  call void @__stack_chk_fail(), !insn.addr !758
  ret i64 ptrtoint (i32* @0 to i64), !insn.addr !758

; uselistorder directives
  uselistorder i64 %5, { 1, 0 }
  uselistorder %hostent* %3, { 1, 0 }
  uselistorder i64* %rax.0.reg2mem, { 3, 0, 2, 1 }
  uselistorder i64 ptrtoint (i32* @0 to i64), { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 0 }
  uselistorder void ()* @__stack_chk_fail, { 7, 3, 2, 4, 5, 6, 0, 1, 8, 9 }
  uselistorder i32 (i32)* @close, { 3, 4, 2, 1, 0, 8, 14, 13, 12, 11, 10, 9, 7, 6, 5, 15 }
  uselistorder i32 (i32, %sockaddr*, i32)* @connect, { 1, 0, 2, 3 }
  uselistorder i64* (i64*, i64*, i32, i32)* @__memmove_chk, { 1, 0, 2, 3 }
  uselistorder i64 24, { 10, 11, 12, 13, 4, 0, 1, 2, 3, 5, 6, 7, 8, 9 }
  uselistorder i64 20, { 1, 2, 0, 3 }
  uselistorder %hostent* (i8*)* @gethostbyname, { 1, 0, 2, 3 }
  uselistorder i32 (i32, i32, i32)* @socket, { 1, 0, 2, 3 }
  uselistorder i64 40, { 0, 1, 26, 2, 3, 23, 19, 4, 20, 21, 22, 24, 25, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 }
  uselistorder label %dec_label_pc_2a78, { 2, 1, 0 }
}

define i64 @driver_post(i8* %arg1, i8* %arg2, i64* %arg3, i64 %arg4, i64* %arg5) local_unnamed_addr {
dec_label_pc_2ab7:
  %rax.0.reg2mem = alloca i64, !insn.addr !759
  %0 = ptrtoint i64* %arg5 to i64
  %1 = trunc i64 %arg4 to i32, !insn.addr !760
  %2 = icmp eq i32 %1, 0, !insn.addr !760
  %3 = icmp eq i1 %2, false, !insn.addr !761
  br i1 %3, label %dec_label_pc_2ad6, label %dec_label_pc_2abf, !insn.addr !761

dec_label_pc_2abf:                                ; preds = %dec_label_pc_2ab7
  %4 = ptrtoint i8* %arg1 to i64
  %5 = trunc i64 %4 to i8
  %6 = icmp ne i8* %arg1, null, !insn.addr !762
  %7 = icmp eq i8 %5, 0, !insn.addr !763
  %8 = icmp eq i1 %7, false, !insn.addr !764
  %or.cond = icmp eq i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_2afc, label %dec_label_pc_2ac9, !insn.addr !765

dec_label_pc_2ac9:                                ; preds = %dec_label_pc_2abf
  %9 = bitcast i64* %arg5 to i16*, !insn.addr !766
  store i16 19279, i16* %9, align 2, !insn.addr !766
  %10 = add i64 %0, 2, !insn.addr !767
  %11 = inttoptr i64 %10 to i8*, !insn.addr !767
  store i8 0, i8* %11, align 1, !insn.addr !767
  %12 = and i64 %arg4, 4294967295, !insn.addr !768
  store i64 %12, i64* %rax.0.reg2mem, !insn.addr !768
  br label %dec_label_pc_2ad4, !insn.addr !768

dec_label_pc_2ad4:                                ; preds = %dec_label_pc_2afc, %dec_label_pc_2ad6, %dec_label_pc_2ac9
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !769

dec_label_pc_2ad6:                                ; preds = %dec_label_pc_2ab7
  %13 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_var_3594, i64 0, i64 0), i64* %arg3), !insn.addr !770
  %14 = bitcast i64* %arg5 to i16*, !insn.addr !771
  store i16 19279, i16* %14, align 2, !insn.addr !771
  %15 = add i64 %0, 2, !insn.addr !772
  %16 = inttoptr i64 %15 to i8*, !insn.addr !772
  store i8 0, i8* %16, align 1, !insn.addr !772
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !773
  br label %dec_label_pc_2ad4, !insn.addr !773

dec_label_pc_2afc:                                ; preds = %dec_label_pc_2abf
  %17 = ptrtoint i64* %arg3 to i64
  %18 = ptrtoint i8* %arg2 to i64
  %19 = call i64 @submitr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_3584, i64 0, i64 0), i64* nonnull @global_var_3b6e, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_var_35b8, i64 0, i64 0), i64 %4, i64 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_35ab, i64 0, i64 0), i64 %17, i64 %0), !insn.addr !774
  store i64 %19, i64* %rax.0.reg2mem, !insn.addr !775
  br label %dec_label_pc_2ad4, !insn.addr !775

; uselistorder directives
  uselistorder i64 %4, { 1, 0 }
  uselistorder i64 %0, { 0, 2, 1 }
  uselistorder i64* %rax.0.reg2mem, { 1, 3, 0, 2 }
  uselistorder i32 (i32, i8*, ...)* @__printf_chk, { 3, 2, 1, 5, 4, 0, 6, 7 }
  uselistorder i64 4294967295, { 18, 1, 17, 0, 2, 3, 4, 6, 8, 19, 9, 10, 11, 7, 5, 12, 13, 14, 20, 21, 22, 23, 16, 15, 24, 26, 25, 27 }
  uselistorder i64 2, { 10, 11, 5, 12, 6, 9, 0, 7, 8, 1, 2, 3, 4 }
  uselistorder i8 0, { 16, 17, 0, 18, 19, 1, 13, 12, 14, 15, 2, 3, 4, 5, 6, 11, 22, 7, 8, 20, 21, 23, 24, 25, 26, 10, 9 }
  uselistorder i32 0, { 27, 28, 29, 6, 30, 31, 7, 8, 17, 18, 23, 9, 10, 24, 25, 26, 11, 21, 22, 19, 20, 4, 5, 33, 12, 13, 14, 36, 37, 34, 35, 38, 32, 39, 0, 3, 1, 40, 41, 2, 15, 16 }
  uselistorder i64* %arg3, { 1, 0 }
}

define i64 @__libc_csu_init(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_2b30:
  %rbx.0.reg2mem = alloca i64, !insn.addr !776
  %0 = call i64 @_init(), !insn.addr !777
  store i64 0, i64* %rbx.0.reg2mem, !insn.addr !778
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_4d00 to i64), i64 ptrtoint (i64* @global_var_4cf8 to i64)), i64 3), i64 0), label %dec_label_pc_2b86, label %dec_label_pc_2b70, !insn.addr !778

dec_label_pc_2b70:                                ; preds = %dec_label_pc_2b30, %dec_label_pc_2b70
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %1 = add i64 %rbx.0.reload, 1, !insn.addr !779
  %2 = icmp eq i64 %1, ashr (i64 sub (i64 ptrtoint (i64* @global_var_4d00 to i64), i64 ptrtoint (i64* @global_var_4cf8 to i64)), i64 3), !insn.addr !780
  %3 = icmp eq i1 %2, false, !insn.addr !781
  store i64 %1, i64* %rbx.0.reg2mem, !insn.addr !781
  br i1 %3, label %dec_label_pc_2b70, label %dec_label_pc_2b86, !insn.addr !781

dec_label_pc_2b86:                                ; preds = %dec_label_pc_2b70, %dec_label_pc_2b30
  ret i64 %0, !insn.addr !782

; uselistorder directives
  uselistorder i64* %rbx.0.reg2mem, { 2, 0, 1 }
  uselistorder i1 false, { 9, 2, 23, 24, 25, 10, 20, 21, 15, 0, 16, 6, 1, 17, 18, 19, 7, 5, 22, 12, 14, 8, 13, 3, 4, 28, 29, 33, 34, 30, 32, 31, 35, 36, 37, 27, 26, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 11 }
  uselistorder i64 1, { 20, 12, 13, 14, 23, 27, 24, 25, 26, 28, 7, 29, 11, 15, 21, 22, 1, 0, 19, 31, 32, 8, 30, 2, 3, 33, 34, 4, 5, 35, 9, 6, 36, 16, 18, 17, 37, 10 }
  uselistorder i64 3, { 2, 0, 1, 3 }
  uselistorder i64 0, { 29, 0, 32, 33, 34, 35, 1, 30, 31, 26, 36, 37, 2, 38, 39, 141, 3, 142, 45, 46, 40, 135, 41, 42, 136, 137, 138, 43, 44, 139, 4, 140, 47, 48, 143, 5, 144, 125, 6, 145, 21, 7, 146, 8, 147, 9, 148, 10, 126, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 150, 67, 68, 151, 63, 64, 65, 66, 11, 152, 153, 69, 70, 71, 72, 127, 73, 74, 75, 76, 81, 82, 154, 128, 83, 84, 85, 86, 87, 88, 77, 78, 79, 80, 12, 155, 89, 90, 13, 91, 92, 156, 14, 15, 22, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 16, 149, 157, 158, 17, 18, 159, 129, 19, 103, 104, 160, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 23, 24, 133, 25, 20, 134, 27, 28, 130, 131, 132 }
  uselistorder label %dec_label_pc_2b70, { 1, 0 }
}

define i64 @__libc_csu_fini() local_unnamed_addr {
dec_label_pc_2ba0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !783
}

define i64 @_fini() local_unnamed_addr {
dec_label_pc_2ba8:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !784

; uselistorder directives
  uselistorder i32 1, { 11, 10, 16, 95, 17, 96, 120, 119, 18, 97, 98, 122, 121, 19, 9, 100, 99, 101, 102, 127, 116, 126, 125, 124, 115, 123, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 15, 114, 61, 60, 59, 58, 57, 56, 103, 104, 130, 129, 128, 64, 63, 62, 14, 105, 106, 132, 131, 67, 66, 65, 13, 69, 68, 8, 107, 133, 72, 71, 70, 7, 73, 108, 109, 110, 74, 118, 135, 134, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 6, 0, 88, 87, 137, 136, 5, 93, 142, 89, 139, 138, 4, 94, 117, 140, 91, 90, 12, 3, 2, 112, 113, 111, 1, 141, 92 }
}

declare i8* @getenv(i8*) local_unnamed_addr

declare i32* @__errno_location() local_unnamed_addr

declare i8* @strcpy(i8*, i8*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @write(i32, i64*, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @alarm(i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @read(i32, i64*, i32) local_unnamed_addr

declare i8* @fgets(i8*, i32, %_IO_FILE*) local_unnamed_addr

declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr

declare %hostent* @gethostbyname(i8*) local_unnamed_addr

declare i64* @__memmove_chk(i64*, i64*, i32, i32) local_unnamed_addr

declare i32 @strtol(i8*, i8**, i32) local_unnamed_addr

declare i32 @fflush(%_IO_FILE*) local_unnamed_addr

declare i32 @sscanf(i8*, i8*, ...) local_unnamed_addr

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr

declare %_IO_FILE* @fopen(i8*, i8*) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @connect(i32, %sockaddr*, i32) local_unnamed_addr

declare i32 @__fprintf_chk(%_IO_FILE*, i32, i8*, ...) local_unnamed_addr

declare i32 @sleep(i32) local_unnamed_addr

declare i16** @__ctype_b_loc() local_unnamed_addr

declare i32 @__sprintf_chk(i8*, i32, i32, i8*, ...) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare void @__asm_rep_stosq_memset(i8*, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4104}
!2 = !{i64 4111}
!3 = !{i64 4114}
!4 = !{i64 4116}
!5 = !{i64 4122}
!6 = !{i64 4144}
!7 = !{i64 4160}
!8 = !{i64 4176}
!9 = !{i64 4192}
!10 = !{i64 4208}
!11 = !{i64 4224}
!12 = !{i64 4240}
!13 = !{i64 4256}
!14 = !{i64 4272}
!15 = !{i64 4288}
!16 = !{i64 4304}
!17 = !{i64 4320}
!18 = !{i64 4336}
!19 = !{i64 4352}
!20 = !{i64 4368}
!21 = !{i64 4384}
!22 = !{i64 4400}
!23 = !{i64 4416}
!24 = !{i64 4432}
!25 = !{i64 4448}
!26 = !{i64 4464}
!27 = !{i64 4480}
!28 = !{i64 4496}
!29 = !{i64 4512}
!30 = !{i64 4528}
!31 = !{i64 4544}
!32 = !{i64 4600}
!33 = !{i64 4606}
!34 = !{i64 4657}
!35 = !{i64 4737}
!36 = !{i64 4752}
!37 = !{i64 4759}
!38 = !{i64 4761}
!39 = !{i64 4773}
!40 = !{i64 4775}
!41 = !{i64 4782}
!42 = !{i64 4787}
!43 = !{i64 4792}
!44 = !{i64 4800}
!45 = !{i64 4808}
!46 = !{i64 4821}
!47 = !{i64 4827}
!48 = !{i64 4830}
!49 = !{i64 4839}
!50 = !{i64 4842}
!51 = !{i64 4848}
!52 = !{i64 4859}
!53 = !{i64 4864}
!54 = !{i64 4871}
!55 = !{i64 4874}
!56 = !{i64 4880}
!57 = !{i64 4892}
!58 = !{i64 4904}
!59 = !{i64 4909}
!60 = !{i64 4917}
!61 = !{i64 4922}
!62 = !{i64 4934}
!63 = !{i64 4939}
!64 = !{i64 4947}
!65 = !{i64 4952}
!66 = !{i64 4964}
!67 = !{i64 4969}
!68 = !{i64 4977}
!69 = !{i64 4982}
!70 = !{i64 4994}
!71 = !{i64 4999}
!72 = !{i64 5007}
!73 = !{i64 5012}
!74 = !{i64 5024}
!75 = !{i64 5029}
!76 = !{i64 5037}
!77 = !{i64 5042}
!78 = !{i64 5054}
!79 = !{i64 5059}
!80 = !{i64 5067}
!81 = !{i64 5072}
!82 = !{i64 5083}
!83 = !{i64 5084}
!84 = !{i64 5091}
!85 = !{i64 5098}
!86 = !{i64 5103}
!87 = !{i64 5122}
!88 = !{i64 5132}
!89 = !{i64 5157}
!90 = !{i64 5167}
!91 = !{i64 5183}
!92 = !{i64 5188}
!93 = !{i64 5190}
!94 = !{i64 5196}
!95 = !{i64 5197}
!96 = !{i64 5204}
!97 = !{i64 5210}
!98 = !{i64 5229}
!99 = !{i64 5234}
!100 = !{i64 5240}
!101 = !{i64 5238}
!102 = !{i64 5247}
!103 = !{i64 5252}
!104 = !{i64 5255}
!105 = !{i64 5259}
!106 = !{i64 5265}
!107 = !{i64 5268}
!108 = !{i64 5273}
!109 = !{i64 5270}
!110 = !{i64 5275}
!111 = !{i64 5278}
!112 = !{i64 5280}
!113 = !{i64 5292}
!114 = !{i64 5301}
!115 = !{i64 5309}
!116 = !{i64 5310}
!117 = !{i64 5319}
!118 = !{i64 5350}
!119 = !{i64 5358}
!120 = !{i64 5360}
!121 = !{i64 5364}
!122 = !{i64 5370}
!123 = !{i64 5380}
!124 = !{i64 5384}
!125 = !{i64 5387}
!126 = !{i64 5389}
!127 = !{i64 5521}
!128 = !{i64 5538}
!129 = !{i64 5544}
!130 = !{i64 5546}
!131 = !{i64 5548}
!132 = !{i64 5551}
!133 = !{i64 5553}
!134 = !{i64 5555}
!135 = !{i64 5559}
!136 = !{i64 5568}
!137 = !{i64 5574}
!138 = !{i64 5575}
!139 = !{i64 5578}
!140 = !{i64 5583}
!141 = !{i64 5585}
!142 = !{i64 5587}
!143 = !{i64 5590}
!144 = !{i64 5595}
!145 = !{i64 5599}
!146 = !{i64 5605}
!147 = !{i64 5636}
!148 = !{i64 5641}
!149 = !{i64 5644}
!150 = !{i64 5646}
!151 = !{i64 5650}
!152 = !{i64 5652}
!153 = !{i64 5667}
!154 = !{i64 5670}
!155 = !{i64 5675}
!156 = !{i64 5678}
!157 = !{i64 5680}
!158 = !{i64 5685}
!159 = !{i64 5687}
!160 = !{i64 5697}
!161 = !{i64 5706}
!162 = !{i64 5712}
!163 = !{i64 5713}
!164 = !{i64 5718}
!165 = !{i64 5722}
!166 = !{i64 5727}
!167 = !{i64 5730}
!168 = !{i64 5751}
!169 = !{i64 5757}
!170 = !{i64 5760}
!171 = !{i64 5764}
!172 = !{i64 5767}
!173 = !{i64 5769}
!174 = !{i64 5772}
!175 = !{i64 5774}
!176 = !{i64 5780}
!177 = !{i64 5781}
!178 = !{i64 5788}
!179 = !{i64 5796}
!180 = !{i64 5800}
!181 = !{i64 5822}
!182 = !{i64 5878}
!183 = !{i64 5882}
!184 = !{i64 5888}
!185 = !{i64 5838}
!186 = !{i64 5845}
!187 = !{i64 5851}
!188 = !{i64 5856}
!189 = !{i64 5859}
!190 = !{i64 5862}
!191 = !{i64 5864}
!192 = !{i64 5871}
!193 = !{i64 5890}
!194 = !{i64 5894}
!195 = !{i64 5898}
!196 = !{i64 5905}
!197 = !{i64 5910}
!198 = !{i64 5917}
!199 = !{i64 5921}
!200 = !{i64 5925}
!201 = !{i64 5929}
!202 = !{i64 5932}
!203 = !{i64 5952}
!204 = !{i64 5941}
!205 = !{i64 5945}
!206 = !{i64 5948}
!207 = !{i64 5950}
!208 = !{i64 5957}
!209 = !{i64 5961}
!210 = !{i64 5965}
!211 = !{i64 5967}
!212 = !{i64 5985}
!213 = !{i64 5989}
!214 = !{i64 5999}
!215 = !{i64 6008}
!216 = !{i64 6017}
!217 = !{i64 6026}
!218 = !{i64 6035}
!219 = !{i64 6039}
!220 = !{i64 6052}
!221 = !{i64 6058}
!222 = !{i64 6061}
!223 = !{i64 6069}
!224 = !{i64 6063}
!225 = !{i64 6067}
!226 = !{i64 6071}
!227 = !{i64 6073}
!228 = !{i64 6085}
!229 = !{i64 6094}
!230 = !{i64 6108}
!231 = !{i64 6109}
!232 = !{i64 6114}
!233 = !{i64 6117}
!234 = !{i64 6123}
!235 = !{i64 6127}
!236 = !{i64 6134}
!237 = !{i64 6136}
!238 = !{i64 6142}
!239 = !{i64 6143}
!240 = !{i64 6147}
!241 = !{i64 6152}
!242 = !{i64 6154}
!243 = !{i64 6156}
!244 = !{i64 6160}
!245 = !{i64 6165}
!246 = !{i64 6169}
!247 = !{i64 6178}
!248 = !{i64 6196}
!249 = !{i64 6204}
!250 = !{i64 6212}
!251 = !{i64 6223}
!252 = !{i64 6228}
!253 = !{i64 6230}
!254 = !{i64 6239}
!255 = !{i64 6244}
!256 = !{i64 6250}
!257 = !{i64 6251}
!258 = !{i64 6258}
!259 = !{i64 6276}
!260 = !{i64 6286}
!261 = !{i64 6308}
!262 = !{i64 6313}
!263 = !{i64 6320}
!264 = !{i64 6330}
!265 = !{i64 6342}
!266 = !{i64 6352}
!267 = !{i64 6381}
!268 = !{i64 6391}
!269 = !{i64 6396}
!270 = !{i64 6399}
!271 = !{i64 6404}
!272 = !{i64 6412}
!273 = !{i64 6415}
!274 = !{i64 6410}
!275 = !{i64 6417}
!276 = !{i64 6424}
!277 = !{i64 6425}
!278 = !{i64 6435}
!279 = !{i64 6440}
!280 = !{i64 6446}
!281 = !{i64 6456}
!282 = !{i64 6459}
!283 = !{i64 6467}
!284 = !{i64 6471}
!285 = !{i64 6473}
!286 = !{i64 6475}
!287 = !{i64 6478}
!288 = !{i64 6480}
!289 = !{i64 6488}
!290 = !{i64 6491}
!291 = !{i64 6493}
!292 = !{i64 6484}
!293 = !{i64 6495}
!294 = !{i64 6498}
!295 = !{i64 6535}
!296 = !{i64 6566}
!297 = !{i64 6574}
!298 = !{i64 6579}
!299 = !{i64 6581}
!300 = !{i64 6591}
!301 = !{i64 6600}
!302 = !{i64 6609}
!303 = !{i64 6630}
!304 = !{i64 6640}
!305 = !{i64 6645}
!306 = !{i64 6650}
!307 = !{i64 6652}
!308 = !{i64 6658}
!309 = !{i64 6661}
!310 = !{i64 6665}
!311 = !{i64 6667}
!312 = !{i64 6669}
!313 = !{i64 6674}
!314 = !{i64 6682}
!315 = !{i64 6685}
!316 = !{i64 6690}
!317 = !{i64 6710}
!318 = !{i64 6717}
!319 = !{i64 6724}
!320 = !{i64 6735}
!321 = !{i64 6739}
!322 = !{i64 6742}
!323 = !{i64 6754}
!324 = !{i64 6762}
!325 = !{i64 6765}
!326 = !{i64 6770}
!327 = !{i64 6775}
!328 = !{i64 6777}
!329 = !{i64 6788}
!330 = !{i64 6798}
!331 = !{i64 6803}
!332 = !{i64 6805}
!333 = !{i64 6811}
!334 = !{i64 6819}
!335 = !{i64 6829}
!336 = !{i64 6834}
!337 = !{i64 6845}
!338 = !{i64 6864}
!339 = !{i64 6908}
!340 = !{i64 6916}
!341 = !{i64 6926}
!342 = !{i64 6932}
!343 = !{i64 6958}
!344 = !{i64 6990}
!345 = !{i64 7025}
!346 = !{i64 7034}
!347 = !{i64 7036}
!348 = !{i64 7046}
!349 = !{i64 7055}
!350 = !{i64 7065}
!351 = !{i64 7083}
!352 = !{i64 7093}
!353 = !{i64 7106}
!354 = !{i64 7116}
!355 = !{i64 7121}
!356 = !{i64 7137}
!357 = !{i64 7149}
!358 = !{i64 7159}
!359 = !{i64 7171}
!360 = !{i64 7181}
!361 = !{i64 7193}
!362 = !{i64 7197}
!363 = !{i64 7202}
!364 = !{i64 7207}
!365 = !{i64 7211}
!366 = !{i64 7227}
!367 = !{i64 7239}
!368 = !{i64 7245}
!369 = !{i64 7246}
!370 = !{i64 7251}
!371 = !{i64 7257}
!372 = !{i64 7262}
!373 = !{i64 7265}
!374 = !{i64 7271}
!375 = !{i64 7277}
!376 = !{i64 7284}
!377 = !{i64 7295}
!378 = !{i64 7311}
!379 = !{i64 7322}
!380 = !{i64 7329}
!381 = !{i64 7342}
!382 = !{i64 7345}
!383 = !{i64 7351}
!384 = !{i64 7355}
!385 = !{i64 7359}
!386 = !{i64 7362}
!387 = !{i64 7371}
!388 = !{i64 7376}
!389 = !{i64 7385}
!390 = !{i64 7391}
!391 = !{i64 7397}
!392 = !{i64 7401}
!393 = !{i64 7405}
!394 = !{i64 7406}
!395 = !{i64 7413}
!396 = !{i64 7420}
!397 = !{i64 7429}
!398 = !{i64 7434}
!399 = !{i64 7437}
!400 = !{i64 7444}
!401 = !{i64 7456}
!402 = !{i64 7466}
!403 = !{i64 7471}
!404 = !{i64 7478}
!405 = !{i64 7490}
!406 = !{i64 7495}
!407 = !{i64 7498}
!408 = !{i64 7511}
!409 = !{i64 7521}
!410 = !{i64 7533}
!411 = !{i64 7538}
!412 = !{i64 7547}
!413 = !{i64 7555}
!414 = !{i64 7586}
!415 = !{i64 7590}
!416 = !{i64 7595}
!417 = !{i64 7604}
!418 = !{i64 7625}
!419 = !{i64 7630}
!420 = !{i64 7637}
!421 = !{i64 7644}
!422 = !{i64 7653}
!423 = !{i64 7663}
!424 = !{i64 7698}
!425 = !{i64 7703}
!426 = !{i64 7706}
!427 = !{i64 7715}
!428 = !{i64 7727}
!429 = !{i64 7732}
!430 = !{i64 7734}
!431 = !{i64 7746}
!432 = !{i64 7751}
!433 = !{i64 7753}
!434 = !{i64 7762}
!435 = !{i64 7774}
!436 = !{i64 7784}
!437 = !{i64 7789}
!438 = !{i64 7791}
!439 = !{i64 7817}
!440 = !{i64 7829}
!441 = !{i64 7839}
!442 = !{i64 7844}
!443 = !{i64 7875}
!444 = !{i64 7867}
!445 = !{i64 7889}
!446 = !{i64 7892}
!447 = !{i64 7894}
!448 = !{i64 7879}
!449 = !{i64 7884}
!450 = !{i64 7887}
!451 = !{i64 7904}
!452 = !{i64 7906}
!453 = !{i64 7911}
!454 = !{i64 7914}
!455 = !{i64 7916}
!456 = !{i64 7918}
!457 = !{i64 7920}
!458 = !{i64 7922}
!459 = !{i64 7926}
!460 = !{i64 7928}
!461 = !{i64 7932}
!462 = !{i64 7935}
!463 = !{i64 7939}
!464 = !{i64 7943}
!465 = !{i64 7946}
!466 = !{i64 7949}
!467 = !{i64 7953}
!468 = !{i64 7958}
!469 = !{i64 7961}
!470 = !{i64 7963}
!471 = !{i64 7967}
!472 = !{i64 7970}
!473 = !{i64 7973}
!474 = !{i64 7975}
!475 = !{i64 7980}
!476 = !{i64 7991}
!477 = !{i64 8015}
!478 = !{i64 8019}
!479 = !{i64 8032}
!480 = !{i64 8042}
!481 = !{i64 8069}
!482 = !{i64 8090}
!483 = !{i64 8132}
!484 = !{i64 8137}
!485 = !{i64 8139}
!486 = !{i64 8151}
!487 = !{i64 8156}
!488 = !{i64 8159}
!489 = !{i64 8194}
!490 = !{i64 8201}
!491 = !{i64 8205}
!492 = !{i64 8219}
!493 = !{i64 8222}
!494 = !{i64 8247}
!495 = !{i64 8252}
!496 = !{i64 8254}
!497 = !{i64 8278}
!498 = !{i64 8289}
!499 = !{i64 8294}
!500 = !{i64 8307}
!501 = !{i64 8323}
!502 = !{i64 8283}
!503 = !{i64 8331}
!504 = !{i64 8328}
!505 = !{i64 8336}
!506 = !{i64 8347}
!507 = !{i64 8374}
!508 = !{i64 8387}
!509 = !{i64 8398}
!510 = !{i64 8402}
!511 = !{i64 8404}
!512 = !{i64 8410}
!513 = !{i64 8413}
!514 = !{i64 8418}
!515 = !{i64 8449}
!516 = !{i64 8474}
!517 = !{i64 8477}
!518 = !{i64 8501}
!519 = !{i64 8505}
!520 = !{i64 8509}
!521 = !{i64 8517}
!522 = !{i64 8529}
!523 = !{i64 8554}
!524 = !{i64 8557}
!525 = !{i64 8581}
!526 = !{i64 8585}
!527 = !{i64 8599}
!528 = !{i64 8603}
!529 = !{i64 8611}
!530 = !{i64 8618}
!531 = !{i64 8626}
!532 = !{i64 8636}
!533 = !{i64 8661}
!534 = !{i64 8664}
!535 = !{i64 8688}
!536 = !{i64 8692}
!537 = !{i64 8696}
!538 = !{i64 8704}
!539 = !{i64 8711}
!540 = !{i64 8719}
!541 = !{i64 8729}
!542 = !{i64 8754}
!543 = !{i64 8757}
!544 = !{i64 8781}
!545 = !{i64 8785}
!546 = !{i64 8809}
!547 = !{i64 8813}
!548 = !{i64 8827}
!549 = !{i64 8834}
!550 = !{i64 8844}
!551 = !{i64 8849}
!552 = !{i64 8853}
!553 = !{i64 8855}
!554 = !{i64 8859}
!555 = !{i64 8863}
!556 = !{i64 8867}
!557 = !{i64 8870}
!558 = !{i64 8876}
!559 = !{i64 8880}
!560 = !{i64 8886}
!561 = !{i64 8891}
!562 = !{i64 8894}
!563 = !{i64 8899}
!564 = !{i64 8901}
!565 = !{i64 8905}
!566 = !{i64 8907}
!567 = !{i64 8915}
!568 = !{i64 8919}
!569 = !{i64 8913}
!570 = !{i64 8925}
!571 = !{i64 8956}
!572 = !{i64 8961}
!573 = !{i64 8969}
!574 = !{i64 8980}
!575 = !{i64 8991}
!576 = !{i64 8994}
!577 = !{i64 8998}
!578 = !{i64 9003}
!579 = !{i64 9007}
!580 = !{i64 9011}
!581 = !{i64 9016}
!582 = !{i64 9019}
!583 = !{i64 9022}
!584 = !{i64 9033}
!585 = !{i64 9038}
!586 = !{i64 9041}
!587 = !{i64 9043}
!588 = !{i64 9048}
!589 = !{i64 9051}
!590 = !{i64 9062}
!591 = !{i64 9065}
!592 = !{i64 9071}
!593 = !{i64 9076}
!594 = !{i64 9089}
!595 = !{i64 9093}
!596 = !{i64 9098}
!597 = !{i64 9111}
!598 = !{i64 9119}
!599 = !{i64 9125}
!600 = !{i64 9130}
!601 = !{i64 9146}
!602 = !{i64 9166}
!603 = !{i64 9171}
!604 = !{i64 9176}
!605 = !{i64 9183}
!606 = !{i64 9220}
!607 = !{i64 9222}
!608 = !{i64 9227}
!609 = !{i64 9229}
!610 = !{i64 9251}
!611 = !{i64 9254}
!612 = !{i64 9276}
!613 = !{i64 9279}
!614 = !{i64 9303}
!615 = !{i64 9307}
!616 = !{i64 9331}
!617 = !{i64 9335}
!618 = !{i64 9339}
!619 = !{i64 9347}
!620 = !{i64 9357}
!621 = !{i64 9382}
!622 = !{i64 9385}
!623 = !{i64 9409}
!624 = !{i64 9413}
!625 = !{i64 9427}
!626 = !{i64 9431}
!627 = !{i64 9442}
!628 = !{i64 9452}
!629 = !{i64 9477}
!630 = !{i64 9480}
!631 = !{i64 9504}
!632 = !{i64 9508}
!633 = !{i64 9532}
!634 = !{i64 9536}
!635 = !{i64 9540}
!636 = !{i64 9548}
!637 = !{i64 9558}
!638 = !{i64 9568}
!639 = !{i64 9608}
!640 = !{i64 9616}
!641 = !{i64 9626}
!642 = !{i64 9654}
!643 = !{i64 9667}
!644 = !{i64 9675}
!645 = !{i64 9695}
!646 = !{i64 9697}
!647 = !{i64 9702}
!648 = !{i64 9704}
!649 = !{i64 9710}
!650 = !{i64 9712}
!651 = !{i64 9720}
!652 = !{i64 9729}
!653 = !{i64 9752}
!654 = !{i64 9773}
!655 = !{i64 9776}
!656 = !{i64 9800}
!657 = !{i64 9804}
!658 = !{i64 9828}
!659 = !{i64 9832}
!660 = !{i64 9846}
!661 = !{i64 9853}
!662 = !{i64 9863}
!663 = !{i64 9888}
!664 = !{i64 9891}
!665 = !{i64 9915}
!666 = !{i64 9919}
!667 = !{i64 9943}
!668 = !{i64 9947}
!669 = !{i64 9971}
!670 = !{i64 9975}
!671 = !{i64 9979}
!672 = !{i64 9986}
!673 = !{i64 9994}
!674 = !{i64 10004}
!675 = !{i64 10073}
!676 = !{i64 10090}
!677 = !{i64 10093}
!678 = !{i64 10101}
!679 = !{i64 10126}
!680 = !{i64 10129}
!681 = !{i64 10140}
!682 = !{i64 10145}
!683 = !{i64 10147}
!684 = !{i64 10164}
!685 = !{i64 10169}
!686 = !{i64 10176}
!687 = !{i64 10179}
!688 = !{i64 10185}
!689 = !{i64 10186}
!690 = !{i64 10188}
!691 = !{i64 10199}
!692 = !{i64 10225}
!693 = !{i64 10240}
!694 = !{i64 10255}
!695 = !{i64 10275}
!696 = !{i64 10280}
!697 = !{i64 10282}
!698 = !{i64 10297}
!699 = !{i64 10302}
!700 = !{i64 10305}
!701 = !{i64 10336}
!702 = !{i64 10342}
!703 = !{i64 10346}
!704 = !{i64 10359}
!705 = !{i64 10362}
!706 = !{i64 10384}
!707 = !{i64 10389}
!708 = !{i64 10391}
!709 = !{i64 10399}
!710 = !{i64 10404}
!711 = !{i64 10411}
!712 = !{i64 10417}
!713 = !{i64 10427}
!714 = !{i64 10436}
!715 = !{i64 10450}
!716 = !{i64 10471}
!717 = !{i64 10475}
!718 = !{i64 10500}
!719 = !{i64 10505}
!720 = !{i64 10510}
!721 = !{i64 10519}
!722 = !{i64 10532}
!723 = !{i64 10554}
!724 = !{i64 10558}
!725 = !{i64 10583}
!726 = !{i64 10588}
!727 = !{i64 10603}
!728 = !{i64 10608}
!729 = !{i64 10617}
!730 = !{i64 10625}
!731 = !{i64 10633}
!732 = !{i64 10643}
!733 = !{i64 10682}
!734 = !{i64 10689}
!735 = !{i64 10699}
!736 = !{i64 10704}
!737 = !{i64 10709}
!738 = !{i64 10715}
!739 = !{i64 10746}
!740 = !{i64 10751}
!741 = !{i64 10753}
!742 = !{i64 10768}
!743 = !{i64 10773}
!744 = !{i64 10776}
!745 = !{i64 10803}
!746 = !{i64 10809}
!747 = !{i64 10813}
!748 = !{i64 10826}
!749 = !{i64 10829}
!750 = !{i64 10851}
!751 = !{i64 10856}
!752 = !{i64 10921}
!753 = !{i64 10877}
!754 = !{i64 10886}
!755 = !{i64 10894}
!756 = !{i64 10897}
!757 = !{i64 10907}
!758 = !{i64 10930}
!759 = !{i64 10935}
!760 = !{i64 10939}
!761 = !{i64 10941}
!762 = !{i64 10943}
!763 = !{i64 10948}
!764 = !{i64 10951}
!765 = !{i64 10946}
!766 = !{i64 10953}
!767 = !{i64 10958}
!768 = !{i64 10962}
!769 = !{i64 10965}
!770 = !{i64 10983}
!771 = !{i64 10988}
!772 = !{i64 10993}
!773 = !{i64 11002}
!774 = !{i64 11039}
!775 = !{i64 11048}
!776 = !{i64 11056}
!777 = !{i64 11100}
!778 = !{i64 11109}
!779 = !{i64 11133}
!780 = !{i64 11137}
!781 = !{i64 11140}
!782 = !{i64 11156}
!783 = !{i64 11172}
!784 = !{i64 11188}
