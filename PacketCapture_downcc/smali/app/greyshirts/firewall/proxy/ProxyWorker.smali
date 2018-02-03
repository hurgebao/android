.class public Lapp/greyshirts/firewall/proxy/ProxyWorker;
.super Ljava/lang/Object;
.source "ProxyWorker.java"

# interfaces
.implements Lapp/ssldecryptor/SockProtector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;,
        Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOW_CONNECTION:I = 0x1

.field public static final ACTION_CREATE_CLIENT_AND_CONNECT:I = 0x2

.field public static final ACTION_CREATE_CLIENT_AND_PEND:I = 0x3

.field public static final ACTION_DENY_CONNECTION:I = 0x2

.field public static final ACTION_DO_NOTHING:I = 0x3

.field public static final ACTION_IGNORE_PACKET:I = 0x1

.field static final TAG:Ljava/lang/String; = "NRFW"

.field private static final instance:Lapp/greyshirts/firewall/proxy/ProxyWorker;


# instance fields
.field private captureSetId:Ljava/lang/String;

.field private final dnsListener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

.field private vpn:Landroid/net/VpnService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;

    invoke-direct {v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;-><init>()V

    sput-object v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->instance:Lapp/greyshirts/firewall/proxy/ProxyWorker;

    .line 492
    const-string v0, "core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$1;

    invoke-direct {v0, p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker$1;-><init>(Lapp/greyshirts/firewall/proxy/ProxyWorker;)V

    iput-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->dnsListener:Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lapp/greyshirts/firewall/proxy/ProxyWorker;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/proxy/ProxyWorker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeNotifyDnsResolved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lapp/greyshirts/firewall/proxy/ProxyWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/proxy/ProxyWorker;

    .prologue
    .line 31
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->captureSetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lapp/greyshirts/firewall/proxy/ProxyWorker;)Landroid/net/VpnService;
    .locals 1
    .param p0, "x0"    # Lapp/greyshirts/firewall/proxy/ProxyWorker;

    .prologue
    .line 31
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    return-object v0
.end method

.method static synthetic access$300(Lapp/greyshirts/firewall/proxy/ProxyWorker;IZI)V
    .locals 0
    .param p0, "x0"    # Lapp/greyshirts/firewall/proxy/ProxyWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeNotifyProxyConnectResult(IZI)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lapp/greyshirts/firewall/proxy/ProxyWorker;
    .locals 2

    .prologue
    .line 36
    const-class v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lapp/greyshirts/firewall/proxy/ProxyWorker;->instance:Lapp/greyshirts/firewall/proxy/ProxyWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeDumpMemoryLogging(Ljava/lang/String;)V
.end method

.method private native nativeIsRunning()Z
.end method

.method private native nativeNotifyDnsResolved(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeNotifyNeedToRequeryBlockingRule()Z
.end method

.method private native nativeNotifyProxyConnectResult(IZI)V
.end method

.method private native nativeProbe(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeSetLogging(I)V
.end method

.method private native nativeStart(I)V
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public causeCrash(Z)V
    .locals 1
    .param p1, "inThisThread"    # Z

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-string v0, "crash me"

    invoke-direct {p0, v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeProbe(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string v0, "crash newthread"

    invoke-direct {p0, v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeProbe(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized dumpMemoryLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeDumpMemoryLogging(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "event"

    invoke-direct {p0, v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeProbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeIsRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyBlockingRuleChanged()Z
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeIsRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyNetworkStateChanged()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeIsRunning()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pollNetworkStateChange()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public protect(I)Z
    .locals 1
    .param p1, "socket"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v0, p1}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "sock"    # Ljava/net/Socket;

    .prologue
    .line 478
    iget-object v0, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v0, p1}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public queryActionForNewTCPConnection(I[BI[BI)Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    .locals 26
    .param p1, "uid"    # I
    .param p2, "serverIp"    # [B
    .param p3, "serverPort"    # I
    .param p4, "localIp"    # [B
    .param p5, "localPort"    # I

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v3}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lapp/greyshirts/firewall/app/AppInfo;->createFromUid(Landroid/content/Context;I)Lapp/greyshirts/firewall/app/AppInfo;

    move-result-object v12

    .line 220
    .local v12, "appInfo":Lapp/greyshirts/firewall/app/AppInfo;
    if-nez v12, :cond_0

    .line 221
    const/16 v24, 0x0

    .line 361
    :goto_0
    return-object v24

    .line 224
    :cond_0
    sget-object v3, Lapp/greyshirts/firewall/proxy/CaptureTarget;->INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lapp/greyshirts/firewall/proxy/CaptureTarget;->isCaptureTarget(I)Z

    move-result v20

    .line 227
    .local v20, "doCapture":Z
    if-eqz v20, :cond_1

    .line 228
    const/16 v22, 0x0

    .line 230
    .local v22, "file":Ljava/io/File;
    :try_start_0
    const-string v3, "capture"

    const-string v5, ".dat"

    move-object/from16 v0, p0

    iget-object v7, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v7}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v3, v5, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 235
    :goto_1
    move-object/from16 v6, v22

    .line 240
    .end local v22    # "file":Ljava/io/File;
    .local v6, "captureFile":Ljava/io/File;
    :goto_2
    new-instance v24, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;

    invoke-direct/range {v24 .. v24}, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;-><init>()V

    .line 241
    .local v24, "ret":Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    if-nez v20, :cond_2

    .line 242
    invoke-static {}, Lapp/greyshirts/firewall/app/log/AccessLogs;->getInstance()Lapp/greyshirts/firewall/app/log/AccessLogs;

    move-result-object v9

    const/4 v2, 0x1

    iget-object v6, v12, Lapp/greyshirts/firewall/app/AppInfo;->allAppName:Ljava/lang/String;

    .end local v6    # "captureFile":Ljava/io/File;
    iget-object v7, v12, Lapp/greyshirts/firewall/app/AppInfo;->leaderAppName:Ljava/lang/String;

    iget-object v8, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->newTCPAccessLog(I[BIILjava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/app/PackageNames;)Lapp/greyshirts/firewall/app/log/AccessLogEntry;

    move-result-object v3

    invoke-virtual {v9, v3}, Lapp/greyshirts/firewall/app/log/AccessLogs;->add(Lapp/greyshirts/firewall/app/log/AccessLogEntry;)V

    .line 244
    const/4 v3, 0x2

    move-object/from16 v0, v24

    iput v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 245
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 246
    iget-object v3, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;

    goto :goto_0

    .line 231
    .end local v24    # "ret":Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    .restart local v22    # "file":Ljava/io/File;
    :catch_0
    move-exception v21

    .line 232
    .local v21, "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 237
    .end local v21    # "e":Ljava/io/IOException;
    .end local v22    # "file":Ljava/io/File;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "captureFile":Ljava/io/File;
    goto :goto_2

    .line 248
    .restart local v24    # "ret":Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d.%d.%d.%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    .line 249
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    .line 250
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    .line 251
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    .line 252
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 248
    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "ipStr":Ljava/lang/String;
    iget-object v3, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    invoke-virtual {v3}, Lapp/greyshirts/firewall/app/PackageNames;->getCommaJoinedString()Ljava/lang/String;

    move-result-object v23

    .line 255
    .local v23, "pkgNames":Ljava/lang/String;
    const/16 v3, 0x1bb

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1d1

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3e1

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3e3

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    sget-object v3, Lsetting/AppSetting;->sslPorts:Ljava/util/List;

    .line 259
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x146c

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    const-string v3, "com.google.android.gms"

    .line 260
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.google.android.gsf"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    :cond_3
    const/16 v3, 0x146c

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 264
    const-string v3, "NRFW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "5228, pkgs="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    invoke-virtual {v7}, Lapp/greyshirts/firewall/app/PackageNames;->getCommaJoinedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_4
    new-instance v2, Lapp/ssldecryptor/HTTPSProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v3}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v5, p3

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lapp/ssldecryptor/HTTPSProxy;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Lapp/ssldecryptor/SockProtector;)V

    .line 270
    .local v2, "sslProxy":Lapp/ssldecryptor/HTTPSProxy;
    new-instance v7, Lapp/greyshirts/firewall/proxy/ProxyWorker$2;

    move-object/from16 v8, p0

    move-object v9, v6

    move-object v10, v4

    move/from16 v11, p3

    move/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Lapp/greyshirts/firewall/proxy/ProxyWorker$2;-><init>(Lapp/greyshirts/firewall/proxy/ProxyWorker;Ljava/io/File;Ljava/lang/String;ILapp/greyshirts/firewall/app/AppInfo;I)V

    invoke-virtual {v2, v7}, Lapp/ssldecryptor/HTTPSProxy;->start(Lapp/ssldecryptor/HTTPSProxy$OnSSLProxyEventListener;)V

    .line 298
    const/4 v3, 0x3

    move-object/from16 v0, v24

    iput v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 299
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 300
    iget-object v3, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;

    goto/16 :goto_0

    .line 301
    .end local v2    # "sslProxy":Lapp/ssldecryptor/HTTPSProxy;
    :cond_5
    const/16 v3, 0x24b

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 302
    new-instance v2, Lproxy/SMTPProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v3}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v5, p3

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lproxy/SMTPProxy;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/io/File;Lapp/ssldecryptor/SockProtector;)V

    .line 303
    .local v2, "sslProxy":Lproxy/SMTPProxy;
    new-instance v7, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;

    move-object/from16 v8, p0

    move-object v9, v6

    move-object v10, v4

    move/from16 v11, p3

    move/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Lapp/greyshirts/firewall/proxy/ProxyWorker$3;-><init>(Lapp/greyshirts/firewall/proxy/ProxyWorker;Ljava/io/File;Ljava/lang/String;ILapp/greyshirts/firewall/app/AppInfo;I)V

    invoke-virtual {v2, v7}, Lproxy/SMTPProxy;->start(Lproxy/SMTPProxy$OnSSLProxyEventListener;)V

    .line 331
    const/4 v3, 0x3

    move-object/from16 v0, v24

    iput v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 332
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 333
    iget-object v3, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;

    goto/16 :goto_0

    .line 337
    .end local v2    # "sslProxy":Lproxy/SMTPProxy;
    :cond_6
    if-eqz v6, :cond_7

    .line 338
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 339
    .local v25, "values":Landroid/content/ContentValues;
    const-string v3, "capture_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    const-string v3, "capture_file_name"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "capture_server_ip"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v3, "capture_server_port"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v3, "capture_app_name_main"

    iget-object v5, v12, Lapp/greyshirts/firewall/app/AppInfo;->leaderAppName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "capture_app_name_all"

    iget-object v5, v12, Lapp/greyshirts/firewall/app/AppInfo;->allAppName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "capture_proxy_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v3, "capture_protocol_no"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v3, "capture_pkg_name_all"

    iget-object v5, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    invoke-virtual {v5}, Lapp/greyshirts/firewall/app/PackageNames;->getCommaJoinedString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v3, "capture_set_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->captureSetId:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v3}, Landroid/net/VpnService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 353
    .end local v25    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-static {}, Lapp/greyshirts/firewall/app/log/AccessLogs;->getInstance()Lapp/greyshirts/firewall/app/log/AccessLogs;

    move-result-object v3

    const/4 v13, 0x1

    iget-object v0, v12, Lapp/greyshirts/firewall/app/AppInfo;->allAppName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v12, Lapp/greyshirts/firewall/app/AppInfo;->leaderAppName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    move-object/from16 v19, v0

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p1

    invoke-static/range {v13 .. v19}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->newTCPAccessLog(I[BIILjava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/app/PackageNames;)Lapp/greyshirts/firewall/app/log/AccessLogEntry;

    move-result-object v5

    invoke-virtual {v3, v5}, Lapp/greyshirts/firewall/app/log/AccessLogs;->add(Lapp/greyshirts/firewall/app/log/AccessLogEntry;)V

    .line 355
    const/4 v3, 0x2

    move-object/from16 v0, v24

    iput v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 356
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 357
    iget-object v3, v12, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    move-object/from16 v0, v24

    iput-object v3, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;

    goto/16 :goto_0

    .line 356
    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public queryActionForNewUDPConnection(I[BI[BI)Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    .locals 17
    .param p1, "uid"    # I
    .param p2, "serverIp"    # [B
    .param p3, "serverPort"    # I
    .param p4, "localIp"    # [B
    .param p5, "localPort"    # I

    .prologue
    .line 379
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%d.%d.%d.%d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-byte v16, p2, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 380
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-byte v16, p2, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 381
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x2

    aget-byte v16, p2, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 382
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x3

    aget-byte v16, p2, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 383
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 379
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, "ipStr":Ljava/lang/String;
    const/4 v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 389
    const-string v2, "unknown"

    .line 390
    .local v2, "allAppName":Ljava/lang/String;
    const-string v8, "unknown"

    .line 391
    .local v8, "leaderAppName":Ljava/lang/String;
    const-string v12, "unknown"

    invoke-static {v12}, Lapp/greyshirts/firewall/app/PackageNames;->newInstanceFromCommaList(Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;

    move-result-object v9

    .line 392
    .local v9, "pkgs":Lapp/greyshirts/firewall/app/PackageNames;
    const/4 v4, 0x0

    .line 413
    .local v4, "doCapture":Z
    :goto_0
    new-instance v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;

    invoke-direct {v10}, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;-><init>()V

    .line 414
    .local v10, "ret":Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    if-eqz v4, :cond_2

    .line 416
    :try_start_0
    const-string v12, "capture"

    const-string v13, ".dat"

    move-object/from16 v0, p0

    iget-object v14, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v14}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 418
    .local v6, "file":Ljava/io/File;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "capture_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v12, "capture_file_name"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v12, "capture_server_ip"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v12, "capture_server_port"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v12, "capture_app_name_main"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v12, "capture_app_name_all"

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v12, "capture_proxy_type"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string v12, "capture_protocol_no"

    const/16 v13, 0x11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v12, "capture_pkg_name_all"

    invoke-virtual {v9}, Lapp/greyshirts/firewall/app/PackageNames;->getCommaJoinedString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v12, "capture_set_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->captureSetId:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v12}, Landroid/net/VpnService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 431
    const/4 v12, 0x2

    iput v12, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 432
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 433
    iput-object v9, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_1
    return-object v10

    .line 394
    .end local v2    # "allAppName":Ljava/lang/String;
    .end local v4    # "doCapture":Z
    .end local v8    # "leaderAppName":Ljava/lang/String;
    .end local v9    # "pkgs":Lapp/greyshirts/firewall/app/PackageNames;
    .end local v10    # "ret":Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    invoke-virtual {v12}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move/from16 v0, p1

    invoke-static {v12, v0}, Lapp/greyshirts/firewall/app/AppInfo;->createFromUid(Landroid/content/Context;I)Lapp/greyshirts/firewall/app/AppInfo;

    move-result-object v3

    .line 395
    .local v3, "appInfo":Lapp/greyshirts/firewall/app/AppInfo;
    if-nez v3, :cond_1

    .line 396
    const-string v12, "NRFW"

    const-string v13, "no Package info for UDP packet"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v2, "unknown"

    .line 398
    .restart local v2    # "allAppName":Ljava/lang/String;
    const-string v8, "unknown"

    .line 399
    .restart local v8    # "leaderAppName":Ljava/lang/String;
    const-string v12, "unknown"

    invoke-static {v12}, Lapp/greyshirts/firewall/app/PackageNames;->newInstanceFromCommaList(Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;

    move-result-object v9

    .line 400
    .restart local v9    # "pkgs":Lapp/greyshirts/firewall/app/PackageNames;
    const/4 v4, 0x0

    .restart local v4    # "doCapture":Z
    goto/16 :goto_0

    .line 402
    .end local v2    # "allAppName":Ljava/lang/String;
    .end local v4    # "doCapture":Z
    .end local v8    # "leaderAppName":Ljava/lang/String;
    .end local v9    # "pkgs":Lapp/greyshirts/firewall/app/PackageNames;
    :cond_1
    iget-object v2, v3, Lapp/greyshirts/firewall/app/AppInfo;->allAppName:Ljava/lang/String;

    .line 403
    .restart local v2    # "allAppName":Ljava/lang/String;
    iget-object v8, v3, Lapp/greyshirts/firewall/app/AppInfo;->leaderAppName:Ljava/lang/String;

    .line 404
    .restart local v8    # "leaderAppName":Ljava/lang/String;
    iget-object v9, v3, Lapp/greyshirts/firewall/app/AppInfo;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    .line 405
    .restart local v9    # "pkgs":Lapp/greyshirts/firewall/app/PackageNames;
    sget-object v12, Lapp/greyshirts/firewall/proxy/CaptureTarget;->INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lapp/greyshirts/firewall/proxy/CaptureTarget;->isCaptureTarget(I)Z

    move-result v4

    .restart local v4    # "doCapture":Z
    goto/16 :goto_0

    .line 434
    .end local v3    # "appInfo":Lapp/greyshirts/firewall/app/AppInfo;
    .restart local v10    # "ret":Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;
    :catch_0
    move-exception v5

    .line 435
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 436
    const/4 v12, 0x2

    iput v12, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 437
    const/4 v12, 0x0

    iput-object v12, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 438
    iput-object v9, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;

    goto :goto_1

    .line 441
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v12, 0x2

    iput v12, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->action:I

    .line 442
    const/4 v12, 0x0

    iput-object v12, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->dumpFilePath:Ljava/lang/String;

    .line 443
    iput-object v9, v10, Lapp/greyshirts/firewall/proxy/ProxyWorker$ActionAndPkgs;->pkgs:Ljava/lang/Object;

    goto :goto_1
.end method

.method public queryActionForTCP([BILjava/lang/Object;Z)I
    .locals 1
    .param p1, "serverIp"    # [B
    .param p2, "serverPort"    # I
    .param p3, "pkgs"    # Ljava/lang/Object;
    .param p4, "isPending"    # Z

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized setLogging(Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;)V
    .locals 2
    .param p1, "mode"    # Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    sget-object v0, Lapp/greyshirts/firewall/proxy/ProxyWorker$4;->$SwitchMap$app$greyshirts$firewall$proxy$ProxyWorker$Logging:[I

    invoke-virtual {p1}, Lapp/greyshirts/firewall/proxy/ProxyWorker$Logging;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeSetLogging(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeSetLogging(I)V

    goto :goto_0

    .line 124
    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeSetLogging(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized start(Landroid/net/VpnService;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "vpn"    # Landroid/net/VpnService;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeStop()V

    .line 80
    iput-object p1, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->vpn:Landroid/net/VpnService;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "time":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->captureSetId:Ljava/lang/String;

    .line 84
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "captureset_set_id"

    iget-object v4, p0, Lapp/greyshirts/firewall/proxy/ProxyWorker;->captureSetId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "captureset_start_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-virtual {p1}, Landroid/net/VpnService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 89
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    invoke-direct {p0, v3}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeStart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 79
    .end local v0    # "time":J
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->nativeIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "worker running"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "worker not running"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
