.class public final Lui/decode/RetainedFragment;
.super Landroid/support/v4/app/Fragment;
.source "DecodeFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/decode/RetainedFragment$Task;,
        Lui/decode/RetainedFragment$Listener;,
        Lui/decode/RetainedFragment$State;,
        Lui/decode/RetainedFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lui/decode/RetainedFragment$Companion;


# instance fields
.field private decodedV1File:Ljava/io/File;

.field private error:Ljava/lang/Exception;

.field private final fileDir$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final handler:Landroid/os/Handler;

.field private headerStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lui/decode/RetainedFragment$Listener;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lui/decode/RetainedFragment$Task;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lui/decode/RetainedFragment$State;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lui/decode/RetainedFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/decode/RetainedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/decode/RetainedFragment;->Companion:Lui/decode/RetainedFragment$Companion;

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lui/decode/RetainedFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "fileDir"

    const-string v5, "getFileDir()Ljava/io/File;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lui/decode/RetainedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 188
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lui/decode/RetainedFragment;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 189
    new-instance v1, Ljava/lang/Thread;

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lui/decode/RetainedFragment;->thread:Ljava/lang/Thread;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lui/decode/RetainedFragment;->handler:Landroid/os/Handler;

    .line 204
    sget-object v0, Lui/decode/RetainedFragment$State;->STATE_DECODING:Lui/decode/RetainedFragment$State;

    iput-object v0, p0, Lui/decode/RetainedFragment;->state:Lui/decode/RetainedFragment$State;

    .line 213
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lui/decode/RetainedFragment;->fileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getState$p(Lui/decode/RetainedFragment;)Lui/decode/RetainedFragment$State;
    .locals 1
    .param p0, "$this"    # Lui/decode/RetainedFragment;

    .prologue
    .line 177
    iget-object v0, p0, Lui/decode/RetainedFragment;->state:Lui/decode/RetainedFragment$State;

    return-object v0
.end method

.method public static final synthetic access$setError$p(Lui/decode/RetainedFragment;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "$this"    # Lui/decode/RetainedFragment;
    .param p1, "<set-?>"    # Ljava/lang/Exception;

    .prologue
    .line 177
    iput-object p1, p0, Lui/decode/RetainedFragment;->error:Ljava/lang/Exception;

    return-void
.end method

.method public static final synthetic access$setState$p(Lui/decode/RetainedFragment;Lui/decode/RetainedFragment$State;)V
    .locals 0
    .param p0, "$this"    # Lui/decode/RetainedFragment;
    .param p1, "<set-?>"    # Lui/decode/RetainedFragment$State;

    .prologue
    .line 177
    iput-object p1, p0, Lui/decode/RetainedFragment;->state:Lui/decode/RetainedFragment$State;

    return-void
.end method

.method private final deliverDecodeResult(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 2
    .param p1, "headers"    # Ljava/util/ArrayList;
    .param p2, "v1File"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Lui/decode/RetainedFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lui/decode/RetainedFragment$deliverDecodeResult$1;

    invoke-direct {v0, p0, p2, p1}, Lui/decode/RetainedFragment$deliverDecodeResult$1;-><init>(Lui/decode/RetainedFragment;Ljava/io/File;Ljava/util/ArrayList;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method

.method private final deliverDecoding()V
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Lui/decode/RetainedFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lui/decode/RetainedFragment$deliverDecoding$1;

    invoke-direct {v0, p0}, Lui/decode/RetainedFragment$deliverDecoding$1;-><init>(Lui/decode/RetainedFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method private final deliverError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 299
    iget-object v1, p0, Lui/decode/RetainedFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lui/decode/RetainedFragment$deliverError$1;

    invoke-direct {v0, p0, p1}, Lui/decode/RetainedFragment$deliverError$1;-><init>(Lui/decode/RetainedFragment;Ljava/lang/Exception;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method private final getFileDir()Ljava/io/File;
    .locals 3

    .prologue
    iget-object v0, p0, Lui/decode/RetainedFragment;->fileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/decode/RetainedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final setFileDir(Ljava/io/File;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/io/File;

    .prologue
    iget-object v0, p0, Lui/decode/RetainedFragment;->fileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lui/decode/RetainedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final stopDecoderThread()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lui/decode/RetainedFragment;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lui/decode/RetainedFragment$Task;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lui/decode/RetainedFragment$Task;-><init>(Lui/decode/DecodeArg;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method


# virtual methods
.method public final getDecodedV1File()Ljava/io/File;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lui/decode/RetainedFragment;->decodedV1File:Ljava/io/File;

    return-object v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lui/decode/RetainedFragment;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getHeaderStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lui/decode/RetainedFragment;->headerStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getListener()Lui/decode/RetainedFragment$Listener;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lui/decode/RetainedFragment;->listener:Lui/decode/RetainedFragment$Listener;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lui/decode/RetainedFragment;->setRetainInstance(Z)V

    .line 219
    invoke-virtual {p0}, Lui/decode/RetainedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "getActivity().getFilesDir()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lui/decode/RetainedFragment;->setFileDir(Ljava/io/File;)V

    .line 220
    iget-object v0, p0, Lui/decode/RetainedFragment;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 309
    invoke-direct {p0}, Lui/decode/RetainedFragment;->stopDecoderThread()V

    .line 310
    iget-object v0, p0, Lui/decode/RetainedFragment;->state:Lui/decode/RetainedFragment$State;

    sget-object v1, Lui/decode/RetainedFragment$State;->STATE_DECODED:Lui/decode/RetainedFragment$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lui/decode/RetainedFragment;->decodedV1File:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 312
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lui/decode/RetainedFragment;->decodedV1File:Ljava/io/File;

    .line 314
    :cond_1
    sget-object v0, Lui/decode/RetainedFragment$State;->STATE_DESTROY:Lui/decode/RetainedFragment$State;

    iput-object v0, p0, Lui/decode/RetainedFragment;->state:Lui/decode/RetainedFragment$State;

    .line 315
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 228
    :cond_0
    :goto_0
    iget-object v7, p0, Lui/decode/RetainedFragment;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lui/decode/RetainedFragment$Task;

    .line 231
    .local v6, "task":Lui/decode/RetainedFragment$Task;
    invoke-virtual {v6}, Lui/decode/RetainedFragment$Task;->getDecodeArg()Lui/decode/DecodeArg;

    move-result-object v7

    if-nez v7, :cond_1

    .line 264
    return-void

    .line 235
    :cond_1
    invoke-direct {p0}, Lui/decode/RetainedFragment;->deliverDecoding()V

    .line 237
    const/4 v2, 0x0

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 238
    .local v2, "file":Ljava/io/RandomAccessFile;
    nop

    .line 239
    :try_start_0
    const-string v7, "v1dat"

    const-string v8, "dat"

    invoke-direct {p0}, Lui/decode/RetainedFragment;->getFileDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 240
    .local v0, "decodedV1File":Ljava/io/File;
    const-string v7, "HTTP"

    invoke-virtual {v6}, Lui/decode/RetainedFragment$Task;->getDecodeArg()Lui/decode/DecodeArg;

    move-result-object v8

    invoke-virtual {v8}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "decodedV1File.getAbsolutePath()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lui/decode/RetainedFragment$Task;->getHeuristic()Z

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcapt/DecoderKt;->decodeAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Exception;

    .line 242
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v3, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .local v3, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    .local v5, "headers":Ljava/util/ArrayList;
    :goto_1
    nop

    .line 247
    :try_start_2
    invoke-static {v3}, Lcapt/V1parserKt;->readV1Header(Ljava/io/RandomAccessFile;)Lcapt/V1Header;

    move-result-object v4

    .line 248
    .local v4, "header":Lcapt/V1Header;
    new-instance v7, Lui/decode/V1HeaderState;

    invoke-direct {v7, v4}, Lui/decode/V1HeaderState;-><init>(Lcapt/V1Header;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "header="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcapt/V1Header;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 250
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 251
    .end local v4    # "header":Lcapt/V1Header;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/io/EOFException;
    :try_start_3
    const-string v7, "decodedV1File"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Lui/decode/RetainedFragment;->deliverDecodeResult(Ljava/util/ArrayList;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v2, v3

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 257
    .end local v0    # "decodedV1File":Ljava/io/File;
    .end local v1    # "e":Ljava/io/EOFException;
    .end local v5    # "headers":Ljava/util/ArrayList;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-direct {p0, v1}, Lui/decode/RetainedFragment;->deliverError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    throw v7

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "decodedV1File":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 257
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public final setDecodedV1File(Ljava/io/File;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/io/File;

    .prologue
    .line 212
    iput-object p1, p0, Lui/decode/RetainedFragment;->decodedV1File:Ljava/io/File;

    return-void
.end method

.method public final setHeaderStates(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lui/decode/V1HeaderState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lui/decode/RetainedFragment;->headerStates:Ljava/util/ArrayList;

    return-void
.end method

.method public final setListener(Lui/decode/RetainedFragment$Listener;)V
    .locals 1
    .param p1, "value"    # Lui/decode/RetainedFragment$Listener;

    .prologue
    .line 209
    iput-object p1, p0, Lui/decode/RetainedFragment;->listener:Lui/decode/RetainedFragment$Listener;

    .line 210
    if-eqz p1, :cond_0

    iget-object v0, p0, Lui/decode/RetainedFragment;->state:Lui/decode/RetainedFragment$State;

    invoke-interface {p1, v0}, Lui/decode/RetainedFragment$Listener;->onStateChanged(Lui/decode/RetainedFragment$State;)V

    .line 211
    :cond_0
    return-void
.end method

.method public final startDecoding(Lui/decode/DecodeArg;Z)V
    .locals 2
    .param p1, "decodeArg"    # Lui/decode/DecodeArg;
    .param p2, "heuristic"    # Z

    .prologue
    const-string v0, "decodeArg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lui/decode/RetainedFragment;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lui/decode/RetainedFragment$Task;

    invoke-direct {v1, p1, p2}, Lui/decode/RetainedFragment$Task;-><init>(Lui/decode/DecodeArg;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method
