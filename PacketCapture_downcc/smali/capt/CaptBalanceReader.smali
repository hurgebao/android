.class public final Lcapt/CaptBalanceReader;
.super Ljava/lang/Object;
.source "CaptBalanceReader.kt"


# instance fields
.field private final a2s:Lcapt/CaptInputStream;

.field private final file:Ljava/io/RandomAccessFile;

.field private final s2a:Lcapt/CaptInputStream;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 8
    .param p1, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    const-string v4, "file"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcapt/CaptBalanceReader;->file:Ljava/io/RandomAccessFile;

    .line 13
    iget-object v4, p0, Lcapt/CaptBalanceReader;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    iget-object v4, p0, Lcapt/CaptBalanceReader;->file:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lcapt/CaptKt;->readCaptHeaders(Ljava/io/RandomAccessFile;)Ljava/util/ArrayList;

    move-result-object v2

    .line 15
    .local v2, "headers":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "a2sList":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v3, "s2aList":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcapt/CaptHeader;

    .line 18
    .local v1, "header":Lcapt/CaptHeader;
    invoke-virtual {v1}, Lcapt/CaptHeader;->getDir()I

    move-result v5

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v6

    if-ne v5, v6, :cond_0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    .end local v1    # "header":Lcapt/CaptHeader;
    :cond_1
    new-instance v4, Lcapt/CaptInputStream;

    iget-object v5, p0, Lcapt/CaptBalanceReader;->file:Ljava/io/RandomAccessFile;

    invoke-direct {v4, v0, v5}, Lcapt/CaptInputStream;-><init>(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V

    iput-object v4, p0, Lcapt/CaptBalanceReader;->a2s:Lcapt/CaptInputStream;

    .line 26
    new-instance v4, Lcapt/CaptInputStream;

    iget-object v5, p0, Lcapt/CaptBalanceReader;->file:Ljava/io/RandomAccessFile;

    invoke-direct {v4, v3, v5}, Lcapt/CaptInputStream;-><init>(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V

    iput-object v4, p0, Lcapt/CaptBalanceReader;->s2a:Lcapt/CaptInputStream;

    return-void
.end method


# virtual methods
.method public final getA2s()Lcapt/CaptInputStream;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcapt/CaptBalanceReader;->a2s:Lcapt/CaptInputStream;

    return-object v0
.end method

.method public final getNextDir()I
    .locals 8

    .prologue
    .line 41
    iget-object v2, p0, Lcapt/CaptBalanceReader;->a2s:Lcapt/CaptInputStream;

    invoke-virtual {v2}, Lcapt/CaptInputStream;->getCurrentHeader()Lcapt/CaptHeader;

    move-result-object v0

    .line 42
    .local v0, "h1":Lcapt/CaptHeader;
    iget-object v2, p0, Lcapt/CaptBalanceReader;->s2a:Lcapt/CaptInputStream;

    invoke-virtual {v2}, Lcapt/CaptInputStream;->getCurrentHeader()Lcapt/CaptHeader;

    move-result-object v1

    .line 43
    .local v1, "h2":Lcapt/CaptHeader;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 44
    const/4 v2, -0x1

    .line 56
    :goto_0
    return v2

    .line 46
    :cond_0
    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v2

    goto :goto_0

    .line 49
    :cond_1
    if-nez v1, :cond_2

    .line 50
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v2

    goto :goto_0

    .line 52
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "getNextDir. h1.time=%d, h2.time=%d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 53
    invoke-virtual {v0}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcapt/CaptHeader;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 54
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v2

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v2

    goto :goto_0
.end method

.method public final getS2a()Lcapt/CaptInputStream;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcapt/CaptBalanceReader;->s2a:Lcapt/CaptInputStream;

    return-object v0
.end method
