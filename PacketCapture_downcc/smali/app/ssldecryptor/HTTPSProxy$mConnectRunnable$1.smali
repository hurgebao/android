.class public final Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;
.super Ljava/lang/Object;
.source "HTTPSProxy.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/ssldecryptor/HTTPSProxy;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Lapp/ssldecryptor/SockProtector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lapp/ssldecryptor/HTTPSProxy;


# direct methods
.method constructor <init>(Lapp/ssldecryptor/HTTPSProxy;Landroid/content/Context;)V
    .locals 0
    .param p1, "$outer"    # Lapp/ssldecryptor/HTTPSProxy;
    .param p2, "$captured_local_variable$1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    iput-object p2, p0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 61
    nop

    .line 64
    :try_start_0
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli HTTPSProxy: start\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 66
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .line 67
    .local v6, "s":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13, v6}, Lapp/ssldecryptor/HTTPSProxy;->access$setClientSock$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    nop

    .line 69
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v6, v13}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli HTTPSProxy: socket bound. proxy client port=%d\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/net/Socket;->getLocalPort()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$getMProtector$p(Lapp/ssldecryptor/HTTPSProxy;)Lapp/ssldecryptor/SockProtector;

    move-result-object v13

    invoke-interface {v13, v6}, Lapp/ssldecryptor/SockProtector;->protect(Ljava/net/Socket;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 78
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli protect failed\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    .line 197
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "srv   <pxy>   cli cannot bind socket. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto :goto_0

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_4
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli HTTPSProxy: socket protected\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    nop

    .line 87
    :try_start_5
    new-instance v13, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v14}, Lapp/ssldecryptor/HTTPSProxy;->access$getMOriginServer$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v15}, Lapp/ssldecryptor/HTTPSProxy;->access$getMOriginPort$p(Lapp/ssldecryptor/HTTPSProxy;)I

    move-result v15

    invoke-direct {v13, v14, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v13, Ljava/net/SocketAddress;

    invoke-virtual {v6, v13}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    :try_start_6
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv <- pxy    cli HTTPSProxy: connecting to %s:%d proxy client port=%d\n"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lapp/ssldecryptor/HTTPSProxy;->access$getMOriginServer$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lapp/ssldecryptor/HTTPSProxy;->access$getMOriginPort$p(Lapp/ssldecryptor/HTTPSProxy;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v6}, Ljava/net/Socket;->getLocalPort()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    array-length v0, v15

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "java.lang.String.format(this, *args)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$getMOriginServer$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v14}, Lapp/ssldecryptor/HTTPSProxy;->access$getMOriginPort$p(Lapp/ssldecryptor/HTTPSProxy;)I

    move-result v14

    invoke-static {v6, v13, v14}, Lapp/ssldecryptor/SSLHandshakeKt;->sslSyncHandshake(Ljava/net/Socket;Ljava/lang/String;I)Lapp/ssldecryptor/HandshakeResult;

    move-result-object v3

    .line 97
    .local v3, "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    if-nez v3, :cond_2

    .line 98
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "connection failed\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$getMListener$p(Lapp/ssldecryptor/HTTPSProxy;)Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v13}, Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;->onConnectError()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 88
    .end local v3    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    :catch_1
    move-exception v2

    .line 89
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exceptoin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 102
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    :cond_2
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-virtual {v3}, Lapp/ssldecryptor/HandshakeResult;->getSslSocket()Ljava/net/Socket;

    move-result-object v14

    invoke-static {v13, v14}, Lapp/ssldecryptor/HTTPSProxy;->access$setClientSslSock$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/net/Socket;)V

    .line 103
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv <- pxy    cli HTTPSProxy: handshake finished. create proxy server\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 107
    sget-object v13, Lapp/ssldecryptor/ProxyCertCache;->INSTANCE:Lapp/ssldecryptor/ProxyCertCache;

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->$context:Landroid/content/Context;

    invoke-virtual {v3}, Lapp/ssldecryptor/HandshakeResult;->getPeerCert()Ljava/security/cert/X509Certificate;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lapp/ssldecryptor/ProxyCertCache;->getCertKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;)Lapp/ssldecryptor/CertKeyStore;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    .line 109
    .local v1, "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    nop

    .line 111
    :try_start_9
    const-string v13, "TLS"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    const-string v13, "SSLContext.getInstance(\"TLS\")"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .local v10, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 113
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v1}, Lapp/ssldecryptor/CertKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v13

    invoke-virtual {v1}, Lapp/ssldecryptor/CertKeyStore;->getStorePass()[C

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 114
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Ljava/security/SecureRandom;

    invoke-direct {v15}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v10, v13, v14, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 118
    :try_start_a
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v9

    .line 123
    .local v9, "ssf":Ljavax/net/ssl/SSLServerSocketFactory;
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v13, v14}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 124
    nop

    .line 126
    const/4 v13, 0x0

    :try_start_b
    invoke-virtual {v9, v13}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type javax.net.ssl.SSLServerSocket"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 129
    :catch_2
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$getMListener$p(Lapp/ssldecryptor/HTTPSProxy;)Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    move-result-object v13

    invoke-interface {v13}, Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;->onConnectError()V

    .line 131
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv <- pxy    cli HTTPSProxy: exception %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v9    # "ssf":Ljavax/net/ssl/SSLServerSocketFactory;
    .end local v10    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_3
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv <- pxy    cli HTTPSProxy: exception %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v9    # "ssf":Ljavax/net/ssl/SSLServerSocketFactory;
    .restart local v10    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_3
    :try_start_e
    check-cast v7, Ljavax/net/ssl/SSLServerSocket;

    .line 127
    .local v7, "serversocket":Ljavax/net/ssl/SSLServerSocket;
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13, v7}, Lapp/ssldecryptor/HTTPSProxy;->access$setServerSslSock$p(Lapp/ssldecryptor/HTTPSProxy;Ljavax/net/ssl/SSLServerSocket;)V

    .line 128
    const/16 v13, 0x2000

    invoke-virtual {v7, v13}, Ljavax/net/ssl/SSLServerSocket;->setReceiveBufferSize(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 133
    :try_start_f
    invoke-virtual {v7}, Ljavax/net/ssl/SSLServerSocket;->getLocalPort()I

    move-result v5

    .line 140
    .local v5, "port":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$getMListener$p(Lapp/ssldecryptor/HTTPSProxy;)Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;

    move-result-object v13

    invoke-interface {v13, v5}, Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;->onConnected(I)V

    .line 142
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli HTTPSProxy: accepting on port %d\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 146
    nop

    .line 147
    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLServerSocket;->accept()Ljava/net/Socket;

    move-result-object v14

    invoke-static {v13, v14}, Lapp/ssldecryptor/HTTPSProxy;->access$setServerAcceptedSocket$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/net/Socket;)V
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 155
    :try_start_11
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv    pxy <- cli HTTPSProxy: client accepted\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 158
    nop

    .line 159
    :try_start_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$getServerAcceptedSocket$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/net/Socket;

    move-result-object v13

    if-nez v13, :cond_6

    new-instance v13, Lkotlin/TypeCastException;

    const-string v14, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {v13, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 162
    :catch_4
    move-exception v13

    .line 163
    :goto_1
    nop

    .line 166
    :try_start_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v14}, Lapp/ssldecryptor/HTTPSProxy;->access$getServerAcceptedSocket$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/net/Socket;

    move-result-object v14

    if-nez v14, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-static {v13, v14}, Lapp/ssldecryptor/HTTPSProxy;->access$setMAppOut$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/OutputStream;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v14}, Lapp/ssldecryptor/HTTPSProxy;->access$getServerAcceptedSocket$p(Lapp/ssldecryptor/HTTPSProxy;)Ljava/net/Socket;

    move-result-object v14

    if-nez v14, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v13, v14}, Lapp/ssldecryptor/HTTPSProxy;->access$setMAppIn$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 175
    :try_start_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-virtual {v3}, Lapp/ssldecryptor/HandshakeResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-static {v13, v14}, Lapp/ssldecryptor/HTTPSProxy;->access$setMOriginOut$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/OutputStream;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-virtual {v3}, Lapp/ssldecryptor/HandshakeResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v13, v14}, Lapp/ssldecryptor/HTTPSProxy;->access$setMOriginIn$p(Lapp/ssldecryptor/HTTPSProxy;Ljava/io/InputStream;)V

    .line 182
    new-instance v11, Ljava/lang/Thread;

    new-instance v13, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1$run$th$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1$run$th$1;-><init>(Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;)V

    check-cast v13, Ljava/lang/Runnable;

    invoke-direct {v11, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    .local v11, "th":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$pipeHttpResponse(Lapp/ssldecryptor/HTTPSProxy;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 148
    .end local v11    # "th":Ljava/lang/Thread;
    :catch_5
    move-exception v2

    .line 150
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_15
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv    pxy    cli HTTPSProxy: accept exception %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 152
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_6
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/IOException;
    :try_start_16
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv    pxy    cli HTTPSProxy: accept exception %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 159
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_17
    check-cast v13, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    .line 160
    .local v8, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v12

    .line 161
    .local v12, "valid":Z
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv    pxy <- cli HTTPSProxy: session valid: %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_1

    .line 196
    .end local v1    # "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    .end local v3    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "port":I
    .end local v6    # "s":Ljava/net/Socket;
    .end local v7    # "serversocket":Ljavax/net/ssl/SSLServerSocket;
    .end local v8    # "session":Ljavax/net/ssl/SSLSession;
    .end local v9    # "ssf":Ljavax/net/ssl/SSLServerSocketFactory;
    .end local v10    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v12    # "valid":Z
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v14}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    throw v13

    .line 168
    .restart local v1    # "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    .restart local v3    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .restart local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v5    # "port":I
    .restart local v6    # "s":Ljava/net/Socket;
    .restart local v7    # "serversocket":Ljavax/net/ssl/SSLServerSocket;
    .restart local v9    # "ssf":Ljavax/net/ssl/SSLServerSocketFactory;
    .restart local v10    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_7
    move-exception v2

    .line 170
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_18
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli HTTPSProxy: get stream exception %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0

    .line 172
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_8
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    :try_start_19
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "srv   <pxy>   cli HTTPSProxy: get stream exception %s\n"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/ssldecryptor/HTTPSProxy$mConnectRunnable$1;->this$0:Lapp/ssldecryptor/HTTPSProxy;

    invoke-static {v13}, Lapp/ssldecryptor/HTTPSProxy;->access$cleanup(Lapp/ssldecryptor/HTTPSProxy;)V

    goto/16 :goto_0
.end method
