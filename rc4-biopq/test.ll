; ModuleID = 'test.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RC4_KEY_S = type { [256 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.key = private unnamed_addr constant [6 x i8] c"cipher", align 1
@.str = private unnamed_addr constant [94 x i8] c"------------------------------\0A----------RC4 CIPHER----------\0A------------------------------\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"Please enter the plaintext(%d characters): \00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"The plaintext is: \00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"\0AThe key is: \00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"\0AThe ciphertext is: \00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@file.name = private unnamed_addr constant [11 x i8] c"tmp.covpro\00", align 1
@attribute_rw = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@attribute_r = private unnamed_addr constant [2 x i8] c"r\00", align 1
@"attribute_%d" = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %0 = alloca float
  %1 = alloca i32
  store i32 %argc, i32* %1
  %2 = load i32* %1
  %conv60 = sitofp i32 %2 to double
  %div = fdiv double %conv60, 1.000000e+01
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %0
  %3 = load float* %0
  %conv2 = fpext float %3 to double
  %cmp61 = fcmp oeq double %conv2, 1.000000e-01
  br i1 %cmp61, label %originalBBalteredBB, label %originalBB

originalBB:                                       ; preds = %entry, %originalBBalteredBB
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca i32*, align 8
  %plaintext = alloca [10 x i8], align 1
  %key = alloca [6 x i8], align 1
  %ciphertext = alloca [10 x i8], align 1
  %rc4_key = alloca %struct.RC4_KEY_S, align 1
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %4 = bitcast [6 x i8]* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([6 x i8]* @main.key, i32 0, i32 0), i64 6, i32 1, i1 false)
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([94 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str1, i32 0, i32 0), i32 10)
  store i32 0, i32* %i, align 4
  %5 = alloca float
  %6 = alloca i32
  store i32 %argc, i32* %6
  %7 = load i32* %6
  %conv62 = sitofp i32 %7 to double
  %div63 = fdiv double %conv62, 1.000000e+01
  %conv164 = fptrunc double %div63 to float
  store float %conv164, float* %5
  %8 = load float* %5
  %conv265 = fpext float %8 to double
  %cmp66 = fcmp oeq double %conv265, 1.000000e-01
  br i1 %cmp66, label %originalBBalteredBB, label %originalBBpart2

originalBBpart2:                                  ; preds = %originalBB
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %originalBBpart2
  %9 = alloca float
  %10 = alloca i32
  store i32 %argc, i32* %10
  %11 = load i32* %10
  %conv67 = sitofp i32 %11 to double
  %div68 = fdiv double %conv67, 1.000000e+01
  %conv169 = fptrunc double %div68 to float
  store float %conv169, float* %9
  %12 = load float* %9
  %conv270 = fpext float %12 to double
  %cmp71 = fcmp oeq double %conv270, 1.000000e-01
  br i1 %cmp71, label %originalBB40alteredBB, label %originalBB40

originalBB40:                                     ; preds = %for.cond, %originalBB40alteredBB
  %13 = load i32* %i, align 4
  %cmp = icmp slt i32 %13, 10
  %14 = alloca float
  %15 = alloca i32
  store i32 %argc, i32* %15
  %16 = load i32* %15
  %conv72 = sitofp i32 %16 to double
  %div73 = fdiv double %conv72, 1.000000e+01
  %conv174 = fptrunc double %div73 to float
  store float %conv174, float* %14
  %17 = load float* %14
  %conv275 = fpext float %17 to double
  %cmp76 = fcmp oeq double %conv275, 1.000000e-01
  br i1 %cmp76, label %originalBB40alteredBB, label %originalBBpart242

originalBBpart242:                                ; preds = %originalBB40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %originalBBpart242
  %18 = alloca float
  %19 = alloca i32
  store i32 %argc, i32* %19
  %20 = load i32* %19
  %conv77 = sitofp i32 %20 to double
  %div78 = fdiv double %conv77, 1.000000e+01
  %conv179 = fptrunc double %div78 to float
  store float %conv179, float* %18
  %21 = load float* %18
  %conv280 = fpext float %21 to double
  %cmp81 = fcmp oeq double %conv280, 1.000000e-01
  br i1 %cmp81, label %originalBB44alteredBB, label %originalBB44

originalBB44:                                     ; preds = %for.body, %originalBB44alteredBB
  %22 = load i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [10 x i8]* %plaintext, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  %23 = alloca float
  %24 = alloca i32
  store i32 %argc, i32* %24
  %25 = load i32* %24
  %conv82 = sitofp i32 %25 to double
  %div83 = fdiv double %conv82, 1.000000e+01
  %conv184 = fptrunc double %div83 to float
  store float %conv184, float* %23
  %26 = load float* %23
  %conv285 = fpext float %26 to double
  %cmp86 = fcmp oeq double %conv285, 1.000000e-01
  br i1 %cmp86, label %originalBB44alteredBB, label %originalBBpart246

originalBBpart246:                                ; preds = %originalBB44
  br label %for.inc

for.inc:                                          ; preds = %originalBBpart246
  %27 = load i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %originalBBpart242
  store i32 6, i32* %x, align 4
  store i32* %x, i32** %p, align 8
  %arrayidx2 = getelementptr inbounds [6 x i8]* %key, i32 0, i64 0
  %28 = load i32** %p, align 8
  call void @RC4_key(%struct.RC4_KEY_S* %rc4_key, i8* %arrayidx2, i32* %28)
  store i32 10, i32* %x, align 4
  %arrayidx3 = getelementptr inbounds [10 x i8]* %plaintext, i32 0, i64 0
  %29 = load i32** %p, align 8
  %arrayidx4 = getelementptr inbounds [10 x i8]* %ciphertext, i32 0, i64 0
  call void @RC4(%struct.RC4_KEY_S* %rc4_key, i8* %arrayidx3, i32* %29, i8* %arrayidx4)
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %30 = load i32* %i, align 4
  %cmp7 = icmp slt i32 %30, 10
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %31 = load i32* %i, align 4
  %idxprom9 = sext i32 %31 to i64
  %arrayidx10 = getelementptr inbounds [10 x i8]* %plaintext, i32 0, i64 %idxprom9
  %32 = load i8* %arrayidx10, align 1
  %conv = zext i8 %32 to i32
  %call11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i32 %conv)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %33 = load i32* %i, align 4
  %inc13 = add nsw i32 %33, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond6

for.end14:                                        ; preds = %for.cond6
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %originalBBpart254, %for.end14
  %34 = load i32* %i, align 4
  %cmp17 = icmp slt i32 %34, 6
  br i1 %cmp17, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond16
  %35 = alloca float
  %36 = alloca i32
  store i32 %argc, i32* %36
  %37 = load i32* %36
  %conv87 = sitofp i32 %37 to double
  %div88 = fdiv double %conv87, 1.000000e+01
  %conv189 = fptrunc double %div88 to float
  store float %conv189, float* %35
  %38 = load float* %35
  %conv290 = fpext float %38 to double
  %cmp91 = fcmp oeq double %conv290, 1.000000e-01
  br i1 %cmp91, label %originalBB48alteredBB, label %originalBB48

originalBB48:                                     ; preds = %for.body19, %originalBB48alteredBB
  %39 = load i32* %i, align 4
  %idxprom20 = sext i32 %39 to i64
  %arrayidx21 = getelementptr inbounds [6 x i8]* %key, i32 0, i64 %idxprom20
  %40 = load i8* %arrayidx21, align 1
  %conv22 = zext i8 %40 to i32
  %call23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i32 %conv22)
  %41 = alloca float
  %42 = alloca i32
  store i32 %argc, i32* %42
  %43 = load i32* %42
  %conv92 = sitofp i32 %43 to double
  %div93 = fdiv double %conv92, 1.000000e+01
  %conv194 = fptrunc double %div93 to float
  store float %conv194, float* %41
  %44 = load float* %41
  %conv295 = fpext float %44 to double
  %cmp96 = fcmp oeq double %conv295, 1.000000e-01
  br i1 %cmp96, label %originalBB48alteredBB, label %originalBBpart250

originalBBpart250:                                ; preds = %originalBB48
  br label %for.inc24

for.inc24:                                        ; preds = %originalBBpart250
  %45 = alloca float
  %46 = alloca i32
  store i32 %argc, i32* %46
  %47 = load i32* %46
  %conv97 = sitofp i32 %47 to double
  %div98 = fdiv double %conv97, 1.000000e+01
  %conv199 = fptrunc double %div98 to float
  store float %conv199, float* %45
  %48 = load float* %45
  %conv2100 = fpext float %48 to double
  %cmp101 = fcmp oeq double %conv2100, 1.000000e-01
  br i1 %cmp101, label %originalBB52alteredBB, label %originalBB52

originalBB52:                                     ; preds = %for.inc24, %originalBB52alteredBB
  %49 = load i32* %i, align 4
  %inc25 = add nsw i32 %49, 1
  store i32 %inc25, i32* %i, align 4
  %50 = alloca float
  %51 = alloca i32
  store i32 %argc, i32* %51
  %52 = load i32* %51
  %conv102 = sitofp i32 %52 to double
  %div103 = fdiv double %conv102, 1.000000e+01
  %conv1104 = fptrunc double %div103 to float
  store float %conv1104, float* %50
  %53 = load float* %50
  %conv2105 = fpext float %53 to double
  %cmp106 = fcmp oeq double %conv2105, 1.000000e-01
  br i1 %cmp106, label %originalBB52alteredBB, label %originalBBpart254

originalBBpart254:                                ; preds = %originalBB52
  br label %for.cond16

for.end26:                                        ; preds = %for.cond16
  %54 = alloca float
  %55 = alloca i32
  store i32 %argc, i32* %55
  %56 = load i32* %55
  %conv107 = sitofp i32 %56 to double
  %div108 = fdiv double %conv107, 1.000000e+01
  %conv1109 = fptrunc double %div108 to float
  store float %conv1109, float* %54
  %57 = load float* %54
  %conv2110 = fpext float %57 to double
  %cmp111 = fcmp oeq double %conv2110, 1.000000e-01
  br i1 %cmp111, label %originalBB56alteredBB, label %originalBB56

originalBB56:                                     ; preds = %for.end26, %originalBB56alteredBB
  %call27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  %58 = alloca float
  %59 = alloca i32
  store i32 %argc, i32* %59
  %60 = load i32* %59
  %conv112 = sitofp i32 %60 to double
  %div113 = fdiv double %conv112, 1.000000e+01
  %conv1114 = fptrunc double %div113 to float
  store float %conv1114, float* %58
  %61 = load float* %58
  %conv2115 = fpext float %61 to double
  %cmp116 = fcmp oeq double %conv2115, 1.000000e-01
  br i1 %cmp116, label %originalBB56alteredBB, label %originalBBpart258

originalBBpart258:                                ; preds = %originalBB56
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc36, %originalBBpart258
  %62 = load i32* %i, align 4
  %cmp29 = icmp slt i32 %62, 10
  br i1 %cmp29, label %for.body31, label %for.end38

for.body31:                                       ; preds = %for.cond28
  %63 = load i32* %i, align 4
  %idxprom32 = sext i32 %63 to i64
  %arrayidx33 = getelementptr inbounds [10 x i8]* %ciphertext, i32 0, i64 %idxprom32
  %64 = load i8* %arrayidx33, align 1
  %conv34 = zext i8 %64 to i32
  %call35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i32 %conv34)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %65 = load i32* %i, align 4
  %inc37 = add nsw i32 %65, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond28

for.end38:                                        ; preds = %for.cond28
  %call39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0))
  ret i32 0

originalBBalteredBB:                              ; preds = %originalBB, %entry
  %retvalalteredBB = alloca i32, align 4
  %argc.addralteredBB = alloca i32, align 4
  %argv.addralteredBB = alloca i8**, align 8
  %ialteredBB = alloca i32, align 4
  %xalteredBB = alloca i32, align 4
  %palteredBB = alloca i32*, align 8
  %plaintextalteredBB = alloca [10 x i8], align 1
  %keyalteredBB = alloca [6 x i8], align 1
  %ciphertextalteredBB = alloca [10 x i8], align 1
  %rc4_keyalteredBB = alloca %struct.RC4_KEY_S, align 1
  store i32 0, i32* %retvalalteredBB
  store i32 %argc, i32* %argc.addralteredBB, align 4
  store i8** %argv, i8*** %argv.addralteredBB, align 8
  %66 = bitcast [6 x i8]* %keyalteredBB to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* getelementptr inbounds ([6 x i8]* @main.key, i32 0, i32 0), i64 6, i32 1, i1 false)
  %callalteredBB = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([94 x i8]* @.str, i32 0, i32 0))
  %call1alteredBB = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str1, i32 0, i32 0), i32 10)
  store i32 0, i32* %ialteredBB, align 4
  br label %originalBB

originalBB40alteredBB:                            ; preds = %originalBB40, %for.cond
  %67 = load i32* %i, align 4
  %cmpalteredBB = icmp slt i32 %67, 10
  br label %originalBB40

originalBB44alteredBB:                            ; preds = %originalBB44, %for.body
  %68 = load i32* %i, align 4
  %idxpromalteredBB = sext i32 %68 to i64
  %arrayidxalteredBB = getelementptr inbounds [10 x i8]* %plaintext, i32 0, i64 %idxpromalteredBB
  store i8 1, i8* %arrayidxalteredBB, align 1
  br label %originalBB44

originalBB48alteredBB:                            ; preds = %originalBB48, %for.body19
  %69 = load i32* %i, align 4
  %idxprom20alteredBB = sext i32 %69 to i64
  %arrayidx21alteredBB = getelementptr inbounds [6 x i8]* %key, i32 0, i64 %idxprom20alteredBB
  %70 = load i8* %arrayidx21alteredBB, align 1
  %conv22alteredBB = zext i8 %70 to i32
  %call23alteredBB = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i32 %conv22alteredBB)
  br label %originalBB48

originalBB52alteredBB:                            ; preds = %originalBB52, %for.inc24
  %71 = load i32* %i, align 4
  %_ = sub i32 0, %71
  %gen = add i32 %_, 1
  %inc25alteredBB = add nsw i32 %71, 1
  store i32 %inc25alteredBB, i32* %i, align 4
  br label %originalBB52

originalBB56alteredBB:                            ; preds = %originalBB56, %for.end26
  %call27alteredBB = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %originalBB56
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

declare void @RC4_key(%struct.RC4_KEY_S*, i8*, i32*) #2

declare void @RC4(%struct.RC4_KEY_S*, i8*, i32*, i8*) #2

declare i64 @MultIntMatrix(i64**, i64**, i64**, i64, i64, i64, i64, i64)

declare %struct._IO_FILE* @fopen(i8*, i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...)

declare i32 @fclose(%struct._IO_FILE*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 3.6.1 (tags/RELEASE_361/final) (based on Obfuscator-LLVM 3.6.1)"}
