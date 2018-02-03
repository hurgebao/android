.class public final Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;
.super Ljava/lang/Object;
.source "SSLHandshake.kt"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/ssldecryptor/SSLHandshakeKt;->sslSyncHandshake(Ljava/net/Socket;Ljava/lang/String;I)Lapp/ssldecryptor/HandshakeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $peerCert:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "$captured_local_variable$1"    # Lkotlin/jvm/internal/Ref$ObjectRef;

    .prologue
    .line 51
    iput-object p1, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$peerCert:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 10
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .prologue
    const/4 v5, 0x0

    const-string v4, "event"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    nop

    .line 54
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "SSLHS: handshake completed %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    nop

    .line 57
    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 61
    .local v3, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v3, :cond_0

    :try_start_2
    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    array-length v4, v4

    if-nez v4, :cond_1

    .line 64
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "SSLHS: no peer certificate\n"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    iget-object v4, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    .end local v3    # "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :try_start_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "SSLHS: cannot get certificate. exceptoin %s\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    iget-object v4, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .end local v2    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v3    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_1
    move v4, v5

    .line 68
    :goto_1
    :try_start_4
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 69
    .local v1, "cert":Ljava/security/cert/Certificate;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "cert: %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_2
    iget-object v4, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$peerCert:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    iget-object v4, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .end local v3    # "peerCertificates":[Ljava/security/cert/Certificate;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lapp/ssldecryptor/SSLHandshakeKt$sslSyncHandshake$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4
.end method
