.class public final Lproxy/SMTPProxy$mConnectRunnable$1;
.super Ljava/lang/Object;
.source "SMTPProxy.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproxy/SMTPProxy;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Lapp/ssldecryptor/SockProtector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lproxy/SMTPProxy;


# direct methods
.method constructor <init>(Lproxy/SMTPProxy;Landroid/content/Context;)V
    .locals 0
    .param p1, "$outer"    # Lproxy/SMTPProxy;
    .param p2, "$captured_local_variable$1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    iput-object p2, p0, Lproxy/SMTPProxy$mConnectRunnable$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 58
    nop

    .line 61
    :try_start_0
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli SMTPProxy: start\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 63
    new-instance v10, Ljava/net/Socket;

    invoke-direct {v10}, Ljava/net/Socket;-><init>()V

    .line 65
    .local v10, "s":Ljava/net/Socket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lproxy/SMTPProxy;->access$setClientSock$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 67
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli SMTPProxy: socket bound. proxy client port=%d\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v10}, Ljava/net/Socket;->getLocalPort()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getMProtector$p(Lproxy/SMTPProxy;)Lapp/ssldecryptor/SockProtector;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lapp/ssldecryptor/SockProtector;->protect(Ljava/net/Socket;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 76
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli protect failed\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    .line 217
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "srv   <pxy>   cli cannot bind socket. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto :goto_0

    .line 80
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_4
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli SMTPProxy: socket protected\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    nop

    .line 85
    :try_start_5
    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getMOriginServer$p(Lproxy/SMTPProxy;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lproxy/SMTPProxy;->access$getMOriginPort$p(Lproxy/SMTPProxy;)I

    move-result v21

    invoke-direct/range {v19 .. v21}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v19, Ljava/net/SocketAddress;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    :try_start_6
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljavax/net/ServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v11

    .line 94
    .local v11, "serversocket":Ljava/net/ServerSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lproxy/SMTPProxy;->access$setServerSock$p(Lproxy/SMTPProxy;Ljava/net/ServerSocket;)V

    .line 95
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 96
    const/16 v19, 0x2000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 101
    invoke-virtual {v11}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v7

    .line 102
    .local v7, "port":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getMListener$p(Lproxy/SMTPProxy;)Lproxy/SMTPProxy$OnSSLProxyEventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lproxy/SMTPProxy$OnSSLProxyEventListener;->onConnected(I)V

    .line 104
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli SMTPProxy: accepting on port %d\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    nop

    .line 109
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setServerAcceptedSocket$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :try_start_8
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv    pxy <- cli SMTPProxy: client accepted\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v20

    if-nez v20, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMAppOut$p(Lproxy/SMTPProxy;Ljava/io/OutputStream;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v20

    if-nez v20, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMAppIn$p(Lproxy/SMTPProxy;Ljava/io/InputStream;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMOriginOut$p(Lproxy/SMTPProxy;Ljava/io/OutputStream;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMOriginIn$p(Lproxy/SMTPProxy;Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 126
    nop

    .line 128
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$forwaredUntilStartTls(Lproxy/SMTPProxy;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v16

    .line 132
    .local v16, "startTls":Z
    if-eqz v16, :cond_c

    .line 138
    :try_start_a
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv <- pxy    cli SMTPProxy: connecting to %s:%d proxy client port=%d\n"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lproxy/SMTPProxy;->access$getMOriginServer$p(Lproxy/SMTPProxy;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lproxy/SMTPProxy;->access$getMOriginPort$p(Lproxy/SMTPProxy;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v10}, Ljava/net/Socket;->getLocalPort()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "java.lang.String.format(this, *args)"

    invoke-static/range {v20 .. v21}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getMOriginServer$p(Lproxy/SMTPProxy;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getMOriginPort$p(Lproxy/SMTPProxy;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v0, v1}, Lapp/ssldecryptor/SSLHandshakeKt;->sslSyncHandshake(Ljava/net/Socket;Ljava/lang/String;I)Lapp/ssldecryptor/HandshakeResult;

    move-result-object v5

    .line 140
    .local v5, "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    if-nez v5, :cond_3

    .line 141
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "connection failed\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getMListener$p(Lproxy/SMTPProxy;)Lproxy/SMTPProxy$OnSSLProxyEventListener;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lproxy/SMTPProxy$OnSSLProxyEventListener;->onConnectError()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 86
    .end local v5    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .end local v7    # "port":I
    .end local v11    # "serversocket":Ljava/net/ServerSocket;
    .end local v16    # "startTls":Z
    :catch_1
    move-exception v4

    .line 87
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_b
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exceptoin "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 110
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "port":I
    .restart local v11    # "serversocket":Ljava/net/ServerSocket;
    :catch_2
    move-exception v4

    .line 112
    .local v4, "e":Ljava/net/SocketTimeoutException;
    :try_start_c
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv    pxy    cli SMTPProxy: accept exception %s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 114
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v4

    .line 115
    .local v4, "e":Ljava/io/IOException;
    :try_start_d
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv    pxy    cli SMTPProxy: accept exception %s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 129
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "forwardUntilStartTLS: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 145
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .restart local v16    # "startTls":Z
    :cond_3
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lapp/ssldecryptor/HandshakeResult;->getSslSocket()Ljava/net/Socket;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setClientSslSock$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V

    .line 146
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv <- pxy    cli SMTPProxy: handshake finished. create proxy server\n"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 150
    sget-object v19, Lapp/ssldecryptor/ProxyCertCache;->INSTANCE:Lapp/ssldecryptor/ProxyCertCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->$context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lapp/ssldecryptor/HandshakeResult;->getPeerCert()Ljava/security/cert/X509Certificate;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lapp/ssldecryptor/ProxyCertCache;->getCertKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;)Lapp/ssldecryptor/CertKeyStore;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v3

    .line 152
    .local v3, "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    nop

    .line 154
    :try_start_10
    const-string v19, "TLS"

    invoke-static/range {v19 .. v19}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    const-string v19, "SSLContext.getInstance(\"TLS\")"

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .local v14, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v6

    .line 156
    .local v6, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v3}, Lapp/ssldecryptor/CertKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v19

    invoke-virtual {v3}, Lapp/ssldecryptor/CertKeyStore;->getStorePass()[C

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 157
    invoke-virtual {v6}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v19

    const/16 v20, 0x0

    new-instance v21, Ljava/security/SecureRandom;

    invoke-direct/range {v21 .. v21}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 161
    :try_start_11
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    .line 166
    .local v13, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v19

    if-nez v19, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    if-nez v8, :cond_5

    new-instance v19, Lkotlin/TypeCastException;

    const-string v20, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct/range {v19 .. v20}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 216
    .end local v3    # "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    .end local v5    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .end local v6    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v7    # "port":I
    .end local v10    # "s":Ljava/net/Socket;
    .end local v11    # "serversocket":Ljava/net/ServerSocket;
    .end local v13    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v16    # "startTls":Z
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    throw v19

    .line 158
    .restart local v3    # "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    .restart local v5    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .restart local v7    # "port":I
    .restart local v10    # "s":Ljava/net/Socket;
    .restart local v11    # "serversocket":Ljava/net/ServerSocket;
    .restart local v16    # "startTls":Z
    :catch_5
    move-exception v4

    .line 159
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_12
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv <- pxy    cli SMTPProxy: exception %s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 166
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v13    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_5
    :try_start_13
    check-cast v8, Ljava/net/InetSocketAddress;

    .line 167
    .local v8, "remoteAddress":Ljava/net/InetSocketAddress;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x13

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "remoteHostName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v20

    if-nez v20, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getPort()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v13, v0, v9, v1, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v15

    if-nez v15, :cond_8

    new-instance v19, Lkotlin/TypeCastException;

    const-string v20, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct/range {v19 .. v20}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 167
    .end local v9    # "remoteHostName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 168
    .restart local v9    # "remoteHostName":Ljava/lang/String;
    :cond_8
    check-cast v15, Ljavax/net/ssl/SSLSocket;

    .line 169
    .local v15, "sslSock":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    move-object v0, v15

    check-cast v0, Ljava/net/Socket;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lproxy/SMTPProxy;->access$setServerAcceptedSocket$p(Lproxy/SMTPProxy;Ljava/net/Socket;)V

    .line 170
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 173
    invoke-virtual {v15}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 174
    invoke-virtual {v15}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 178
    invoke-virtual {v15}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v19

    if-nez v19, :cond_9

    new-instance v19, Lkotlin/TypeCastException;

    const-string v20, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct/range {v19 .. v20}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_9
    check-cast v19, Ljavax/net/ssl/SSLSocket;

    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    .line 181
    .local v12, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v18

    .line 182
    .local v18, "valid":Z
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv    pxy <- cli SMTPProxy: session valid: %s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 184
    nop

    .line 185
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v20

    if-nez v20, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMAppOut$p(Lproxy/SMTPProxy;Ljava/io/OutputStream;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lproxy/SMTPProxy;->access$getServerAcceptedSocket$p(Lproxy/SMTPProxy;)Ljava/net/Socket;

    move-result-object v20

    if-nez v20, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMAppIn$p(Lproxy/SMTPProxy;Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 194
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lapp/ssldecryptor/HandshakeResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMOriginOut$p(Lproxy/SMTPProxy;Ljava/io/OutputStream;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lapp/ssldecryptor/HandshakeResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lproxy/SMTPProxy;->access$setMOriginIn$p(Lproxy/SMTPProxy;Ljava/io/InputStream;)V

    .line 202
    .end local v3    # "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    .end local v5    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .end local v6    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v8    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v9    # "remoteHostName":Ljava/lang/String;
    .end local v12    # "session":Ljavax/net/ssl/SSLSession;
    .end local v13    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v15    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .end local v18    # "valid":Z
    :cond_c
    new-instance v17, Ljava/lang/Thread;

    new-instance v19, Lproxy/SMTPProxy$mConnectRunnable$1$run$th$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lproxy/SMTPProxy$mConnectRunnable$1$run$th$1;-><init>(Lproxy/SMTPProxy$mConnectRunnable$1;)V

    check-cast v19, Ljava/lang/Runnable;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    .local v17, "th":Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$pipeHttpResponse(Lproxy/SMTPProxy;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 187
    .end local v17    # "th":Ljava/lang/Thread;
    .restart local v3    # "certKeystore":Lapp/ssldecryptor/CertKeyStore;
    .restart local v5    # "handshakeResult":Lapp/ssldecryptor/HandshakeResult;
    .restart local v6    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v8    # "remoteAddress":Ljava/net/InetSocketAddress;
    .restart local v9    # "remoteHostName":Ljava/lang/String;
    .restart local v12    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v13    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v15    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .restart local v18    # "valid":Z
    :catch_6
    move-exception v4

    .line 189
    .local v4, "e":Ljava/net/SocketTimeoutException;
    :try_start_16
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli SMTPProxy: get stream exception %s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0

    .line 191
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v4

    .line 192
    .local v4, "e":Ljava/io/IOException;
    :try_start_17
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "srv   <pxy>   cli SMTPProxy: get stream exception %s\n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lproxy/SMTPProxy$mConnectRunnable$1;->this$0:Lproxy/SMTPProxy;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lproxy/SMTPProxy;->access$cleanup(Lproxy/SMTPProxy;)V

    goto/16 :goto_0
.end method
