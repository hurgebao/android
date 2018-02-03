.class public final Lapp/ssldecryptor/HTTPSProxy;
.super Ljava/lang/Object;
.source "HTTPSProxy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private captWriter:Lcapt/CaptWriter;

.field private final captureFile:Ljava/io/File;

.field private clientSock:Ljava/net/Socket;

.field private clientSslSock:Ljava/net/Socket;

.field private final context:Landroid/content/Context;

.field private mAppIn:Ljava/io/InputStream;

.field private mAppOut:Ljava/io/OutputStream;

.field private final mConnectRunnable:Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;

.field private mConnectThread:Ljava/lang/Thread;

.field private final mListener$delegate:Lkotlin/properties/ReadWriteProperty;

.field private mOriginIn:Ljava/io/InputStream;

.field private mOriginOut:Ljava/io/OutputStream;

.field private final mOriginPort:I

.field private final mOriginServer:Ljava/lang/String;

.field private final mProtector:Lapp/ssldecryptor/SockProtector;

.field private serverAcceptedSocket:Ljava/net/Socket;

.field private serverSslSock:Ljavax/net/ssl/SSLServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "mListener"

    const-string v5, "getMListener()Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lapp/ssldecryptor/HTTPSProxy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginServer:Ljava/lang/String;

    iput p3, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginPort:I

    iput-object p4, p0, Lapp/ssldecryptor/HTTPSProxy;->captureFile:Ljava/io/File;

    iput-object p5, p0, Lapp/ssldecryptor/HTTPSProxy;->mProtector:Lapp/ssldecryptor/SockProtector;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->context:Landroid/content/Context;

    .line 45
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mListener$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 58
    new-instance v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;

    invoke-direct {v0, p0, p1}, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;-><init>(Lapp/ssldecryptor/HTTPSProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mConnectRunnable:Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;

    return-void
.end method

.method public static final synthetic access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    invoke-direct {p0}, Lapp/ssldecryptor/HTTPSProxy;->cleanup()V

    return-void
.end method

.method public static final synthetic access$getMListener$p(Lapp/ssldecryptor/HTTPSProxy;)Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;
    .locals 1
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    invoke-direct {p0}, Lapp/ssldecryptor/HTTPSProxy;->getMListener()Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMOriginPort$p(Lapp/ssldecryptor/HTTPSProxy;)I
    .locals 1
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    iget v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginPort:I

    return v0
.end method

.method public static final synthetic access$getMOriginServer$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginServer:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMProtector$p(Lapp/ssldecryptor/HTTPSProxy;)Lapp/ssldecryptor/SockProtector;
    .locals 1
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mProtector:Lapp/ssldecryptor/SockProtector;

    return-object v0
.end method

.method public static final synthetic access$getServerAcceptedSocket$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/net/Socket;
    .locals 1
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->serverAcceptedSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public static final synthetic access$pipeHttpRequest(Lapp/ssldecryptor/HTTPSProxy;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    invoke-direct {p0}, Lapp/ssldecryptor/HTTPSProxy;->pipeHttpRequest()V

    return-void
.end method

.method public static final synthetic access$pipeHttpResponse(Lapp/ssldecryptor/HTTPSProxy;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;

    .prologue
    .line 23
    invoke-direct {p0}, Lapp/ssldecryptor/HTTPSProxy;->pipeHttpResponse()V

    return-void
.end method

.method public static final synthetic access$setClientSock$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->clientSock:Ljava/net/Socket;

    return-void
.end method

.method public static final synthetic access$setClientSslSock$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->clientSslSock:Ljava/net/Socket;

    return-void
.end method

.method public static final synthetic access$setMAppIn$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/io/InputStream;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppIn:Ljava/io/InputStream;

    return-void
.end method

.method public static final synthetic access$setMAppOut$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/io/OutputStream;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setMOriginIn$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/io/InputStream;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginIn:Ljava/io/InputStream;

    return-void
.end method

.method public static final synthetic access$setMOriginOut$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/io/OutputStream;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginOut:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setServerAcceptedSocket$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/net/Socket;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljava/net/Socket;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->serverAcceptedSocket:Ljava/net/Socket;

    return-void
.end method

.method public static final synthetic access$setServerSslSock$p(Lapp/ssldecryptor/HTTPSProxy;Ljavax/net/ssl/SSLServerSocket;)V
    .locals 0
    .param p0, "$this"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p1, "<set-?>"    # Ljavax/net/ssl/SSLServerSocket;

    .prologue
    .line 23
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy;->serverSslSock:Ljavax/net/ssl/SSLServerSocket;

    return-void
.end method

.method private final declared-synchronized cleanup()V
    .locals 3

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "srv   <pxy>   cli HTTPSProxy: cleanup\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 205
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppOut:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeClose(Ljava/io/Closeable;)V

    .line 206
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppIn:Ljava/io/InputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeClose(Ljava/io/Closeable;)V

    .line 207
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->serverAcceptedSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeSocketClose(Ljava/net/Socket;)V

    .line 208
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->serverSslSock:Ljavax/net/ssl/SSLServerSocket;

    check-cast v0, Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeServerSocketClose(Ljava/net/ServerSocket;)V

    .line 210
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginOut:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeClose(Ljava/io/Closeable;)V

    .line 211
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginIn:Ljava/io/InputStream;

    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeClose(Ljava/io/Closeable;)V

    .line 212
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->clientSslSock:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeSocketClose(Ljava/net/Socket;)V

    .line 213
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->clientSock:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lapp/ssldecryptor/HTTPSProxy;->safeSocketClose(Ljava/net/Socket;)V

    .line 215
    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppOut:Ljava/io/OutputStream;

    .line 216
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppIn:Ljava/io/InputStream;

    .line 217
    const/4 v0, 0x0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->serverAcceptedSocket:Ljava/net/Socket;

    .line 218
    const/4 v0, 0x0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->serverSslSock:Ljavax/net/ssl/SSLServerSocket;

    .line 219
    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginOut:Ljava/io/OutputStream;

    .line 220
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginIn:Ljava/io/InputStream;

    .line 221
    const/4 v0, 0x0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->clientSslSock:Ljava/net/Socket;

    .line 222
    const/4 v0, 0x0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->clientSock:Ljava/net/Socket;

    .line 224
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->captWriter:Lcapt/CaptWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcapt/CaptWriter;->close()V

    .line 225
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcapt/CaptWriter;

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->captWriter:Lcapt/CaptWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getMListener()Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lapp/ssldecryptor/HTTPSProxy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    return-object v0
.end method

.method private final pipeHttpRequest()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 229
    iget-object v2, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppIn:Ljava/io/InputStream;

    .line 230
    .local v2, "inStream":Ljava/io/InputStream;
    iget-object v4, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginOut:Ljava/io/OutputStream;

    .line 231
    .local v4, "outStream":Ljava/io/OutputStream;
    iget-object v5, p0, Lapp/ssldecryptor/HTTPSProxy;->captWriter:Lcapt/CaptWriter;

    .line 232
    .local v5, "writer":Lcapt/CaptWriter;
    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 233
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv    pxy <- app stream is null. return\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 258
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v4    # "outStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 237
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :cond_1
    const/high16 v6, 0x20000

    new-array v0, v6, [B

    .line 238
    .local v0, "buf":[B
    nop

    .line 239
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 241
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

    .line 242
    if-gtz v3, :cond_3

    .line 244
    check-cast v2, Ljava/io/Closeable;

    .end local v2    # "inStream":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lapp/ssldecryptor/HTTPSProxy;->safeClose(Ljava/io/Closeable;)V

    .line 245
    check-cast v4, Ljava/io/Closeable;

    .end local v4    # "outStream":Ljava/io/OutputStream;
    invoke-direct {p0, v4}, Lapp/ssldecryptor/HTTPSProxy;->safeClose(Ljava/io/Closeable;)V

    .line 246
    const/4 v6, 0x0

    check-cast v6, Ljava/io/InputStream;

    iput-object v6, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginIn:Ljava/io/InputStream;

    .line 247
    const/4 v6, 0x0

    check-cast v6, Ljava/io/OutputStream;

    iput-object v6, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 256
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

    .line 257
    invoke-direct {p0}, Lapp/ssldecryptor/HTTPSProxy;->cleanup()V

    goto :goto_0

    .line 251
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

    .line 252
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 253
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

    .line 265
    iget-object v2, p0, Lapp/ssldecryptor/HTTPSProxy;->mOriginIn:Ljava/io/InputStream;

    .line 266
    .local v2, "inStream":Ljava/io/InputStream;
    iget-object v4, p0, Lapp/ssldecryptor/HTTPSProxy;->mAppOut:Ljava/io/OutputStream;

    .line 267
    .local v4, "outStream":Ljava/io/OutputStream;
    iget-object v5, p0, Lapp/ssldecryptor/HTTPSProxy;->captWriter:Lcapt/CaptWriter;

    .line 269
    .local v5, "writer":Lcapt/CaptWriter;
    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    .line 270
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "srv -> pxy    app stream is null. exit thread\n"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const/high16 v6, 0x20000

    new-array v0, v6, [B

    .line 275
    .local v0, "buf":[B
    nop

    .line 276
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 278
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

    .line 279
    if-lez v3, :cond_1

    .line 289
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

    .line 290
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 291
    if-eqz v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Lcapt/CaptWriter;->writeServer2App([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 294
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
    .line 301
    nop

    .line 302
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final safeServerSocketClose(Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "c"    # Ljava/net/ServerSocket;

    .prologue
    .line 315
    nop

    .line 316
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final safeSocketClose(Ljava/net/Socket;)V
    .locals 1
    .param p1, "c"    # Ljava/net/Socket;

    .prologue
    .line 308
    nop

    .line 309
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final setMListener(Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;)V
    .locals 3
    .param p1, "<set-?>"    # Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    .prologue
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lapp/ssldecryptor/HTTPSProxy;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final start(Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;)V
    .locals 2
    .param p1, "listener"    # Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    .prologue
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lapp/ssldecryptor/HTTPSProxy;->setMListener(Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;)V

    .line 38
    new-instance v0, Lcapt/CaptWriter;

    iget-object v1, p0, Lapp/ssldecryptor/HTTPSProxy;->captureFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcapt/CaptWriter;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->captWriter:Lcapt/CaptWriter;

    .line 39
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mConnectRunnable:Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lapp/ssldecryptor/HTTPSProxy;->mConnectThread:Ljava/lang/Thread;

    .line 40
    iget-object v0, p0, Lapp/ssldecryptor/HTTPSProxy;->mConnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_0
    return-void
.end method
