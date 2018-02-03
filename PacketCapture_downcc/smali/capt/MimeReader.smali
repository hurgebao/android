.class public final Lcapt/MimeReader;
.super Ljava/lang/Object;
.source "mimeheader.kt"


# instance fields
.field private eof:Z

.field private prev:Ljava/lang/String;

.field private final r:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "r"    # Ljava/io/InputStream;

    .prologue
    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcapt/MimeReader;->r:Ljava/io/InputStream;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final readContinuedLine()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 42
    iget-boolean v3, p0, Lcapt/MimeReader;->eof:Z

    if-eqz v3, :cond_1

    .line 43
    const-string v2, ""

    .line 72
    :goto_0
    return-object v2

    .line 59
    .local v0, "line":[B
    .local v1, "lineStr":Ljava/lang/String;
    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "lineStr":Ljava/lang/String;
    invoke-static {v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "\r\n"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v5, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    .line 45
    .end local v0    # "line":[B
    :cond_1
    :goto_1
    iget-object v3, p0, Lcapt/MimeReader;->r:Ljava/io/InputStream;

    invoke-static {v3}, Lcapt/InputstreamKt;->readLine(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 47
    .restart local v0    # "line":[B
    if-nez v0, :cond_3

    .line 70
    :cond_2
    :goto_2
    iget-object v4, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    const-string v3, "\r\n"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "ret":Ljava/lang/String;
    const-string v3, ""

    iput-object v3, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    goto :goto_0

    .line 50
    .end local v2    # "ret":Ljava/lang/String;
    :cond_3
    array-length v3, v0

    if-eqz v3, :cond_2

    .line 53
    new-instance v4, Ljava/lang/String;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, "\r\n"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .restart local v1    # "lineStr":Ljava/lang/String;
    const-string v3, ""

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcapt/MimeReader;->eof:Z

    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    .line 59
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_6
    iget-object v3, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 62
    iput-object v1, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_7
    iget-object v2, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    .line 65
    .restart local v2    # "ret":Ljava/lang/String;
    iput-object v1, p0, Lcapt/MimeReader;->prev:Ljava/lang/String;

    goto/16 :goto_0
.end method
