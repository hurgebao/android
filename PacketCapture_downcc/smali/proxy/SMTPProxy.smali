.class public final Lproxy/SMTPProxy;
.super Ljava/lang/Object;
.source "SMTPProxy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproxy/SMTPProxy$OnSSLProxyEventListener;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private captWriter:Lcapt/CaptWriter;

.field private final captureFile:Ljava/io/File;

.field private clientSock:Ljava/net/Socket;

.field private clientSslSock:Ljava/net/Socket;

.field private mAppIn:Ljava/io/InputStream;

.field private mAppOut:Ljava/io/OutputStream;

.field private final mConnectRunnable:Lproxy/SMTPProxy$mConnectRunnable$1;

.field private mConnectThread:Ljava/lang/Thread;

.field private final mListener$delegate:Lkotlin/properties/ReadWriteProperty;

.field private mOriginIn:Ljava/io/InputStream;

.field private mOriginOut:Ljava/io/OutputStream;

.field private final mOriginPort:I

.field private final mOriginServer:Ljava/lang/String;

.field private final mProtector:Lapp/ssldecryptor/SockProtector;

.field private serverAcceptedSocket:Ljava/net/Socket;

.field private serverSock:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lproxy/SMTPProxy;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "mListener"

    const-string v5, "getMListener()Lproxy/SMTPProxy$OnSSLProxyEventListener;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lproxy/SMTPProxy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Lapp/ssldecryptor/SockProtector;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mOriginServer"    # Ljava/lang/String;
    .param p3, "mOriginPort"    # I
    .param p4, "captureFile"    # Ljava/io/File;
    .param p5, "mProtector"    # Lapp/ssldecryptor/SockProtector;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mOriginServer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mProtector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lproxy/SMTPProxy;->mOriginServer:Ljava/lang/String;

    iput p3, p0, Lproxy/SMTPProxy;->mOriginPort:I

    iput-object p4, p0, Lproxy/SMTPProxy;->captureFile:Ljava/io/File;

    iput-object p5, p0, Lproxy/SMTPProxy;->mProtector:Lapp/ssldecryptor/SockProtector;

    .line 42
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lproxy/SMTPProxy;->mListener$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 55
    new-instance v0, Lproxy/SMTPProxy$mConnectRunnable$1;

    invoke-direct {v0, p0, p1}, Lproxy/SMTPProxy$mConnectRunnable$1;-><init>(Lproxy/SMTPProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lproxy/SMTPProxy;->mConnectRunnable:Lproxy/SMTPProxy$mConnectRunnable$1;

    return-void
.end method

.method public static final synthetic access$cleanup(Lproxy/SMTPProxy;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    invoke-direct {p0}, Lproxy/SMTPProxy;->cleanup()V

    return-void
.end method

.method public static final synthetic access$forwaredUntilStartTls(Lproxy/SMTPProxy;)Z
    .locals 1
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    invoke-direct {p0}, Lproxy/SMTPProxy;->forwaredUntilStartTls()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getMListener$p(Lproxy/SMTPProxy;)Lproxy/SMTPProxy$OnSSLProxyEventListener;
    .locals 1
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    invoke-direct {p0}, Lproxy/SMTPProxy;->getMListener()Lproxy/SMTPProxy$OnSSLProxyEventListener;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMOriginPort$p(Lproxy/SMTPProxy;)I
    .locals 1
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    iget v0, p0, Lproxy/SMTPProxy;->mOriginPort:I

    return v0
.end method

.method public static final synthetic access$getMOriginServer$p(Lproxy/SMTPProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    iget-object v0, p0, Lproxy/SMTPProxy;->mOriginServer:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMProtector$p(Lproxy/SMTPProxy;)Lapp/ssldecryptor/SockProtector;
    .locals 1
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    iget-object v0, p0, Lproxy/SMTPProxy;->mProtector:Lapp/ssldecryptor/SockProtector;

    return-object v0
.end method

.method public static final synthetic access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;
    .locals 1
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    iget-object v0, p0, Lproxy/SMTPProxy;->serverAcceptedSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public static final synthetic access$pipeHttpRequest(Lproxy/SMTPProxy;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    invoke-direct {p0}, Lproxy/SMTPProxy;->pipeHttpRequest()V

    return-void
.end method

.method public static final synthetic access$pipeHttpResponse(Lproxy/SMTPProxy;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;

    .prologue
    .line 20
    invoke-direct {p0}, Lproxy/SMTPProxy;->pipeHttpResponse()V

    return-void
.end method

.method public static final synthetic access$setClientSock$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->clientSock:Ljava/net/Socket;

    return-void
.end method

.method public static final synthetic access$setClientSslSock$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->clientSslSock:Ljava/net/Socket;

    return-void
.end method

.method public static final synthetic access$setMAppIn$p(Lproxy/SMTPProxy;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/io/InputStream;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->mAppIn:Ljava/io/InputStream;

    return-void
.end method

.method public static final synthetic access$setMAppOut$p(Lproxy/SMTPProxy;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/io/OutputStream;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->mAppOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setMOriginIn$p(Lproxy/SMTPProxy;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/io/InputStream;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->mOriginIn:Ljava/io/InputStream;

    return-void
.end method

.method public static final synthetic access$setMOriginOut$p(Lproxy/SMTPProxy;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/io/OutputStream;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->mOriginOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setServerAcceptedSocket$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->serverAcceptedSocket:Ljava/net/Socket;

    return-void
.end method

.method public static final synthetic access$setServerSock$p(Lproxy/SMTPProxy;Ljava/net/ServerSocket;)V
    .locals 0
    .param p0, "$this"    # Lproxy/SMTPProxy;
    .param p1, "<set-?>"    # Ljava/net/ServerSocket;

    .prologue
    .line 20
    iput-object p1, p0, Lproxy/SMTPProxy;->serverSock:Ljava/net/ServerSocket;

    return-void
.end method

.method private final declared-synchronized cleanup()V
    .locals 3

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "srv   <pxy>   cli SMTPProxy: cleanup\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 276
    iget-object v0, p0, Lproxy/SMTPProxy;->mAppOut:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeClose(Ljava/io/Closeable;)V

    .line 277
    iget-object v0, p0, Lproxy/SMTPProxy;->mAppIn:Ljava/io/InputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeClose(Ljava/io/Closeable;)V

    .line 278
    iget-object v0, p0, Lproxy/SMTPProxy;->serverAcceptedSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeSocketClose(Ljava/net/Socket;)V

    .line 279
    iget-object v0, p0, Lproxy/SMTPProxy;->serverSock:Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeServerSocketClose(Ljava/net/ServerSocket;)V

    .line 281
    iget-object v0, p0, Lproxy/SMTPProxy;->mOriginOut:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeClose(Ljava/io/Closeable;)V

    .line 282
    iget-object v0, p0, Lproxy/SMTPProxy;->mOriginIn:Ljava/io/InputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeClose(Ljava/io/Closeable;)V

    .line 283
    iget-object v0, p0, Lproxy/SMTPProxy;->clientSslSock:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeSocketClose(Ljava/net/Socket;)V

    .line 284
    iget-object v0, p0, Lproxy/SMTPProxy;->clientSock:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lproxy/SMTPProxy;->safeSocketClose(Ljava/net/Socket;)V

    .line 286
    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lproxy/SMTPProxy;->mAppOut:Ljava/io/OutputStream;

    .line 287
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lproxy/SMTPProxy;->mAppIn:Ljava/io/InputStream;

    .line 288
    const/4 v0, 0x0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lproxy/SMTPProxy;->serverAcceptedSocket:Ljava/net/Socket;

    .line 289
    const/4 v0, 0x0

    check-cast v0, Ljava/net/ServerSocket;

    iput-object v0, p0, Lproxy/SMTPProxy;->serverSock:Ljava/net/ServerSocket;

    .line 290
    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lproxy/SMTPProxy;->mOriginOut:Ljava/io/OutputStream;

    .line 291
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lproxy/SMTPProxy;->mOriginIn:Ljava/io/InputStream;

    .line 292
    const/4 v0, 0x0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lproxy/SMTPProxy;->clientSslSock:Ljava/net/Socket;

    .line 293
    const/4 v0, 0x0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lproxy/SMTPProxy;->clientSock:Ljava/net/Socket;

    .line 295
    iget-object v0, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcapt/CaptWriter;->close()V

    .line 296
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcapt/CaptWriter;

    iput-object v0, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final forwaredUntilStartTls()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 224
    iget-object v2, p0, Lproxy/SMTPProxy;->serverAcceptedSocket:Ljava/net/Socket;

    .line 225
    .local v2, "sock":Ljava/net/Socket;
    if-nez v2, :cond_0

    .line 226
    new-instance v4, Ljava/io/IOException;

    const-string v5, "serverAcceptedSocket null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 229
    :cond_0
    const/4 v3, 0x0

    .line 231
    .local v3, "startTls":Z
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    :cond_1
    iget-object v6, p0, Lproxy/SMTPProxy;->mOriginIn:Ljava/io/InputStream;

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {v6}, Lproxy/SockutilKt;->readLine(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 236
    .local v1, "data":[B
    iget-object v6, p0, Lproxy/SMTPProxy;->mAppOut:Ljava/io/OutputStream;

    if-nez v6, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 237
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "S: %s"

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 239
    array-length v6, v1

    if-lt v6, v11, :cond_4

    aget-byte v6, v1, v11

    const/16 v7, 0x2d

    int-to-byte v7, v7

    if-eq v6, v7, :cond_1

    .line 243
    :cond_4
    if-eqz v3, :cond_7

    .line 244
    array-length v6, v1

    if-lt v6, v11, :cond_6

    aget-byte v6, v1, v5

    const/16 v7, 0x32

    int-to-byte v7, v7

    if-ne v6, v7, :cond_6

    .line 246
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "received 220. return\n"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 247
    iget-object v6, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "bout.toByteArray()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8}, Lcapt/CaptWriter;->writeServer2App([BII)V

    .line 266
    :cond_5
    :goto_1
    return v4

    .line 250
    :cond_6
    const/4 v3, 0x0

    .line 252
    :cond_7
    iget-object v6, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "bout.toByteArray()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8}, Lcapt/CaptWriter;->writeServer2App([BII)V

    .line 257
    :cond_8
    iget-object v6, p0, Lproxy/SMTPProxy;->mAppIn:Ljava/io/InputStream;

    if-nez v6, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-static {v6}, Lproxy/SockutilKt;->readLine(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 258
    iget-object v6, p0, Lproxy/SMTPProxy;->mOriginOut:Ljava/io/OutputStream;

    if-nez v6, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 259
    iget-object v6, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    if-eqz v6, :cond_b

    array-length v7, v1

    invoke-virtual {v6, v1, v5, v7}, Lcapt/CaptWriter;->writeApp2Server([BII)V

    .line 260
    :cond_b
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "C: %s"

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 261
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v7, "STARTTLS\r\n"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 262
    const/4 v3, 0x1

    .line 263
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "received STARTTLS\n"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 264
    :cond_c
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v7, "DATA\r\n"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v4, v5

    .line 266
    goto :goto_1

    .line 268
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private final getMListener()Lproxy/SMTPProxy$OnSSLProxyEventListener;
    .locals 3

    .prologue
    iget-object v0, p0, Lproxy/SMTPProxy;->mListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lproxy/SMTPProxy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproxy/SMTPProxy$OnSSLProxyEventListener;

    return-object v0
.end method

.method private final pipeHttpRequest()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 300
    iget-object v2, p0, Lproxy/SMTPProxy;->mAppIn:Ljava/io/InputStream;

    .line 301
    .local v2, "inStream":Ljava/io/InputStream;
    iget-object v4, p0, Lproxy/SMTPProxy;->mOriginOut:Ljava/io/OutputStream;

    .line 302
    .local v4, "outStream":Ljava/io/OutputStream;
    iget-object v5, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    .line 303
    .local v5, "writer":Lcapt/CaptWriter;
    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 304
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv    pxy <- app stream is null. return\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 329
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v4    # "outStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 308
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :cond_1
    const/high16 v6, 0x20000

    new-array v0, v6, [B

    .line 309
    .local v0, "buf":[B
    nop

    .line 310
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 312
    .local v3, "len":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv    pxy <- app %s read %d bytes\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 313
    if-gtz v3, :cond_3

    .line 315
    check-cast v2, Ljava/io/Closeable;

    .end local v2    # "inStream":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lproxy/SMTPProxy;->safeClose(Ljava/io/Closeable;)V

    .line 316
    check-cast v4, Ljava/io/Closeable;

    .end local v4    # "outStream":Ljava/io/OutputStream;
    invoke-direct {p0, v4}, Lproxy/SMTPProxy;->safeClose(Ljava/io/Closeable;)V

    .line 317
    const/4 v6, 0x0

    check-cast v6, Ljava/io/InputStream;

    iput-object v6, p0, Lproxy/SMTPProxy;->mOriginIn:Ljava/io/InputStream;

    .line 318
    const/4 v6, 0x0

    check-cast v6, Ljava/io/OutputStream;

    iput-object v6, p0, Lproxy/SMTPProxy;->mAppOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "%s IO exception %s\n"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 328
    invoke-direct {p0}, Lproxy/SMTPProxy;->cleanup()V

    goto :goto_0

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :cond_3
    :try_start_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv <- pxy    app %s write %d bytes\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 323
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 324
    if-eqz v5, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Lcapt/CaptWriter;->writeApp2Server([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private final pipeHttpResponse()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 336
    iget-object v2, p0, Lproxy/SMTPProxy;->mOriginIn:Ljava/io/InputStream;

    .line 337
    .local v2, "inStream":Ljava/io/InputStream;
    iget-object v4, p0, Lproxy/SMTPProxy;->mAppOut:Ljava/io/OutputStream;

    .line 338
    .local v4, "outStream":Ljava/io/OutputStream;
    iget-object v5, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    .line 340
    .local v5, "writer":Lcapt/CaptWriter;
    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    .line 341
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv -> pxy    app stream is null. exit thread\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    const/high16 v6, 0x20000

    new-array v0, v6, [B

    .line 346
    .local v0, "buf":[B
    nop

    .line 347
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 349
    .local v3, "len":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv -> pxy    app %s read %d bytes\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 350
    if-lez v3, :cond_1

    .line 360
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv    pxy -> app %s write %d bytes\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 361
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 362
    if-eqz v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Lcapt/CaptWriter;->writeServer2App([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 364
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "%s IO exception %s\n"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method

.method private final safeClose(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 372
    nop

    .line 373
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final safeServerSocketClose(Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "c"    # Ljava/net/ServerSocket;

    .prologue
    .line 386
    nop

    .line 387
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final safeSocketClose(Ljava/net/Socket;)V
    .locals 1
    .param p1, "c"    # Ljava/net/Socket;

    .prologue
    .line 379
    nop

    .line 380
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final setMListener(Lproxy/SMTPProxy$OnSSLProxyEventListener;)V
    .locals 3
    .param p1, "<set-?>"    # Lproxy/SMTPProxy$OnSSLProxyEventListener;

    .prologue
    iget-object v0, p0, Lproxy/SMTPProxy;->mListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lproxy/SMTPProxy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final start(Lproxy/SMTPProxy$OnSSLProxyEventListener;)V
    .locals 2
    .param p1, "listener"    # Lproxy/SMTPProxy$OnSSLProxyEventListener;

    .prologue
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lproxy/SMTPProxy;->setMListener(Lproxy/SMTPProxy$OnSSLProxyEventListener;)V

    .line 35
    new-instance v0, Lcapt/CaptWriter;

    iget-object v1, p0, Lproxy/SMTPProxy;->captureFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcapt/CaptWriter;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lproxy/SMTPProxy;->captWriter:Lcapt/CaptWriter;

    .line 36
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, p0, Lproxy/SMTPProxy;->mConnectRunnable:Lproxy/SMTPProxy$mConnectRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lproxy/SMTPProxy;->mConnectThread:Ljava/lang/Thread;

    .line 37
    iget-object v0, p0, Lproxy/SMTPProxy;->mConnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    :cond_0
    return-void
.end method
