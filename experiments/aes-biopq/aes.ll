; ModuleID = 'aes.c'
source_filename = "aes.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Nb = global i32 4, align 4
@R = global [4 x i8] c"\02\00\00\00", align 1
@mix_columns.a = private unnamed_addr constant [4 x i8] c"\02\01\01\03", align 1
@inv_mix_columns.a = private unnamed_addr constant [4 x i8] c"\0E\09\0D\0B", align 1
@s_box = internal global [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@inv_s_box = internal global [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\5C\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16
@Nr = common global i32 0, align 4
@Nk = common global i32 0, align 4
@main.key = private unnamed_addr constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@main.in = private unnamed_addr constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", align 16
@.str = private unnamed_addr constant [6 x i8] c"out:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%x %x %x %x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"msg:\0A\00", align 1
@K = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define zeroext i8 @gadd(i8 zeroext %a, i8 zeroext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = zext i8 %1 to i32
  %xor = xor i32 %conv, %conv1
  %conv2 = trunc i32 %xor to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i8 @gsub(i8 zeroext %a, i8 zeroext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %b.addr, align 1
  %conv1 = zext i8 %1 to i32
  %xor = xor i32 %conv, %conv1
  %conv2 = trunc i32 %xor to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i8 @gmult(i8 zeroext %a, i8 zeroext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %p = alloca i8, align 1
  %i = alloca i8, align 1
  %hbs = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i8 0, i8* %p, align 1
  store i8 0, i8* %i, align 1
  store i8 0, i8* %hbs, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %b.addr, align 1
  %conv2 = zext i8 %1 to i32
  %and = and i32 %conv2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i8, i8* %a.addr, align 1
  %conv3 = zext i8 %2 to i32
  %3 = load i8, i8* %p, align 1
  %conv4 = zext i8 %3 to i32
  %xor = xor i32 %conv4, %conv3
  %conv5 = trunc i32 %xor to i8
  store i8 %conv5, i8* %p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i8, i8* %a.addr, align 1
  %conv6 = zext i8 %4 to i32
  %and7 = and i32 %conv6, 128
  %conv8 = trunc i32 %and7 to i8
  store i8 %conv8, i8* %hbs, align 1
  %5 = load i8, i8* %a.addr, align 1
  %conv9 = zext i8 %5 to i32
  %shl = shl i32 %conv9, 1
  %conv10 = trunc i32 %shl to i8
  store i8 %conv10, i8* %a.addr, align 1
  %6 = load i8, i8* %hbs, align 1
  %tobool11 = icmp ne i8 %6, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %7 = load i8, i8* %a.addr, align 1
  %conv13 = zext i8 %7 to i32
  %xor14 = xor i32 %conv13, 27
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %a.addr, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end
  %8 = load i8, i8* %b.addr, align 1
  %conv17 = zext i8 %8 to i32
  %shr = ashr i32 %conv17, 1
  %conv18 = trunc i32 %shr to i8
  store i8 %conv18, i8* %b.addr, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %9 = load i8, i8* %i, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8, i8* %p, align 1
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define void @coef_add(i8* %a, i8* %b, i8* %d) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %b.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %xor = xor i32 %conv, %conv2
  %conv3 = trunc i32 %xor to i8
  %4 = load i8*, i8** %d.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %conv3, i8* %arrayidx4, align 1
  %5 = load i8*, i8** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i8*, i8** %b.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %xor9 = xor i32 %conv6, %conv8
  %conv10 = trunc i32 %xor9 to i8
  %9 = load i8*, i8** %d.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %conv10, i8* %arrayidx11, align 1
  %10 = load i8*, i8** %a.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %12 = load i8*, i8** %b.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %xor16 = xor i32 %conv13, %conv15
  %conv17 = trunc i32 %xor16 to i8
  %14 = load i8*, i8** %d.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %conv17, i8* %arrayidx18, align 1
  %15 = load i8*, i8** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 3
  %16 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i8*, i8** %b.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %18 to i32
  %xor23 = xor i32 %conv20, %conv22
  %conv24 = trunc i32 %xor23 to i8
  %19 = load i8*, i8** %d.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 %conv24, i8* %arrayidx25, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @coef_mult(i8* %a, i8* %b, i8* %d) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = load i8*, i8** %b.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %call = call zeroext i8 @gmult(i8 zeroext %1, i8 zeroext %3)
  %conv = zext i8 %call to i32
  %4 = load i8*, i8** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %b.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx3, align 1
  %call4 = call zeroext i8 @gmult(i8 zeroext %5, i8 zeroext %7)
  %conv5 = zext i8 %call4 to i32
  %xor = xor i32 %conv, %conv5
  %8 = load i8*, i8** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx6, align 1
  %10 = load i8*, i8** %b.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx7, align 1
  %call8 = call zeroext i8 @gmult(i8 zeroext %9, i8 zeroext %11)
  %conv9 = zext i8 %call8 to i32
  %xor10 = xor i32 %xor, %conv9
  %12 = load i8*, i8** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx11, align 1
  %14 = load i8*, i8** %b.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx12, align 1
  %call13 = call zeroext i8 @gmult(i8 zeroext %13, i8 zeroext %15)
  %conv14 = zext i8 %call13 to i32
  %xor15 = xor i32 %xor10, %conv14
  %conv16 = trunc i32 %xor15 to i8
  %16 = load i8*, i8** %d.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %conv16, i8* %arrayidx17, align 1
  %17 = load i8*, i8** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx18, align 1
  %19 = load i8*, i8** %b.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx19, align 1
  %call20 = call zeroext i8 @gmult(i8 zeroext %18, i8 zeroext %20)
  %conv21 = zext i8 %call20 to i32
  %21 = load i8*, i8** %a.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx22, align 1
  %23 = load i8*, i8** %b.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx23, align 1
  %call24 = call zeroext i8 @gmult(i8 zeroext %22, i8 zeroext %24)
  %conv25 = zext i8 %call24 to i32
  %xor26 = xor i32 %conv21, %conv25
  %25 = load i8*, i8** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx27, align 1
  %27 = load i8*, i8** %b.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx28, align 1
  %call29 = call zeroext i8 @gmult(i8 zeroext %26, i8 zeroext %28)
  %conv30 = zext i8 %call29 to i32
  %xor31 = xor i32 %xor26, %conv30
  %29 = load i8*, i8** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx32, align 1
  %31 = load i8*, i8** %b.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %31, i64 3
  %32 = load i8, i8* %arrayidx33, align 1
  %call34 = call zeroext i8 @gmult(i8 zeroext %30, i8 zeroext %32)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor31, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %33 = load i8*, i8** %d.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %conv37, i8* %arrayidx38, align 1
  %34 = load i8*, i8** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx39, align 1
  %36 = load i8*, i8** %b.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx40, align 1
  %call41 = call zeroext i8 @gmult(i8 zeroext %35, i8 zeroext %37)
  %conv42 = zext i8 %call41 to i32
  %38 = load i8*, i8** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx43, align 1
  %40 = load i8*, i8** %b.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx44, align 1
  %call45 = call zeroext i8 @gmult(i8 zeroext %39, i8 zeroext %41)
  %conv46 = zext i8 %call45 to i32
  %xor47 = xor i32 %conv42, %conv46
  %42 = load i8*, i8** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx48, align 1
  %44 = load i8*, i8** %b.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx49, align 1
  %call50 = call zeroext i8 @gmult(i8 zeroext %43, i8 zeroext %45)
  %conv51 = zext i8 %call50 to i32
  %xor52 = xor i32 %xor47, %conv51
  %46 = load i8*, i8** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %46, i64 3
  %47 = load i8, i8* %arrayidx53, align 1
  %48 = load i8*, i8** %b.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %48, i64 3
  %49 = load i8, i8* %arrayidx54, align 1
  %call55 = call zeroext i8 @gmult(i8 zeroext %47, i8 zeroext %49)
  %conv56 = zext i8 %call55 to i32
  %xor57 = xor i32 %xor52, %conv56
  %conv58 = trunc i32 %xor57 to i8
  %50 = load i8*, i8** %d.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %conv58, i8* %arrayidx59, align 1
  %51 = load i8*, i8** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load i8, i8* %arrayidx60, align 1
  %53 = load i8*, i8** %b.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx61, align 1
  %call62 = call zeroext i8 @gmult(i8 zeroext %52, i8 zeroext %54)
  %conv63 = zext i8 %call62 to i32
  %55 = load i8*, i8** %a.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %55, i64 2
  %56 = load i8, i8* %arrayidx64, align 1
  %57 = load i8*, i8** %b.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx65, align 1
  %call66 = call zeroext i8 @gmult(i8 zeroext %56, i8 zeroext %58)
  %conv67 = zext i8 %call66 to i32
  %xor68 = xor i32 %conv63, %conv67
  %59 = load i8*, i8** %a.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %arrayidx69, align 1
  %61 = load i8*, i8** %b.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %arrayidx70, align 1
  %call71 = call zeroext i8 @gmult(i8 zeroext %60, i8 zeroext %62)
  %conv72 = zext i8 %call71 to i32
  %xor73 = xor i32 %xor68, %conv72
  %63 = load i8*, i8** %a.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx74, align 1
  %65 = load i8*, i8** %b.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %65, i64 3
  %66 = load i8, i8* %arrayidx75, align 1
  %call76 = call zeroext i8 @gmult(i8 zeroext %64, i8 zeroext %66)
  %conv77 = zext i8 %call76 to i32
  %xor78 = xor i32 %xor73, %conv77
  %conv79 = trunc i32 %xor78 to i8
  %67 = load i8*, i8** %d.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 %conv79, i8* %arrayidx80, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Rcon(i8 zeroext %i) #0 {
entry:
  %i.addr = alloca i8, align 1
  store i8 %i, i8* %i.addr, align 1
  %0 = load i8, i8* %i.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @R, i64 0, i64 0), align 1
  br label %if.end10

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %i.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp sgt i32 %conv2, 1
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i8 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @R, i64 0, i64 0), align 1
  %2 = load i8, i8* %i.addr, align 1
  %dec = add i8 %2, -1
  store i8 %dec, i8* %i.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then5
  %3 = load i8, i8* %i.addr, align 1
  %conv6 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv6, 1
  %cmp7 = icmp sgt i32 %sub, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @R, i64 0, i64 0), align 1
  %call = call zeroext i8 @gmult(i8 zeroext %4, i8 zeroext 2)
  store i8 %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @R, i64 0, i64 0), align 1
  %5 = load i8, i8* %i.addr, align 1
  %dec9 = add i8 %5, -1
  store i8 %dec9, i8* %i.addr, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @R, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @add_round_key(i8* %state, i8* %w, i8 zeroext %r) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %w.addr = alloca i8*, align 8
  %r.addr = alloca i8, align 1
  %c = alloca i8, align 1
  store i8* %state, i8** %state.addr, align 8
  store i8* %w, i8** %w.addr, align 8
  store i8 %r, i8* %r.addr, align 1
  store i8 0, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %c, align 1
  %conv = zext i8 %0 to i32
  %1 = load i32, i32* @Nb, align 4
  %cmp = icmp slt i32 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @Nb, align 4
  %mul = mul nsw i32 %2, 0
  %3 = load i8, i8* %c, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %mul, %conv2
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %5 to i32
  %6 = load i32, i32* @Nb, align 4
  %mul4 = mul nsw i32 4, %6
  %7 = load i8, i8* %r.addr, align 1
  %conv5 = zext i8 %7 to i32
  %mul6 = mul nsw i32 %mul4, %conv5
  %8 = load i8, i8* %c, align 1
  %conv7 = zext i8 %8 to i32
  %mul8 = mul nsw i32 4, %conv7
  %add9 = add nsw i32 %mul6, %mul8
  %add10 = add nsw i32 %add9, 0
  %idxprom11 = sext i32 %add10 to i64
  %9 = load i8*, i8** %w.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 %idxprom11
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %xor = xor i32 %conv3, %conv13
  %conv14 = trunc i32 %xor to i8
  %11 = load i32, i32* @Nb, align 4
  %mul15 = mul nsw i32 %11, 0
  %12 = load i8, i8* %c, align 1
  %conv16 = zext i8 %12 to i32
  %add17 = add nsw i32 %mul15, %conv16
  %idxprom18 = sext i32 %add17 to i64
  %13 = load i8*, i8** %state.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %13, i64 %idxprom18
  store i8 %conv14, i8* %arrayidx19, align 1
  %14 = load i32, i32* @Nb, align 4
  %mul20 = mul nsw i32 %14, 1
  %15 = load i8, i8* %c, align 1
  %conv21 = zext i8 %15 to i32
  %add22 = add nsw i32 %mul20, %conv21
  %idxprom23 = sext i32 %add22 to i64
  %16 = load i8*, i8** %state.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %18 = load i32, i32* @Nb, align 4
  %mul26 = mul nsw i32 4, %18
  %19 = load i8, i8* %r.addr, align 1
  %conv27 = zext i8 %19 to i32
  %mul28 = mul nsw i32 %mul26, %conv27
  %20 = load i8, i8* %c, align 1
  %conv29 = zext i8 %20 to i32
  %mul30 = mul nsw i32 4, %conv29
  %add31 = add nsw i32 %mul28, %mul30
  %add32 = add nsw i32 %add31, 1
  %idxprom33 = sext i32 %add32 to i64
  %21 = load i8*, i8** %w.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %21, i64 %idxprom33
  %22 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %22 to i32
  %xor36 = xor i32 %conv25, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %23 = load i32, i32* @Nb, align 4
  %mul38 = mul nsw i32 %23, 1
  %24 = load i8, i8* %c, align 1
  %conv39 = zext i8 %24 to i32
  %add40 = add nsw i32 %mul38, %conv39
  %idxprom41 = sext i32 %add40 to i64
  %25 = load i8*, i8** %state.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %25, i64 %idxprom41
  store i8 %conv37, i8* %arrayidx42, align 1
  %26 = load i32, i32* @Nb, align 4
  %mul43 = mul nsw i32 %26, 2
  %27 = load i8, i8* %c, align 1
  %conv44 = zext i8 %27 to i32
  %add45 = add nsw i32 %mul43, %conv44
  %idxprom46 = sext i32 %add45 to i64
  %28 = load i8*, i8** %state.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %28, i64 %idxprom46
  %29 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %29 to i32
  %30 = load i32, i32* @Nb, align 4
  %mul49 = mul nsw i32 4, %30
  %31 = load i8, i8* %r.addr, align 1
  %conv50 = zext i8 %31 to i32
  %mul51 = mul nsw i32 %mul49, %conv50
  %32 = load i8, i8* %c, align 1
  %conv52 = zext i8 %32 to i32
  %mul53 = mul nsw i32 4, %conv52
  %add54 = add nsw i32 %mul51, %mul53
  %add55 = add nsw i32 %add54, 2
  %idxprom56 = sext i32 %add55 to i64
  %33 = load i8*, i8** %w.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %33, i64 %idxprom56
  %34 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %34 to i32
  %xor59 = xor i32 %conv48, %conv58
  %conv60 = trunc i32 %xor59 to i8
  %35 = load i32, i32* @Nb, align 4
  %mul61 = mul nsw i32 %35, 2
  %36 = load i8, i8* %c, align 1
  %conv62 = zext i8 %36 to i32
  %add63 = add nsw i32 %mul61, %conv62
  %idxprom64 = sext i32 %add63 to i64
  %37 = load i8*, i8** %state.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %37, i64 %idxprom64
  store i8 %conv60, i8* %arrayidx65, align 1
  %38 = load i32, i32* @Nb, align 4
  %mul66 = mul nsw i32 %38, 3
  %39 = load i8, i8* %c, align 1
  %conv67 = zext i8 %39 to i32
  %add68 = add nsw i32 %mul66, %conv67
  %idxprom69 = sext i32 %add68 to i64
  %40 = load i8*, i8** %state.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %40, i64 %idxprom69
  %41 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %41 to i32
  %42 = load i32, i32* @Nb, align 4
  %mul72 = mul nsw i32 4, %42
  %43 = load i8, i8* %r.addr, align 1
  %conv73 = zext i8 %43 to i32
  %mul74 = mul nsw i32 %mul72, %conv73
  %44 = load i8, i8* %c, align 1
  %conv75 = zext i8 %44 to i32
  %mul76 = mul nsw i32 4, %conv75
  %add77 = add nsw i32 %mul74, %mul76
  %add78 = add nsw i32 %add77, 3
  %idxprom79 = sext i32 %add78 to i64
  %45 = load i8*, i8** %w.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %45, i64 %idxprom79
  %46 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %46 to i32
  %xor82 = xor i32 %conv71, %conv81
  %conv83 = trunc i32 %xor82 to i8
  %47 = load i32, i32* @Nb, align 4
  %mul84 = mul nsw i32 %47, 3
  %48 = load i8, i8* %c, align 1
  %conv85 = zext i8 %48 to i32
  %add86 = add nsw i32 %mul84, %conv85
  %idxprom87 = sext i32 %add86 to i64
  %49 = load i8*, i8** %state.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %49, i64 %idxprom87
  store i8 %conv83, i8* %arrayidx88, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i8, i8* %c, align 1
  %inc = add i8 %50, 1
  store i8 %inc, i8* %c, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mix_columns(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %a = alloca [4 x i8], align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %col = alloca [4 x i8], align 1
  %res = alloca [4 x i8], align 1
  store i8* %state, i8** %state.addr, align 8
  %0 = bitcast [4 x i8]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mix_columns.a, i32 0, i32 0), i64 4, i32 1, i1 false)
  store i8 0, i8* %j, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %1 = load i8, i8* %j, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* @Nb, align 4
  %cmp = icmp slt i32 %conv, %2
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %i, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i8, i8* %i, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp slt i32 %conv3, 4
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %4 = load i32, i32* @Nb, align 4
  %5 = load i8, i8* %i, align 1
  %conv7 = zext i8 %5 to i32
  %mul = mul nsw i32 %4, %conv7
  %6 = load i8, i8* %j, align 1
  %conv8 = zext i8 %6 to i32
  %add = add nsw i32 %mul, %conv8
  %idxprom = sext i32 %add to i64
  %7 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load i8, i8* %i, align 1
  %idxprom9 = zext i8 %9 to i64
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i64 0, i64 %idxprom9
  store i8 %8, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i8, i8* %i, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %a, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %res, i32 0, i32 0
  call void @coef_mult(i8* %arraydecay, i8* %arraydecay11, i8* %arraydecay12)
  store i8 0, i8* %i, align 1
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %for.end
  %11 = load i8, i8* %i, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp slt i32 %conv14, 4
  br i1 %cmp15, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond13
  %12 = load i8, i8* %i, align 1
  %idxprom18 = zext i8 %12 to i64
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %res, i64 0, i64 %idxprom18
  %13 = load i8, i8* %arrayidx19, align 1
  %14 = load i32, i32* @Nb, align 4
  %15 = load i8, i8* %i, align 1
  %conv20 = zext i8 %15 to i32
  %mul21 = mul nsw i32 %14, %conv20
  %16 = load i8, i8* %j, align 1
  %conv22 = zext i8 %16 to i32
  %add23 = add nsw i32 %mul21, %conv22
  %idxprom24 = sext i32 %add23 to i64
  %17 = load i8*, i8** %state.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 %idxprom24
  store i8 %13, i8* %arrayidx25, align 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17
  %18 = load i8, i8* %i, align 1
  %inc27 = add i8 %18, 1
  store i8 %inc27, i8* %i, align 1
  br label %for.cond13

for.end28:                                        ; preds = %for.cond13
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %19 = load i8, i8* %j, align 1
  %inc30 = add i8 %19, 1
  store i8 %inc30, i8* %j, align 1
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @inv_mix_columns(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %a = alloca [4 x i8], align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %col = alloca [4 x i8], align 1
  %res = alloca [4 x i8], align 1
  store i8* %state, i8** %state.addr, align 8
  %0 = bitcast [4 x i8]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @inv_mix_columns.a, i32 0, i32 0), i64 4, i32 1, i1 false)
  store i8 0, i8* %j, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %1 = load i8, i8* %j, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* @Nb, align 4
  %cmp = icmp slt i32 %conv, %2
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %i, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i8, i8* %i, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp slt i32 %conv3, 4
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %4 = load i32, i32* @Nb, align 4
  %5 = load i8, i8* %i, align 1
  %conv7 = zext i8 %5 to i32
  %mul = mul nsw i32 %4, %conv7
  %6 = load i8, i8* %j, align 1
  %conv8 = zext i8 %6 to i32
  %add = add nsw i32 %mul, %conv8
  %idxprom = sext i32 %add to i64
  %7 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load i8, i8* %i, align 1
  %idxprom9 = zext i8 %9 to i64
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i64 0, i64 %idxprom9
  store i8 %8, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i8, i8* %i, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %a, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %res, i32 0, i32 0
  call void @coef_mult(i8* %arraydecay, i8* %arraydecay11, i8* %arraydecay12)
  store i8 0, i8* %i, align 1
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %for.end
  %11 = load i8, i8* %i, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp slt i32 %conv14, 4
  br i1 %cmp15, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond13
  %12 = load i8, i8* %i, align 1
  %idxprom18 = zext i8 %12 to i64
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %res, i64 0, i64 %idxprom18
  %13 = load i8, i8* %arrayidx19, align 1
  %14 = load i32, i32* @Nb, align 4
  %15 = load i8, i8* %i, align 1
  %conv20 = zext i8 %15 to i32
  %mul21 = mul nsw i32 %14, %conv20
  %16 = load i8, i8* %j, align 1
  %conv22 = zext i8 %16 to i32
  %add23 = add nsw i32 %mul21, %conv22
  %idxprom24 = sext i32 %add23 to i64
  %17 = load i8*, i8** %state.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 %idxprom24
  store i8 %13, i8* %arrayidx25, align 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17
  %18 = load i8, i8* %i, align 1
  %inc27 = add i8 %18, 1
  store i8 %inc27, i8* %i, align 1
  br label %for.cond13

for.end28:                                        ; preds = %for.cond13
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %19 = load i8, i8* %j, align 1
  %inc30 = add i8 %19, 1
  store i8 %inc30, i8* %j, align 1
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @shift_rows(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %k = alloca i8, align 1
  %s = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i8* %state, i8** %state.addr, align 8
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %s, align 1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body
  %1 = load i8, i8* %s, align 1
  %conv2 = zext i8 %1 to i32
  %2 = load i8, i8* %i, align 1
  %conv3 = zext i8 %2 to i32
  %cmp4 = icmp slt i32 %conv2, %conv3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @Nb, align 4
  %4 = load i8, i8* %i, align 1
  %conv6 = zext i8 %4 to i32
  %mul = mul nsw i32 %3, %conv6
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %5 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %tmp, align 1
  store i8 1, i8* %k, align 1
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %while.body
  %7 = load i8, i8* %k, align 1
  %conv8 = zext i8 %7 to i32
  %8 = load i32, i32* @Nb, align 4
  %cmp9 = icmp slt i32 %conv8, %8
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond7
  %9 = load i32, i32* @Nb, align 4
  %10 = load i8, i8* %i, align 1
  %conv12 = zext i8 %10 to i32
  %mul13 = mul nsw i32 %9, %conv12
  %11 = load i8, i8* %k, align 1
  %conv14 = zext i8 %11 to i32
  %add15 = add nsw i32 %mul13, %conv14
  %idxprom16 = sext i32 %add15 to i64
  %12 = load i8*, i8** %state.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %13 = load i8, i8* %arrayidx17, align 1
  %14 = load i32, i32* @Nb, align 4
  %15 = load i8, i8* %i, align 1
  %conv18 = zext i8 %15 to i32
  %mul19 = mul nsw i32 %14, %conv18
  %16 = load i8, i8* %k, align 1
  %conv20 = zext i8 %16 to i32
  %add21 = add nsw i32 %mul19, %conv20
  %sub = sub nsw i32 %add21, 1
  %idxprom22 = sext i32 %sub to i64
  %17 = load i8*, i8** %state.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %17, i64 %idxprom22
  store i8 %13, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %18 = load i8, i8* %k, align 1
  %inc = add i8 %18, 1
  store i8 %inc, i8* %k, align 1
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  %19 = load i8, i8* %tmp, align 1
  %20 = load i32, i32* @Nb, align 4
  %21 = load i8, i8* %i, align 1
  %conv24 = zext i8 %21 to i32
  %mul25 = mul nsw i32 %20, %conv24
  %22 = load i32, i32* @Nb, align 4
  %add26 = add nsw i32 %mul25, %22
  %sub27 = sub nsw i32 %add26, 1
  %idxprom28 = sext i32 %sub27 to i64
  %23 = load i8*, i8** %state.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %23, i64 %idxprom28
  store i8 %19, i8* %arrayidx29, align 1
  %24 = load i8, i8* %s, align 1
  %inc30 = add i8 %24, 1
  store i8 %inc30, i8* %s, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc31

for.inc31:                                        ; preds = %while.end
  %25 = load i8, i8* %i, align 1
  %inc32 = add i8 %25, 1
  store i8 %inc32, i8* %i, align 1
  br label %for.cond

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @inv_shift_rows(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %k = alloca i8, align 1
  %s = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i8* %state, i8** %state.addr, align 8
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %s, align 1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body
  %1 = load i8, i8* %s, align 1
  %conv2 = zext i8 %1 to i32
  %2 = load i8, i8* %i, align 1
  %conv3 = zext i8 %2 to i32
  %cmp4 = icmp slt i32 %conv2, %conv3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @Nb, align 4
  %4 = load i8, i8* %i, align 1
  %conv6 = zext i8 %4 to i32
  %mul = mul nsw i32 %3, %conv6
  %5 = load i32, i32* @Nb, align 4
  %add = add nsw i32 %mul, %5
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  store i8 %7, i8* %tmp, align 1
  %8 = load i32, i32* @Nb, align 4
  %sub7 = sub nsw i32 %8, 1
  %conv8 = trunc i32 %sub7 to i8
  store i8 %conv8, i8* %k, align 1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %while.body
  %9 = load i8, i8* %k, align 1
  %conv10 = zext i8 %9 to i32
  %cmp11 = icmp sgt i32 %conv10, 0
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond9
  %10 = load i32, i32* @Nb, align 4
  %11 = load i8, i8* %i, align 1
  %conv14 = zext i8 %11 to i32
  %mul15 = mul nsw i32 %10, %conv14
  %12 = load i8, i8* %k, align 1
  %conv16 = zext i8 %12 to i32
  %add17 = add nsw i32 %mul15, %conv16
  %sub18 = sub nsw i32 %add17, 1
  %idxprom19 = sext i32 %sub18 to i64
  %13 = load i8*, i8** %state.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 %idxprom19
  %14 = load i8, i8* %arrayidx20, align 1
  %15 = load i32, i32* @Nb, align 4
  %16 = load i8, i8* %i, align 1
  %conv21 = zext i8 %16 to i32
  %mul22 = mul nsw i32 %15, %conv21
  %17 = load i8, i8* %k, align 1
  %conv23 = zext i8 %17 to i32
  %add24 = add nsw i32 %mul22, %conv23
  %idxprom25 = sext i32 %add24 to i64
  %18 = load i8*, i8** %state.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %18, i64 %idxprom25
  store i8 %14, i8* %arrayidx26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %19 = load i8, i8* %k, align 1
  %dec = add i8 %19, -1
  store i8 %dec, i8* %k, align 1
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  %20 = load i8, i8* %tmp, align 1
  %21 = load i32, i32* @Nb, align 4
  %22 = load i8, i8* %i, align 1
  %conv27 = zext i8 %22 to i32
  %mul28 = mul nsw i32 %21, %conv27
  %add29 = add nsw i32 %mul28, 0
  %idxprom30 = sext i32 %add29 to i64
  %23 = load i8*, i8** %state.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i64 %idxprom30
  store i8 %20, i8* %arrayidx31, align 1
  %24 = load i8, i8* %s, align 1
  %inc = add i8 %24, 1
  store i8 %inc, i8* %s, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc32

for.inc32:                                        ; preds = %while.end
  %25 = load i8, i8* %i, align 1
  %inc33 = add i8 %25, 1
  store i8 %inc33, i8* %i, align 1
  br label %for.cond

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sub_bytes(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %row = alloca i8, align 1
  %col = alloca i8, align 1
  store i8* %state, i8** %state.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i8, i8* %j, align 1
  %conv3 = zext i8 %1 to i32
  %2 = load i32, i32* @Nb, align 4
  %cmp4 = icmp slt i32 %conv3, %2
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %3 = load i32, i32* @Nb, align 4
  %4 = load i8, i8* %i, align 1
  %conv7 = zext i8 %4 to i32
  %mul = mul nsw i32 %3, %conv7
  %5 = load i8, i8* %j, align 1
  %conv8 = zext i8 %5 to i32
  %add = add nsw i32 %mul, %conv8
  %idxprom = sext i32 %add to i64
  %6 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %7 to i32
  %and = and i32 %conv9, 240
  %shr = ashr i32 %and, 4
  %conv10 = trunc i32 %shr to i8
  store i8 %conv10, i8* %row, align 1
  %8 = load i32, i32* @Nb, align 4
  %9 = load i8, i8* %i, align 1
  %conv11 = zext i8 %9 to i32
  %mul12 = mul nsw i32 %8, %conv11
  %10 = load i8, i8* %j, align 1
  %conv13 = zext i8 %10 to i32
  %add14 = add nsw i32 %mul12, %conv13
  %idxprom15 = sext i32 %add14 to i64
  %11 = load i8*, i8** %state.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 %idxprom15
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, 15
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, i8* %col, align 1
  %13 = load i8, i8* %row, align 1
  %conv20 = zext i8 %13 to i32
  %mul21 = mul nsw i32 16, %conv20
  %14 = load i8, i8* %col, align 1
  %conv22 = zext i8 %14 to i32
  %add23 = add nsw i32 %mul21, %conv22
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @s_box, i64 0, i64 %idxprom24
  %15 = load i8, i8* %arrayidx25, align 1
  %16 = load i32, i32* @Nb, align 4
  %17 = load i8, i8* %i, align 1
  %conv26 = zext i8 %17 to i32
  %mul27 = mul nsw i32 %16, %conv26
  %18 = load i8, i8* %j, align 1
  %conv28 = zext i8 %18 to i32
  %add29 = add nsw i32 %mul27, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %19 = load i8*, i8** %state.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %19, i64 %idxprom30
  store i8 %15, i8* %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %20 = load i8, i8* %j, align 1
  %inc = add i8 %20, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %21 = load i8, i8* %i, align 1
  %inc33 = add i8 %21, 1
  store i8 %inc33, i8* %i, align 1
  br label %for.cond

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @inv_sub_bytes(i8* %state) #0 {
entry:
  %state.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %row = alloca i8, align 1
  %col = alloca i8, align 1
  store i8* %state, i8** %state.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i8, i8* %j, align 1
  %conv3 = zext i8 %1 to i32
  %2 = load i32, i32* @Nb, align 4
  %cmp4 = icmp slt i32 %conv3, %2
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %3 = load i32, i32* @Nb, align 4
  %4 = load i8, i8* %i, align 1
  %conv7 = zext i8 %4 to i32
  %mul = mul nsw i32 %3, %conv7
  %5 = load i8, i8* %j, align 1
  %conv8 = zext i8 %5 to i32
  %add = add nsw i32 %mul, %conv8
  %idxprom = sext i32 %add to i64
  %6 = load i8*, i8** %state.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %7 to i32
  %and = and i32 %conv9, 240
  %shr = ashr i32 %and, 4
  %conv10 = trunc i32 %shr to i8
  store i8 %conv10, i8* %row, align 1
  %8 = load i32, i32* @Nb, align 4
  %9 = load i8, i8* %i, align 1
  %conv11 = zext i8 %9 to i32
  %mul12 = mul nsw i32 %8, %conv11
  %10 = load i8, i8* %j, align 1
  %conv13 = zext i8 %10 to i32
  %add14 = add nsw i32 %mul12, %conv13
  %idxprom15 = sext i32 %add14 to i64
  %11 = load i8*, i8** %state.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 %idxprom15
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, 15
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, i8* %col, align 1
  %13 = load i8, i8* %row, align 1
  %conv20 = zext i8 %13 to i32
  %mul21 = mul nsw i32 16, %conv20
  %14 = load i8, i8* %col, align 1
  %conv22 = zext i8 %14 to i32
  %add23 = add nsw i32 %mul21, %conv22
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @inv_s_box, i64 0, i64 %idxprom24
  %15 = load i8, i8* %arrayidx25, align 1
  %16 = load i32, i32* @Nb, align 4
  %17 = load i8, i8* %i, align 1
  %conv26 = zext i8 %17 to i32
  %mul27 = mul nsw i32 %16, %conv26
  %18 = load i8, i8* %j, align 1
  %conv28 = zext i8 %18 to i32
  %add29 = add nsw i32 %mul27, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %19 = load i8*, i8** %state.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %19, i64 %idxprom30
  store i8 %15, i8* %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %20 = load i8, i8* %j, align 1
  %inc = add i8 %20, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %21 = load i8, i8* %i, align 1
  %inc33 = add i8 %21, 1
  store i8 %inc33, i8* %i, align 1
  br label %for.cond

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sub_word(i8* %w) #0 {
entry:
  %w.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  store i8* %w, i8** %w.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %i, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load i8*, i8** %w.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %and = and i32 %conv2, 240
  %shr = ashr i32 %and, 4
  %mul = mul nsw i32 16, %shr
  %4 = load i8, i8* %i, align 1
  %idxprom3 = zext i8 %4 to i64
  %5 = load i8*, i8** %w.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %and6 = and i32 %conv5, 15
  %add = add nsw i32 %mul, %and6
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @s_box, i64 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %8 = load i8, i8* %i, align 1
  %idxprom9 = zext i8 %8 to i64
  %9 = load i8*, i8** %w.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %idxprom9
  store i8 %7, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i8, i8* %i, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @rot_word(i8* %w) #0 {
entry:
  %w.addr = alloca i8*, align 8
  %tmp = alloca i8, align 1
  %i = alloca i8, align 1
  store i8* %w, i8** %w.addr, align 8
  %0 = load i8*, i8** %w.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %tmp, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp slt i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %i, align 1
  %conv3 = zext i8 %3 to i32
  %add = add nsw i32 %conv3, 1
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %w.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx4, align 1
  %6 = load i8, i8* %i, align 1
  %idxprom5 = zext i8 %6 to i64
  %7 = load i8*, i8** %w.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  store i8 %5, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8, i8* %i, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8, i8* %tmp, align 1
  %10 = load i8*, i8** %w.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 3
  store i8 %9, i8* %arrayidx7, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @key_expansion(i8* %key, i8* %w) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %w.addr = alloca i8*, align 8
  %tmp = alloca [4 x i8], align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %len = alloca i8, align 1
  store i8* %key, i8** %key.addr, align 8
  store i8* %w, i8** %w.addr, align 8
  %0 = load i32, i32* @Nb, align 4
  %1 = load i32, i32* @Nr, align 4
  %add = add nsw i32 %1, 1
  %mul = mul nsw i32 %0, %add
  %conv = trunc i32 %mul to i8
  store i8 %conv, i8* %len, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %i, align 1
  %conv4 = zext i8 %2 to i32
  %3 = load i32, i32* @Nk, align 4
  %cmp = icmp slt i32 %conv4, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8, i8* %i, align 1
  %conv6 = zext i8 %4 to i32
  %mul7 = mul nsw i32 4, %conv6
  %add8 = add nsw i32 %mul7, 0
  %idxprom = sext i32 %add8 to i64
  %5 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i8, i8* %i, align 1
  %conv9 = zext i8 %7 to i32
  %mul10 = mul nsw i32 4, %conv9
  %add11 = add nsw i32 %mul10, 0
  %idxprom12 = sext i32 %add11 to i64
  %8 = load i8*, i8** %w.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i64 %idxprom12
  store i8 %6, i8* %arrayidx13, align 1
  %9 = load i8, i8* %i, align 1
  %conv14 = zext i8 %9 to i32
  %mul15 = mul nsw i32 4, %conv14
  %add16 = add nsw i32 %mul15, 1
  %idxprom17 = sext i32 %add16 to i64
  %10 = load i8*, i8** %key.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %10, i64 %idxprom17
  %11 = load i8, i8* %arrayidx18, align 1
  %12 = load i8, i8* %i, align 1
  %conv19 = zext i8 %12 to i32
  %mul20 = mul nsw i32 4, %conv19
  %add21 = add nsw i32 %mul20, 1
  %idxprom22 = sext i32 %add21 to i64
  %13 = load i8*, i8** %w.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %13, i64 %idxprom22
  store i8 %11, i8* %arrayidx23, align 1
  %14 = load i8, i8* %i, align 1
  %conv24 = zext i8 %14 to i32
  %mul25 = mul nsw i32 4, %conv24
  %add26 = add nsw i32 %mul25, 2
  %idxprom27 = sext i32 %add26 to i64
  %15 = load i8*, i8** %key.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %15, i64 %idxprom27
  %16 = load i8, i8* %arrayidx28, align 1
  %17 = load i8, i8* %i, align 1
  %conv29 = zext i8 %17 to i32
  %mul30 = mul nsw i32 4, %conv29
  %add31 = add nsw i32 %mul30, 2
  %idxprom32 = sext i32 %add31 to i64
  %18 = load i8*, i8** %w.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 %idxprom32
  store i8 %16, i8* %arrayidx33, align 1
  %19 = load i8, i8* %i, align 1
  %conv34 = zext i8 %19 to i32
  %mul35 = mul nsw i32 4, %conv34
  %add36 = add nsw i32 %mul35, 3
  %idxprom37 = sext i32 %add36 to i64
  %20 = load i8*, i8** %key.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %20, i64 %idxprom37
  %21 = load i8, i8* %arrayidx38, align 1
  %22 = load i8, i8* %i, align 1
  %conv39 = zext i8 %22 to i32
  %mul40 = mul nsw i32 4, %conv39
  %add41 = add nsw i32 %mul40, 3
  %idxprom42 = sext i32 %add41 to i64
  %23 = load i8*, i8** %w.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %23, i64 %idxprom42
  store i8 %21, i8* %arrayidx43, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i8, i8* %i, align 1
  %inc = add i8 %24, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* @Nk, align 4
  %conv44 = trunc i32 %25 to i8
  store i8 %conv44, i8* %i, align 1
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc158, %for.end
  %26 = load i8, i8* %i, align 1
  %conv46 = zext i8 %26 to i32
  %27 = load i8, i8* %len, align 1
  %conv47 = zext i8 %27 to i32
  %cmp48 = icmp slt i32 %conv46, %conv47
  br i1 %cmp48, label %for.body50, label %for.end160

for.body50:                                       ; preds = %for.cond45
  %28 = load i8, i8* %i, align 1
  %conv51 = zext i8 %28 to i32
  %sub = sub nsw i32 %conv51, 1
  %mul52 = mul nsw i32 4, %sub
  %add53 = add nsw i32 %mul52, 0
  %idxprom54 = sext i32 %add53 to i64
  %29 = load i8*, i8** %w.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %29, i64 %idxprom54
  %30 = load i8, i8* %arrayidx55, align 1
  %arrayidx56 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 0
  store i8 %30, i8* %arrayidx56, align 1
  %31 = load i8, i8* %i, align 1
  %conv57 = zext i8 %31 to i32
  %sub58 = sub nsw i32 %conv57, 1
  %mul59 = mul nsw i32 4, %sub58
  %add60 = add nsw i32 %mul59, 1
  %idxprom61 = sext i32 %add60 to i64
  %32 = load i8*, i8** %w.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %32, i64 %idxprom61
  %33 = load i8, i8* %arrayidx62, align 1
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 1
  store i8 %33, i8* %arrayidx63, align 1
  %34 = load i8, i8* %i, align 1
  %conv64 = zext i8 %34 to i32
  %sub65 = sub nsw i32 %conv64, 1
  %mul66 = mul nsw i32 4, %sub65
  %add67 = add nsw i32 %mul66, 2
  %idxprom68 = sext i32 %add67 to i64
  %35 = load i8*, i8** %w.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %35, i64 %idxprom68
  %36 = load i8, i8* %arrayidx69, align 1
  %arrayidx70 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 2
  store i8 %36, i8* %arrayidx70, align 1
  %37 = load i8, i8* %i, align 1
  %conv71 = zext i8 %37 to i32
  %sub72 = sub nsw i32 %conv71, 1
  %mul73 = mul nsw i32 4, %sub72
  %add74 = add nsw i32 %mul73, 3
  %idxprom75 = sext i32 %add74 to i64
  %38 = load i8*, i8** %w.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %38, i64 %idxprom75
  %39 = load i8, i8* %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 3
  store i8 %39, i8* %arrayidx77, align 1
  %40 = load i8, i8* %i, align 1
  %conv78 = zext i8 %40 to i32
  %41 = load i32, i32* @Nk, align 4
  %rem = srem i32 %conv78, %41
  %cmp79 = icmp eq i32 %rem, 0
  br i1 %cmp79, label %if.then, label %if.else

if.then:                                          ; preds = %for.body50
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  call void @rot_word(i8* %arraydecay)
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  call void @sub_word(i8* %arraydecay81)
  %arraydecay82 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  %42 = load i8, i8* %i, align 1
  %conv83 = zext i8 %42 to i32
  %43 = load i32, i32* @Nk, align 4
  %div = sdiv i32 %conv83, %43
  %conv84 = trunc i32 %div to i8
  %call = call i8* @Rcon(i8 zeroext %conv84)
  %arraydecay85 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  call void @coef_add(i8* %arraydecay82, i8* %call, i8* %arraydecay85)
  br label %if.end94

if.else:                                          ; preds = %for.body50
  %44 = load i32, i32* @Nk, align 4
  %cmp86 = icmp sgt i32 %44, 6
  br i1 %cmp86, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %45 = load i8, i8* %i, align 1
  %conv88 = zext i8 %45 to i32
  %46 = load i32, i32* @Nk, align 4
  %rem89 = srem i32 %conv88, %46
  %cmp90 = icmp eq i32 %rem89, 4
  br i1 %cmp90, label %if.then92, label %if.end

if.then92:                                        ; preds = %land.lhs.true
  %arraydecay93 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i32 0, i32 0
  call void @sub_word(i8* %arraydecay93)
  br label %if.end

if.end:                                           ; preds = %if.then92, %land.lhs.true, %if.else
  br label %if.end94

if.end94:                                         ; preds = %if.end, %if.then
  %47 = load i8, i8* %i, align 1
  %conv95 = zext i8 %47 to i32
  %48 = load i32, i32* @Nk, align 4
  %sub96 = sub nsw i32 %conv95, %48
  %mul97 = mul nsw i32 4, %sub96
  %add98 = add nsw i32 %mul97, 0
  %idxprom99 = sext i32 %add98 to i64
  %49 = load i8*, i8** %w.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %49, i64 %idxprom99
  %50 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %50 to i32
  %arrayidx102 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 0
  %51 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %51 to i32
  %xor = xor i32 %conv101, %conv103
  %conv104 = trunc i32 %xor to i8
  %52 = load i8, i8* %i, align 1
  %conv105 = zext i8 %52 to i32
  %mul106 = mul nsw i32 4, %conv105
  %add107 = add nsw i32 %mul106, 0
  %idxprom108 = sext i32 %add107 to i64
  %53 = load i8*, i8** %w.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %53, i64 %idxprom108
  store i8 %conv104, i8* %arrayidx109, align 1
  %54 = load i8, i8* %i, align 1
  %conv110 = zext i8 %54 to i32
  %55 = load i32, i32* @Nk, align 4
  %sub111 = sub nsw i32 %conv110, %55
  %mul112 = mul nsw i32 4, %sub111
  %add113 = add nsw i32 %mul112, 1
  %idxprom114 = sext i32 %add113 to i64
  %56 = load i8*, i8** %w.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %56, i64 %idxprom114
  %57 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %57 to i32
  %arrayidx117 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 1
  %58 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %58 to i32
  %xor119 = xor i32 %conv116, %conv118
  %conv120 = trunc i32 %xor119 to i8
  %59 = load i8, i8* %i, align 1
  %conv121 = zext i8 %59 to i32
  %mul122 = mul nsw i32 4, %conv121
  %add123 = add nsw i32 %mul122, 1
  %idxprom124 = sext i32 %add123 to i64
  %60 = load i8*, i8** %w.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %60, i64 %idxprom124
  store i8 %conv120, i8* %arrayidx125, align 1
  %61 = load i8, i8* %i, align 1
  %conv126 = zext i8 %61 to i32
  %62 = load i32, i32* @Nk, align 4
  %sub127 = sub nsw i32 %conv126, %62
  %mul128 = mul nsw i32 4, %sub127
  %add129 = add nsw i32 %mul128, 2
  %idxprom130 = sext i32 %add129 to i64
  %63 = load i8*, i8** %w.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %63, i64 %idxprom130
  %64 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %64 to i32
  %arrayidx133 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 2
  %65 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %65 to i32
  %xor135 = xor i32 %conv132, %conv134
  %conv136 = trunc i32 %xor135 to i8
  %66 = load i8, i8* %i, align 1
  %conv137 = zext i8 %66 to i32
  %mul138 = mul nsw i32 4, %conv137
  %add139 = add nsw i32 %mul138, 2
  %idxprom140 = sext i32 %add139 to i64
  %67 = load i8*, i8** %w.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %67, i64 %idxprom140
  store i8 %conv136, i8* %arrayidx141, align 1
  %68 = load i8, i8* %i, align 1
  %conv142 = zext i8 %68 to i32
  %69 = load i32, i32* @Nk, align 4
  %sub143 = sub nsw i32 %conv142, %69
  %mul144 = mul nsw i32 4, %sub143
  %add145 = add nsw i32 %mul144, 3
  %idxprom146 = sext i32 %add145 to i64
  %70 = load i8*, i8** %w.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %70, i64 %idxprom146
  %71 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %71 to i32
  %arrayidx149 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp, i64 0, i64 3
  %72 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %72 to i32
  %xor151 = xor i32 %conv148, %conv150
  %conv152 = trunc i32 %xor151 to i8
  %73 = load i8, i8* %i, align 1
  %conv153 = zext i8 %73 to i32
  %mul154 = mul nsw i32 4, %conv153
  %add155 = add nsw i32 %mul154, 3
  %idxprom156 = sext i32 %add155 to i64
  %74 = load i8*, i8** %w.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %74, i64 %idxprom156
  store i8 %conv152, i8* %arrayidx157, align 1
  br label %for.inc158

for.inc158:                                       ; preds = %if.end94
  %75 = load i8, i8* %i, align 1
  %inc159 = add i8 %75, 1
  store i8 %inc159, i8* %i, align 1
  br label %for.cond45

for.end160:                                       ; preds = %for.cond45
  ret void
}

; Function Attrs: nounwind uwtable
define void @cipher(i8* %in, i8* %out, i8* %w) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %w.addr = alloca i8*, align 8
  %saved_stack = alloca i8*, align 8
  %r = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i8* %w, i8** %w.addr, align 8
  %0 = load i32, i32* @Nb, align 4
  %mul = mul nsw i32 4, %0
  %1 = zext i32 %mul to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 16
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %3 = load i8, i8* %i, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i8, i8* %j, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load i32, i32* @Nb, align 4
  %cmp4 = icmp slt i32 %conv3, %5
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %6 = load i8, i8* %i, align 1
  %conv7 = zext i8 %6 to i32
  %7 = load i8, i8* %j, align 1
  %conv8 = zext i8 %7 to i32
  %mul9 = mul nsw i32 4, %conv8
  %add = add nsw i32 %conv7, %mul9
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** %in.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i32, i32* @Nb, align 4
  %11 = load i8, i8* %i, align 1
  %conv10 = zext i8 %11 to i32
  %mul11 = mul nsw i32 %10, %conv10
  %12 = load i8, i8* %j, align 1
  %conv12 = zext i8 %12 to i32
  %add13 = add nsw i32 %mul11, %conv12
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %vla, i64 %idxprom14
  store i8 %9, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %13 = load i8, i8* %j, align 1
  %inc = add i8 %13, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %14 = load i8, i8* %i, align 1
  %inc17 = add i8 %14, 1
  store i8 %inc17, i8* %i, align 1
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  %15 = load i8*, i8** %w.addr, align 8
  call void @add_round_key(i8* %vla, i8* %15, i8 zeroext 0)
  store i8 1, i8* %r, align 1
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc24, %for.end18
  %16 = load i8, i8* %r, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32, i32* @Nr, align 4
  %cmp21 = icmp slt i32 %conv20, %17
  br i1 %cmp21, label %for.body23, label %for.end26

for.body23:                                       ; preds = %for.cond19
  call void @sub_bytes(i8* %vla)
  call void @shift_rows(i8* %vla)
  call void @mix_columns(i8* %vla)
  %18 = load i8*, i8** %w.addr, align 8
  %19 = load i8, i8* %r, align 1
  call void @add_round_key(i8* %vla, i8* %18, i8 zeroext %19)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body23
  %20 = load i8, i8* %r, align 1
  %inc25 = add i8 %20, 1
  store i8 %inc25, i8* %r, align 1
  br label %for.cond19

for.end26:                                        ; preds = %for.cond19
  call void @sub_bytes(i8* %vla)
  call void @shift_rows(i8* %vla)
  %21 = load i8*, i8** %w.addr, align 8
  %22 = load i32, i32* @Nr, align 4
  %conv27 = trunc i32 %22 to i8
  call void @add_round_key(i8* %vla, i8* %21, i8 zeroext %conv27)
  store i8 0, i8* %i, align 1
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc53, %for.end26
  %23 = load i8, i8* %i, align 1
  %conv29 = zext i8 %23 to i32
  %cmp30 = icmp slt i32 %conv29, 4
  br i1 %cmp30, label %for.body32, label %for.end55

for.body32:                                       ; preds = %for.cond28
  store i8 0, i8* %j, align 1
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc50, %for.body32
  %24 = load i8, i8* %j, align 1
  %conv34 = zext i8 %24 to i32
  %25 = load i32, i32* @Nb, align 4
  %cmp35 = icmp slt i32 %conv34, %25
  br i1 %cmp35, label %for.body37, label %for.end52

for.body37:                                       ; preds = %for.cond33
  %26 = load i32, i32* @Nb, align 4
  %27 = load i8, i8* %i, align 1
  %conv38 = zext i8 %27 to i32
  %mul39 = mul nsw i32 %26, %conv38
  %28 = load i8, i8* %j, align 1
  %conv40 = zext i8 %28 to i32
  %add41 = add nsw i32 %mul39, %conv40
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %vla, i64 %idxprom42
  %29 = load i8, i8* %arrayidx43, align 1
  %30 = load i8, i8* %i, align 1
  %conv44 = zext i8 %30 to i32
  %31 = load i8, i8* %j, align 1
  %conv45 = zext i8 %31 to i32
  %mul46 = mul nsw i32 4, %conv45
  %add47 = add nsw i32 %conv44, %mul46
  %idxprom48 = sext i32 %add47 to i64
  %32 = load i8*, i8** %out.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %32, i64 %idxprom48
  store i8 %29, i8* %arrayidx49, align 1
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37
  %33 = load i8, i8* %j, align 1
  %inc51 = add i8 %33, 1
  store i8 %inc51, i8* %j, align 1
  br label %for.cond33

for.end52:                                        ; preds = %for.cond33
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %34 = load i8, i8* %i, align 1
  %inc54 = add i8 %34, 1
  store i8 %inc54, i8* %i, align 1
  br label %for.cond28

for.end55:                                        ; preds = %for.cond28
  %35 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind uwtable
define void @inv_cipher(i8* %in, i8* %out, i8* %w) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %w.addr = alloca i8*, align 8
  %saved_stack = alloca i8*, align 8
  %r = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i8* %w, i8** %w.addr, align 8
  %0 = load i32, i32* @Nb, align 4
  %mul = mul nsw i32 4, %0
  %1 = zext i32 %mul to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 16
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %3 = load i8, i8* %i, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %j, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i8, i8* %j, align 1
  %conv3 = zext i8 %4 to i32
  %5 = load i32, i32* @Nb, align 4
  %cmp4 = icmp slt i32 %conv3, %5
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %6 = load i8, i8* %i, align 1
  %conv7 = zext i8 %6 to i32
  %7 = load i8, i8* %j, align 1
  %conv8 = zext i8 %7 to i32
  %mul9 = mul nsw i32 4, %conv8
  %add = add nsw i32 %conv7, %mul9
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** %in.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i32, i32* @Nb, align 4
  %11 = load i8, i8* %i, align 1
  %conv10 = zext i8 %11 to i32
  %mul11 = mul nsw i32 %10, %conv10
  %12 = load i8, i8* %j, align 1
  %conv12 = zext i8 %12 to i32
  %add13 = add nsw i32 %mul11, %conv12
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %vla, i64 %idxprom14
  store i8 %9, i8* %arrayidx15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %13 = load i8, i8* %j, align 1
  %inc = add i8 %13, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %14 = load i8, i8* %i, align 1
  %inc17 = add i8 %14, 1
  store i8 %inc17, i8* %i, align 1
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  %15 = load i8*, i8** %w.addr, align 8
  %16 = load i32, i32* @Nr, align 4
  %conv19 = trunc i32 %16 to i8
  call void @add_round_key(i8* %vla, i8* %15, i8 zeroext %conv19)
  %17 = load i32, i32* @Nr, align 4
  %sub = sub nsw i32 %17, 1
  %conv20 = trunc i32 %sub to i8
  store i8 %conv20, i8* %r, align 1
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc26, %for.end18
  %18 = load i8, i8* %r, align 1
  %conv22 = zext i8 %18 to i32
  %cmp23 = icmp sge i32 %conv22, 1
  br i1 %cmp23, label %for.body25, label %for.end27

for.body25:                                       ; preds = %for.cond21
  call void @inv_shift_rows(i8* %vla)
  call void @inv_sub_bytes(i8* %vla)
  %19 = load i8*, i8** %w.addr, align 8
  %20 = load i8, i8* %r, align 1
  call void @add_round_key(i8* %vla, i8* %19, i8 zeroext %20)
  call void @inv_mix_columns(i8* %vla)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body25
  %21 = load i8, i8* %r, align 1
  %dec = add i8 %21, -1
  store i8 %dec, i8* %r, align 1
  br label %for.cond21

for.end27:                                        ; preds = %for.cond21
  call void @inv_shift_rows(i8* %vla)
  call void @inv_sub_bytes(i8* %vla)
  %22 = load i8*, i8** %w.addr, align 8
  call void @add_round_key(i8* %vla, i8* %22, i8 zeroext 0)
  store i8 0, i8* %i, align 1
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc53, %for.end27
  %23 = load i8, i8* %i, align 1
  %conv29 = zext i8 %23 to i32
  %cmp30 = icmp slt i32 %conv29, 4
  br i1 %cmp30, label %for.body32, label %for.end55

for.body32:                                       ; preds = %for.cond28
  store i8 0, i8* %j, align 1
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc50, %for.body32
  %24 = load i8, i8* %j, align 1
  %conv34 = zext i8 %24 to i32
  %25 = load i32, i32* @Nb, align 4
  %cmp35 = icmp slt i32 %conv34, %25
  br i1 %cmp35, label %for.body37, label %for.end52

for.body37:                                       ; preds = %for.cond33
  %26 = load i32, i32* @Nb, align 4
  %27 = load i8, i8* %i, align 1
  %conv38 = zext i8 %27 to i32
  %mul39 = mul nsw i32 %26, %conv38
  %28 = load i8, i8* %j, align 1
  %conv40 = zext i8 %28 to i32
  %add41 = add nsw i32 %mul39, %conv40
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %vla, i64 %idxprom42
  %29 = load i8, i8* %arrayidx43, align 1
  %30 = load i8, i8* %i, align 1
  %conv44 = zext i8 %30 to i32
  %31 = load i8, i8* %j, align 1
  %conv45 = zext i8 %31 to i32
  %mul46 = mul nsw i32 4, %conv45
  %add47 = add nsw i32 %conv44, %mul46
  %idxprom48 = sext i32 %add47 to i64
  %32 = load i8*, i8** %out.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %32, i64 %idxprom48
  store i8 %29, i8* %arrayidx49, align 1
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37
  %33 = load i8, i8* %j, align 1
  %inc51 = add i8 %33, 1
  store i8 %inc51, i8* %j, align 1
  br label %for.cond33

for.end52:                                        ; preds = %for.cond33
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %34 = load i8, i8* %i, align 1
  %inc54 = add i8 %34, 1
  store i8 %inc54, i8* %i, align 1
  br label %for.cond28

for.end55:                                        ; preds = %for.cond28
  %35 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i8, align 1
  %key = alloca [32 x i8], align 16
  %in = alloca [16 x i8], align 16
  %out = alloca [16 x i8], align 16
  %w = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [32 x i8]* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.key, i32 0, i32 0), i64 32, i32 16, i1 false)
  %1 = bitcast [16 x i8]* %in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @main.in, i32 0, i32 0), i64 16, i32 16, i1 false)
  store i32 8, i32* @Nk, align 4
  store i32 14, i32* @Nr, align 4
  %2 = load i32, i32* @Nb, align 4
  %3 = load i32, i32* @Nr, align 4
  %add = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add
  %mul1 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @malloc(i64 %conv) #2
  store i8* %call, i8** %w, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %4 = load i8*, i8** %w, align 8
  call void @key_expansion(i8* %arraydecay, i8* %4)
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i32 0, i32 0
  %5 = load i8*, i8** %w, align 8
  call void @cipher(i8* %arraydecay2, i8* %arraydecay3, i8* %5)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i8, i8* %i, align 1
  %conv5 = zext i8 %6 to i32
  %cmp = icmp slt i32 %conv5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8, i8* %i, align 1
  %conv7 = zext i8 %7 to i32
  %mul8 = mul nsw i32 4, %conv7
  %add9 = add nsw i32 %mul8, 0
  %idxprom = sext i32 %add9 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %8 to i32
  %9 = load i8, i8* %i, align 1
  %conv11 = zext i8 %9 to i32
  %mul12 = mul nsw i32 4, %conv11
  %add13 = add nsw i32 %mul12, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 %idxprom14
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %10 to i32
  %11 = load i8, i8* %i, align 1
  %conv17 = zext i8 %11 to i32
  %mul18 = mul nsw i32 4, %conv17
  %add19 = add nsw i32 %mul18, 2
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 %idxprom20
  %12 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %12 to i32
  %13 = load i8, i8* %i, align 1
  %conv23 = zext i8 %13 to i32
  %mul24 = mul nsw i32 4, %conv23
  %add25 = add nsw i32 %mul24, 3
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 %idxprom26
  %14 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %14 to i32
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %conv10, i32 %conv16, i32 %conv22, i32 %conv28)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8, i8* %i, align 1
  %inc = add i8 %15, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i32 0, i32 0
  %16 = load i8*, i8** %w, align 8
  call void @inv_cipher(i8* %arraydecay31, i8* %arraydecay32, i8* %16)
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i8 0, i8* %i, align 1
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc64, %for.end
  %17 = load i8, i8* %i, align 1
  %conv35 = zext i8 %17 to i32
  %cmp36 = icmp slt i32 %conv35, 4
  br i1 %cmp36, label %for.body38, label %for.end66

for.body38:                                       ; preds = %for.cond34
  %18 = load i8, i8* %i, align 1
  %conv39 = zext i8 %18 to i32
  %mul40 = mul nsw i32 4, %conv39
  %add41 = add nsw i32 %mul40, 0
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i64 0, i64 %idxprom42
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %20 = load i8, i8* %i, align 1
  %conv45 = zext i8 %20 to i32
  %mul46 = mul nsw i32 4, %conv45
  %add47 = add nsw i32 %mul46, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i64 0, i64 %idxprom48
  %21 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %21 to i32
  %22 = load i8, i8* %i, align 1
  %conv51 = zext i8 %22 to i32
  %mul52 = mul nsw i32 4, %conv51
  %add53 = add nsw i32 %mul52, 2
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i64 0, i64 %idxprom54
  %23 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %23 to i32
  %24 = load i8, i8* %i, align 1
  %conv57 = zext i8 %24 to i32
  %mul58 = mul nsw i32 4, %conv57
  %add59 = add nsw i32 %mul58, 3
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i64 0, i64 %idxprom60
  %25 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %25 to i32
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %conv44, i32 %conv50, i32 %conv56, i32 %conv62)
  br label %for.inc64

for.inc64:                                        ; preds = %for.body38
  %26 = load i8, i8* %i, align 1
  %inc65 = add i8 %26, 1
  store i8 %inc65, i8* %i, align 1
  br label %for.cond34

for.end66:                                        ; preds = %for.cond34
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

return:                                           ; No predecessors!
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Symbolic Obfuscator clang version 3.9.0 (tags/RELEASE_390/final) (based on LLVM 3.9.0)"}
