.class public final Lcapt/CaptWriter;
.super Ljava/lang/Object;
.source "Capt.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private err:Z

.field private final file:Ljava/io/File;

.field private final fout$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final header:[B

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcapt/CaptWriter;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "fout"

    const-string v5, "getFout()Ljava/io/FileOutputStream;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lcapt/CaptWriter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-string v1, "file"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcapt/CaptWriter;->file:Ljava/io/File;

    .line 15
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcapt/CaptWriter;->lock:Ljava/lang/Object;

    .line 16
    sget-object v1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v1}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    iput-object v1, p0, Lcapt/CaptWriter;->fout$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 21
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcapt/CaptWriter;->header:[B

    .line 22
    nop

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcapt/CaptWriter;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcapt/CaptWriter;->setFout(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcapt/CaptWriter;->err:Z

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcapt/CaptWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    nop

    .line 95
    nop

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcapt/CaptWriter;->getFout()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcapt/CaptWriter;->err:Z

    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v1

    .line 101
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getFout()Ljava/io/FileOutputStream;
    .locals 3

    .prologue
    iget-object v0, p0, Lcapt/CaptWriter;->fout$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/CaptWriter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public final setFout(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/io/FileOutputStream;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcapt/CaptWriter;->fout$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/CaptWriter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final writeApp2Server([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    const/16 v7, 0x8

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, p0, Lcapt/CaptWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    nop

    .line 32
    :try_start_0
    iget-boolean v1, p0, Lcapt/CaptWriter;->err:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 33
    monitor-exit v4

    .line 59
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 36
    .local v2, "time":J
    nop

    .line 37
    :try_start_2
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x0

    long-to-int v6, v2

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 38
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x1

    ushr-long v6, v2, v7

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 39
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x2

    const/16 v6, 0x10

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 40
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x3

    const/16 v6, 0x18

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 41
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x4

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 42
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x5

    const/16 v6, 0x28

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 43
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x6

    const/16 v6, 0x30

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 44
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x7

    const/16 v6, 0x38

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 45
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0x8

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v6

    aput-byte v6, v1, v5

    .line 46
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 47
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 48
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 49
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xc

    int-to-byte v6, p3

    aput-byte v6, v1, v5

    .line 50
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xd

    ushr-int/lit8 v6, p3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 51
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xe

    ushr-int/lit8 v6, p3, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 52
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xf

    ushr-int/lit8 v6, p3, 0x18

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 53
    invoke-virtual {p0}, Lcapt/CaptWriter;->getFout()Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v5, p0, Lcapt/CaptWriter;->header:[B

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    invoke-virtual {p0}, Lcapt/CaptWriter;->getFout()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_1
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    monitor-exit v4

    goto/16 :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcapt/CaptWriter;->err:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public final writeServer2App([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    const/16 v7, 0x8

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcapt/CaptWriter;->lock:Ljava/lang/Object;

    monitor-enter v4

    nop

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lcapt/CaptWriter;->err:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    monitor-exit v4

    .line 91
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 68
    .local v2, "time":J
    nop

    .line 69
    :try_start_2
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x0

    long-to-int v6, v2

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 70
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x1

    ushr-long v6, v2, v7

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 71
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x2

    const/16 v6, 0x10

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 72
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x3

    const/16 v6, 0x18

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 73
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x4

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 74
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x5

    const/16 v6, 0x28

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 75
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x6

    const/16 v6, 0x30

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 76
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/4 v5, 0x7

    const/16 v6, 0x38

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 77
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0x8

    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v6

    aput-byte v6, v1, v5

    .line 78
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 79
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 80
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 81
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xc

    int-to-byte v6, p3

    aput-byte v6, v1, v5

    .line 82
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xd

    ushr-int/lit8 v6, p3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 83
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xe

    ushr-int/lit8 v6, p3, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 84
    iget-object v1, p0, Lcapt/CaptWriter;->header:[B

    const/16 v5, 0xf

    ushr-int/lit8 v6, p3, 0x18

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 85
    invoke-virtual {p0}, Lcapt/CaptWriter;->getFout()Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v5, p0, Lcapt/CaptWriter;->header:[B

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 86
    invoke-virtual {p0}, Lcapt/CaptWriter;->getFout()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :goto_1
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit v4

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcapt/CaptWriter;->err:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method
