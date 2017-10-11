; ModuleID = 'rc4.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RC4_KEY_S = type { [256 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@file.name = private unnamed_addr constant [11 x i8] c"tmp.covpro\00", align 1
@attribute_rw = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@attribute_r = private unnamed_addr constant [2 x i8] c"r\00", align 1
@"attribute_%d" = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@x = common global i32 0
@y = common global i32 0
@x1 = common global i32 0
@y2 = common global i32 0
@x3 = common global i32 0
@y4 = common global i32 0
@x5 = common global i32 0
@y6 = common global i32 0
@file.name7 = private unnamed_addr constant [11 x i8] c"tmp.covpro\00", align 1
@attribute_rw8 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@attribute_r9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@"attribute_%d10" = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@x11 = common global i32 0
@y12 = common global i32 0
@x13 = common global i32 0
@y14 = common global i32 0
@x15 = common global i32 0
@y16 = common global i32 0
@x17 = common global i32 0
@y18 = common global i32 0

; Function Attrs: nounwind uwtable
define void @RC4_key(%struct.RC4_KEY_S* %rc4_key, i8* %key, i32* %keylength) #0 {
entry:
  %0 = load i32* @x
  %1 = load i32* @y
  %2 = sub i32 %0, 1
  %3 = mul i32 %0, %2
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = icmp slt i32 %1, 10
  %7 = or i1 %5, %6
  br i1 %7, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %entry, %originalBBalteredBB
  %rc4_key.addr = alloca %struct.RC4_KEY_S*, align 8
  %key.addr = alloca i8*, align 8
  %keylength.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.RC4_KEY_S* %rc4_key, %struct.RC4_KEY_S** %rc4_key.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32* %keylength, i32** %keylength.addr, align 8
  store i32 0, i32* %i, align 4
  %8 = load i32* @x1
  %9 = load i32* @y2
  %10 = sub i32 %8, 1
  %11 = mul i32 %8, %10
  %12 = urem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = icmp slt i32 %9, 10
  %15 = or i1 %13, %14
  br i1 %15, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %originalBBpart2
  %16 = load i32* @x3
  %17 = load i32* @y4
  %18 = sub i32 %16, 1
  %19 = mul i32 %16, %18
  %20 = urem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = icmp slt i32 %17, 10
  %23 = or i1 %21, %22
  br i1 %23, label %originalBB29, label %originalBB29alteredBB

originalBB29:                                     ; preds = %for.cond, %originalBB29alteredBB
  %24 = load i32* %i, align 4
  %cmp = icmp slt i32 %24, 256
  %25 = load i32* @x5
  %26 = load i32* @y6
  %27 = sub i32 %25, 1
  %28 = mul i32 %25, %27
  %29 = urem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = icmp slt i32 %26, 10
  %32 = or i1 %30, %31
  br i1 %32, label %originalBBpart231, label %originalBB29alteredBB

originalBBpart231:                                ; preds = %originalBB29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %originalBBpart231
  %33 = load i32* %i, align 4
  %conv = trunc i32 %33 to i8
  %34 = load i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S = getelementptr inbounds %struct.RC4_KEY_S* %35, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i8]* %S, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %originalBBpart231
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.end
  %37 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %37, 256
  br i1 %cmp2, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond1
  %38 = load i32* %j, align 4
  %39 = load i32* %i, align 4
  %idxprom5 = sext i32 %39 to i64
  %40 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S6 = getelementptr inbounds %struct.RC4_KEY_S* %40, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [256 x i8]* %S6, i32 0, i64 %idxprom5
  %41 = load i8* %arrayidx7, align 1
  %conv8 = zext i8 %41 to i32
  %add = add nsw i32 %38, %conv8
  %42 = load i8** %key.addr, align 8
  %43 = load i32* %i, align 4
  %44 = load i32** %keylength.addr, align 8
  %45 = load i32* %44, align 4
  %rem = srem i32 %43, %45
  %idx.ext = sext i32 %rem to i64
  %add.ptr = getelementptr inbounds i8* %42, i64 %idx.ext
  %46 = load i8* %add.ptr, align 1
  %conv9 = zext i8 %46 to i32
  %add10 = add nsw i32 %add, %conv9
  %rem11 = srem i32 %add10, 256
  store i32 %rem11, i32* %j, align 4
  %47 = load i32* %i, align 4
  %idxprom12 = sext i32 %47 to i64
  %48 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S13 = getelementptr inbounds %struct.RC4_KEY_S* %48, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [256 x i8]* %S13, i32 0, i64 %idxprom12
  %49 = load i8* %arrayidx14, align 1
  %conv15 = zext i8 %49 to i32
  store i32 %conv15, i32* %temp, align 4
  %50 = load i32* %j, align 4
  %idxprom16 = sext i32 %50 to i64
  %51 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S17 = getelementptr inbounds %struct.RC4_KEY_S* %51, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [256 x i8]* %S17, i32 0, i64 %idxprom16
  %52 = load i8* %arrayidx18, align 1
  %53 = load i32* %i, align 4
  %idxprom19 = sext i32 %53 to i64
  %54 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S20 = getelementptr inbounds %struct.RC4_KEY_S* %54, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [256 x i8]* %S20, i32 0, i64 %idxprom19
  store i8 %52, i8* %arrayidx21, align 1
  %55 = load i32* %temp, align 4
  %conv22 = trunc i32 %55 to i8
  %56 = load i32* %j, align 4
  %idxprom23 = sext i32 %56 to i64
  %57 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S24 = getelementptr inbounds %struct.RC4_KEY_S* %57, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [256 x i8]* %S24, i32 0, i64 %idxprom23
  store i8 %conv22, i8* %arrayidx25, align 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body4
  %58 = load i32* %i, align 4
  %inc27 = add nsw i32 %58, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond1

for.end28:                                        ; preds = %for.cond1
  ret void

originalBBalteredBB:                              ; preds = %originalBB, %entry
  %rc4_key.addralteredBB = alloca %struct.RC4_KEY_S*, align 8
  %key.addralteredBB = alloca i8*, align 8
  %keylength.addralteredBB = alloca i32*, align 8
  %ialteredBB = alloca i32, align 4
  %jalteredBB = alloca i32, align 4
  %tempalteredBB = alloca i32, align 4
  store %struct.RC4_KEY_S* %rc4_key, %struct.RC4_KEY_S** %rc4_key.addralteredBB, align 8
  store i8* %key, i8** %key.addralteredBB, align 8
  store i32* %keylength, i32** %keylength.addralteredBB, align 8
  store i32 0, i32* %ialteredBB, align 4
  br label %originalBB

originalBB29alteredBB:                            ; preds = %originalBB29, %for.cond
  %59 = load i32* %i, align 4
  %cmpalteredBB = icmp slt i32 %59, 256
  br label %originalBB29
}

; Function Attrs: nounwind uwtable
define void @RC4(%struct.RC4_KEY_S* %rc4_key, i8* %plaintext, i32* %plaintext_length, i8* %ciphertext) #0 {
entry:
  %rc4_key.addr = alloca %struct.RC4_KEY_S*, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_length.addr = alloca i32*, align 8
  %ciphertext.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.RC4_KEY_S* %rc4_key, %struct.RC4_KEY_S** %rc4_key.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i32* %plaintext_length, i32** %plaintext_length.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* @x11
  %1 = load i32* @y12
  %2 = sub i32 %0, 1
  %3 = mul i32 %0, %2
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = icmp slt i32 %1, 10
  %7 = or i1 %5, %6
  br i1 %7, label %originalBB, label %originalBBalteredBB

originalBB:                                       ; preds = %for.cond, %originalBBalteredBB
  %8 = load i32* %i, align 4
  %9 = load i32** %plaintext_length.addr, align 8
  %10 = load i32* %9, align 4
  %cmp = icmp slt i32 %8, %10
  %11 = load i32* @x13
  %12 = load i32* @y14
  %13 = sub i32 %11, 1
  %14 = mul i32 %11, %13
  %15 = urem i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = icmp slt i32 %12, 10
  %18 = or i1 %16, %17
  br i1 %18, label %originalBBpart2, label %originalBBalteredBB

originalBBpart2:                                  ; preds = %originalBB
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %originalBBpart2
  %19 = load i32* @x15
  %20 = load i32* @y16
  %21 = sub i32 %19, 1
  %22 = mul i32 %19, %21
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp slt i32 %20, 10
  %26 = or i1 %24, %25
  br i1 %26, label %originalBB35, label %originalBB35alteredBB

originalBB35:                                     ; preds = %for.body, %originalBB35alteredBB
  %27 = load i32* %i, align 4
  %add = add nsw i32 %27, 1
  %rem = srem i32 %add, 256
  store i32 %rem, i32* %i, align 4
  %28 = load i32* %j, align 4
  %29 = load i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S = getelementptr inbounds %struct.RC4_KEY_S* %30, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i8]* %S, i32 0, i64 %idxprom
  %31 = load i8* %arrayidx, align 1
  %conv = zext i8 %31 to i32
  %add1 = add nsw i32 %28, %conv
  %rem2 = srem i32 %add1, 256
  store i32 %rem2, i32* %j, align 4
  %32 = load i32* %i, align 4
  %idxprom3 = sext i32 %32 to i64
  %33 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S4 = getelementptr inbounds %struct.RC4_KEY_S* %33, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [256 x i8]* %S4, i32 0, i64 %idxprom3
  %34 = load i8* %arrayidx5, align 1
  %conv6 = zext i8 %34 to i32
  store i32 %conv6, i32* %temp, align 4
  %35 = load i32* %j, align 4
  %idxprom7 = sext i32 %35 to i64
  %36 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S8 = getelementptr inbounds %struct.RC4_KEY_S* %36, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [256 x i8]* %S8, i32 0, i64 %idxprom7
  %37 = load i8* %arrayidx9, align 1
  %38 = load i32* %i, align 4
  %idxprom10 = sext i32 %38 to i64
  %39 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S11 = getelementptr inbounds %struct.RC4_KEY_S* %39, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [256 x i8]* %S11, i32 0, i64 %idxprom10
  store i8 %37, i8* %arrayidx12, align 1
  %40 = load i32* %temp, align 4
  %conv13 = trunc i32 %40 to i8
  %41 = load i32* %j, align 4
  %idxprom14 = sext i32 %41 to i64
  %42 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S15 = getelementptr inbounds %struct.RC4_KEY_S* %42, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [256 x i8]* %S15, i32 0, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx16, align 1
  %43 = load i32* %i, align 4
  %idxprom17 = sext i32 %43 to i64
  %44 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S18 = getelementptr inbounds %struct.RC4_KEY_S* %44, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [256 x i8]* %S18, i32 0, i64 %idxprom17
  %45 = load i8* %arrayidx19, align 1
  %conv20 = zext i8 %45 to i32
  %46 = load i32* %j, align 4
  %idxprom21 = sext i32 %46 to i64
  %47 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S22 = getelementptr inbounds %struct.RC4_KEY_S* %47, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [256 x i8]* %S22, i32 0, i64 %idxprom21
  %48 = load i8* %arrayidx23, align 1
  %conv24 = zext i8 %48 to i32
  %add25 = add nsw i32 %conv20, %conv24
  %rem26 = srem i32 %add25, 256
  %idxprom27 = sext i32 %rem26 to i64
  %49 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S28 = getelementptr inbounds %struct.RC4_KEY_S* %49, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [256 x i8]* %S28, i32 0, i64 %idxprom27
  %50 = load i8* %arrayidx29, align 1
  %conv30 = zext i8 %50 to i32
  store i32 %conv30, i32* %n, align 4
  %51 = load i8** %plaintext.addr, align 8
  %52 = load i32* %i, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8* %51, i64 %idx.ext
  %53 = load i8* %add.ptr, align 1
  %conv31 = zext i8 %53 to i32
  %54 = load i32* %n, align 4
  %xor = xor i32 %conv31, %54
  %conv32 = trunc i32 %xor to i8
  %55 = load i8** %ciphertext.addr, align 8
  %56 = load i32* %i, align 4
  %idx.ext33 = sext i32 %56 to i64
  %add.ptr34 = getelementptr inbounds i8* %55, i64 %idx.ext33
  store i8 %conv32, i8* %add.ptr34, align 1
  %57 = load i32* @x17
  %58 = load i32* @y18
  %59 = sub i32 %57, 1
  %60 = mul i32 %57, %59
  %61 = urem i32 %60, 2
  %62 = icmp eq i32 %61, 0
  %63 = icmp slt i32 %58, 10
  %64 = or i1 %62, %63
  br i1 %64, label %originalBBpart278, label %originalBB35alteredBB

originalBBpart278:                                ; preds = %originalBB35
  br label %for.inc

for.inc:                                          ; preds = %originalBBpart278
  %65 = load i32* %i, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %originalBBpart2
  ret void

originalBBalteredBB:                              ; preds = %originalBB, %for.cond
  %66 = load i32* %i, align 4
  %67 = load i32** %plaintext_length.addr, align 8
  %68 = load i32* %67, align 4
  %cmpalteredBB = icmp slt i32 %66, %68
  br label %originalBB

originalBB35alteredBB:                            ; preds = %originalBB35, %for.body
  %69 = load i32* %i, align 4
  %_ = sub i32 0, %69
  %gen = add i32 %_, 1
  %_36 = sub i32 %69, 1
  %gen37 = mul i32 %_36, 1
  %_38 = sub i32 0, %69
  %gen39 = add i32 %_38, 1
  %_40 = shl i32 %69, 1
  %_41 = sub i32 0, %69
  %gen42 = add i32 %_41, 1
  %addalteredBB = add nsw i32 %69, 1
  %_43 = sub i32 0, %addalteredBB
  %gen44 = add i32 %_43, 256
  %remalteredBB = srem i32 %addalteredBB, 256
  store i32 %remalteredBB, i32* %i, align 4
  %70 = load i32* %j, align 4
  %71 = load i32* %i, align 4
  %idxpromalteredBB = sext i32 %71 to i64
  %72 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %SalteredBB = getelementptr inbounds %struct.RC4_KEY_S* %72, i32 0, i32 0
  %arrayidxalteredBB = getelementptr inbounds [256 x i8]* %SalteredBB, i32 0, i64 %idxpromalteredBB
  %73 = load i8* %arrayidxalteredBB, align 1
  %convalteredBB = zext i8 %73 to i32
  %_45 = sub i32 0, %70
  %gen46 = add i32 %_45, %convalteredBB
  %_47 = sub i32 %70, %convalteredBB
  %gen48 = mul i32 %_47, %convalteredBB
  %_49 = shl i32 %70, %convalteredBB
  %_50 = sub i32 0, %70
  %gen51 = add i32 %_50, %convalteredBB
  %_52 = shl i32 %70, %convalteredBB
  %_53 = sub i32 %70, %convalteredBB
  %gen54 = mul i32 %_53, %convalteredBB
  %add1alteredBB = add nsw i32 %70, %convalteredBB
  %_55 = shl i32 %add1alteredBB, 256
  %_56 = shl i32 %add1alteredBB, 256
  %_57 = sub i32 %add1alteredBB, 256
  %gen58 = mul i32 %_57, 256
  %_59 = shl i32 %add1alteredBB, 256
  %_60 = shl i32 %add1alteredBB, 256
  %_61 = sub i32 %add1alteredBB, 256
  %gen62 = mul i32 %_61, 256
  %rem2alteredBB = srem i32 %add1alteredBB, 256
  store i32 %rem2alteredBB, i32* %j, align 4
  %74 = load i32* %i, align 4
  %idxprom3alteredBB = sext i32 %74 to i64
  %75 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S4alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %75, i32 0, i32 0
  %arrayidx5alteredBB = getelementptr inbounds [256 x i8]* %S4alteredBB, i32 0, i64 %idxprom3alteredBB
  %76 = load i8* %arrayidx5alteredBB, align 1
  %conv6alteredBB = zext i8 %76 to i32
  store i32 %conv6alteredBB, i32* %temp, align 4
  %77 = load i32* %j, align 4
  %idxprom7alteredBB = sext i32 %77 to i64
  %78 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S8alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %78, i32 0, i32 0
  %arrayidx9alteredBB = getelementptr inbounds [256 x i8]* %S8alteredBB, i32 0, i64 %idxprom7alteredBB
  %79 = load i8* %arrayidx9alteredBB, align 1
  %80 = load i32* %i, align 4
  %idxprom10alteredBB = sext i32 %80 to i64
  %81 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S11alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %81, i32 0, i32 0
  %arrayidx12alteredBB = getelementptr inbounds [256 x i8]* %S11alteredBB, i32 0, i64 %idxprom10alteredBB
  store i8 %79, i8* %arrayidx12alteredBB, align 1
  %82 = load i32* %temp, align 4
  %conv13alteredBB = trunc i32 %82 to i8
  %83 = load i32* %j, align 4
  %idxprom14alteredBB = sext i32 %83 to i64
  %84 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S15alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %84, i32 0, i32 0
  %arrayidx16alteredBB = getelementptr inbounds [256 x i8]* %S15alteredBB, i32 0, i64 %idxprom14alteredBB
  store i8 %conv13alteredBB, i8* %arrayidx16alteredBB, align 1
  %85 = load i32* %i, align 4
  %idxprom17alteredBB = sext i32 %85 to i64
  %86 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S18alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %86, i32 0, i32 0
  %arrayidx19alteredBB = getelementptr inbounds [256 x i8]* %S18alteredBB, i32 0, i64 %idxprom17alteredBB
  %87 = load i8* %arrayidx19alteredBB, align 1
  %conv20alteredBB = zext i8 %87 to i32
  %88 = load i32* %j, align 4
  %idxprom21alteredBB = sext i32 %88 to i64
  %89 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S22alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %89, i32 0, i32 0
  %arrayidx23alteredBB = getelementptr inbounds [256 x i8]* %S22alteredBB, i32 0, i64 %idxprom21alteredBB
  %90 = load i8* %arrayidx23alteredBB, align 1
  %conv24alteredBB = zext i8 %90 to i32
  %_63 = shl i32 %conv20alteredBB, %conv24alteredBB
  %_64 = sub i32 %conv20alteredBB, %conv24alteredBB
  %gen65 = mul i32 %_64, %conv24alteredBB
  %add25alteredBB = add nsw i32 %conv20alteredBB, %conv24alteredBB
  %_66 = shl i32 %add25alteredBB, 256
  %_67 = sub i32 %add25alteredBB, 256
  %gen68 = mul i32 %_67, 256
  %_69 = shl i32 %add25alteredBB, 256
  %_70 = sub i32 0, %add25alteredBB
  %gen71 = add i32 %_70, 256
  %_72 = sub i32 0, %add25alteredBB
  %gen73 = add i32 %_72, 256
  %_74 = sub i32 %add25alteredBB, 256
  %gen75 = mul i32 %_74, 256
  %rem26alteredBB = srem i32 %add25alteredBB, 256
  %idxprom27alteredBB = sext i32 %rem26alteredBB to i64
  %91 = load %struct.RC4_KEY_S** %rc4_key.addr, align 8
  %S28alteredBB = getelementptr inbounds %struct.RC4_KEY_S* %91, i32 0, i32 0
  %arrayidx29alteredBB = getelementptr inbounds [256 x i8]* %S28alteredBB, i32 0, i64 %idxprom27alteredBB
  %92 = load i8* %arrayidx29alteredBB, align 1
  %conv30alteredBB = zext i8 %92 to i32
  store i32 %conv30alteredBB, i32* %n, align 4
  %93 = load i8** %plaintext.addr, align 8
  %94 = load i32* %i, align 4
  %idx.extalteredBB = sext i32 %94 to i64
  %add.ptralteredBB = getelementptr inbounds i8* %93, i64 %idx.extalteredBB
  %95 = load i8* %add.ptralteredBB, align 1
  %conv31alteredBB = zext i8 %95 to i32
  %96 = load i32* %n, align 4
  %_76 = shl i32 %conv31alteredBB, %96
  %xoralteredBB = xor i32 %conv31alteredBB, %96
  %conv32alteredBB = trunc i32 %xoralteredBB to i8
  %97 = load i8** %ciphertext.addr, align 8
  %98 = load i32* %i, align 4
  %idx.ext33alteredBB = sext i32 %98 to i64
  %add.ptr34alteredBB = getelementptr inbounds i8* %97, i64 %idx.ext33alteredBB
  store i8 %conv32alteredBB, i8* %add.ptr34alteredBB, align 1
  br label %originalBB35
}

declare i64 @MultIntMatrix(i64**, i64**, i64**, i64, i64, i64, i64, i64)

declare %struct._IO_FILE* @fopen(i8*, i8*)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...)

declare i32 @fclose(%struct._IO_FILE*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 3.6.1 (tags/RELEASE_361/final) (based on Obfuscator-LLVM 3.6.1)"}
