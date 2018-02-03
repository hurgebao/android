.class public final Lapp/ssldecryptor/SSLHandshakeKt;
.super Ljava/lang/Object;
.source "SSLHandshake.kt"


# direct methods
.method public static final sslSyncHandshake(Ljava/net/Socket;Ljava/lang/String;I)Lapp/ssldecryptor/HandshakeResult;
    .locals 12
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const-string v6, "s"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "host"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 32
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    const-string v6, "SSLContext.getDefault()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .local v3, "sctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 40
    .local v4, "sfactory":Ljavax/net/ssl/SSLSocketFactory;
    nop

    .line 43
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, p0, p1, p2, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "SSLHS: cannot create socket. exceptoin %s\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 46
    const/4 v6, 0x0

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "sctx":Ljavax/net/ssl/SSLContext;
    .end local v4    # "sfactory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    return-object v6

    .line 34
    :catch_1
    move-exception v1

    .line 35
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "SSLHS: exceptoin %s\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 36
    const/4 v6, 0x0

    goto :goto_0

    .line 43
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "sctx":Ljavax/net/ssl/SSLContext;
    .restart local v4    # "sfactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    :try_start_2
    check-cast v5, Ljavax/net/ssl/SSLSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .local v5, "sslSock":Ljavax/net/ssl/SSLSocket;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 50
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v6, 0x0

    check-cast v6, Ljava/security/cert/Certificate;

    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    new-instance v6, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;

    invoke-direct {v6, v2, v7}, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v6, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 81
    nop

    .line 82
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "SSLHS: call startHandshake()\n"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 83
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 85
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 86
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "SSLHS: handshake done (return from await)\n"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 89
    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/security/cert/Certificate;

    if-eqz v6, :cond_1

    .line 90
    new-instance v8, Lapp/ssldecryptor/HandshakeResult;

    move-object v0, v5

    check-cast v0, Ljava/net/Socket;

    move-object v6, v0

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "sslSock.getInputStream()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "sslSock.getOutputStream()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/security/cert/Certificate;

    if-nez v7, :cond_2

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    :catch_2
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "SSLHS: exceptoin %s\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 103
    :try_start_4
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    :goto_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "SSLHS: handshake failed\n"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 108
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 90
    :cond_2
    :try_start_5
    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-direct {v8, v6, v9, v10, v7}, Lapp/ssldecryptor/HandshakeResult;-><init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/cert/X509Certificate;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v6, v8

    goto/16 :goto_0

    .line 104
    :catch_3
    move-exception v6

    goto :goto_1
.end method
