.class public Lapp/greyshirts/firewall/app/MyVpnService;
.super Landroid/net/VpnService;
.source "MyVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/app/MyVpnService$VpnStartThread;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lapp/greyshirts/firewall/app/MyVpnService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lapp/greyshirts/firewall/app/MyVpnService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 19
    iput-object p1, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method private setupVpn()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v3

    const-string v4, "VpnService: try to setup VPN."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 132
    .local v0, "builder":Landroid/net/VpnService$Builder;
    const-string v3, "firewall"

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 133
    const-string v3, "10.0.8.1"

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 134
    const-string v3, "0.0.0.0"

    invoke-virtual {v0, v3, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 141
    :try_start_0
    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 154
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_1

    .line 155
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v3

    const-string v4, "VpnService: builder.establish() failed. pfd==null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v3, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    new-instance v4, Lapp/greyshirts/firewall/app/MyVpnService$2;

    invoke-direct {v4, p0}, Lapp/greyshirts/firewall/app/MyVpnService$2;-><init>(Lapp/greyshirts/firewall/app/MyVpnService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VpnService: builder.establish() failed. e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v3, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    new-instance v4, Lapp/greyshirts/firewall/app/MyVpnService$1;

    invoke-direct {v4, p0, v1}, Lapp/greyshirts/firewall/app/MyVpnService$1;-><init>(Lapp/greyshirts/firewall/app/MyVpnService;Ljava/lang/IllegalStateException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 166
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v3

    const-string v4, "VpnService: call ProxyWorker.start()"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->getInstance()Lapp/greyshirts/firewall/proxy/ProxyWorker;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->start(Landroid/net/VpnService;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method private stopVpn()V
    .locals 3

    .prologue
    .line 171
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v0

    const-string v1, "VpnService: call ProxyWorker.stop()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->getInstance()Lapp/greyshirts/firewall/proxy/ProxyWorker;

    move-result-object v0

    invoke-virtual {v0}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->stop()V

    .line 173
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 198
    const-string v0, "NRFW"

    const-string v1, "VpnService onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v0

    const-string v1, "VpnService: onDestroy() called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public onRevoke()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string v0, "NRFW"

    const-string v1, "VpnService: onRevoke() called. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v0

    const-string v1, "VpnService: onRevoke() called"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lapp/greyshirts/firewall/app/MyVpnService;->stopVpn()V

    .line 186
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v0

    const-string v1, "VpnService: call stopSelf()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lapp/greyshirts/firewall/app/MyVpnService;->stopSelf()V

    .line 188
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VpnService: onStartCommand intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string v2, "NRFW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VpnService onStartCommand intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v1, "Service restarted"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    const-string v1, "NRFW"

    const-string v2, "service restarted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v1

    const-string v2, "VpnService: intent=null. that means server is restarted automatically. Send STARTVPN command myself"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    new-instance v2, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "service restarted"

    invoke-direct {v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 77
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 78
    .restart local p1    # "intent":Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    :cond_0
    const-string v1, "cmd"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v2

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "unkonwn service cmd"

    invoke-direct {v1, v3}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "flags"

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "startId"

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "intent"

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 103
    invoke-virtual {v2, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 113
    :goto_2
    return v5

    .line 60
    .end local v0    # "cmd":I
    :cond_1
    const-string v1, "(null)"

    goto/16 :goto_0

    .line 62
    :cond_2
    const-string v1, "(null)"

    goto/16 :goto_1

    .line 84
    .restart local v0    # "cmd":I
    :pswitch_0
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v1

    const-string v2, "VpnService: CMD_STARTVPN"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lapp/greyshirts/firewall/app/MyVpnService;->handler:Landroid/os/Handler;

    .line 86
    new-instance v1, Lapp/greyshirts/firewall/app/MyVpnService$VpnStartThread;

    invoke-direct {v1, p0, p0}, Lapp/greyshirts/firewall/app/MyVpnService$VpnStartThread;-><init>(Lapp/greyshirts/firewall/app/MyVpnService;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lapp/greyshirts/firewall/app/MyVpnService$VpnStartThread;->start()V

    goto :goto_2

    .line 89
    :pswitch_1
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v1

    const-string v2, "VpnService: CMD_STOPVPN"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lapp/greyshirts/firewall/app/MyVpnService;->stopVpn()V

    .line 91
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v1

    const-string v2, "VpnService: call stopSelf()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lapp/greyshirts/firewall/app/MyVpnService;->stopSelf()V

    goto :goto_2

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/net/VpnService;->onTrimMemory(I)V

    .line 193
    invoke-static {p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v0

    const-string v1, "VpnService: onTrimMemory() called. level=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lapp/greyshirts/firewall/app/MyVpnService;->setupVpn()V

    .line 122
    const-string v0, "NRFW"

    const-string v1, "thread end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
