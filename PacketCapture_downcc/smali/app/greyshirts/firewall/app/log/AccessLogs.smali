.class public Lapp/greyshirts/firewall/app/log/AccessLogs;
.super Ljava/lang/Object;
.source "AccessLogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/firewall/app/log/AccessLogs$Observer;
    }
.end annotation


# static fields
.field private static final instance:Lapp/greyshirts/firewall/app/log/AccessLogs;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private logs:Lapp/greyshirts/firewall/app/log/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapp/greyshirts/firewall/app/log/RingBuffer",
            "<",
            "Lapp/greyshirts/firewall/app/log/AccessLogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lapp/greyshirts/firewall/app/log/AccessLogs$Observer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lapp/greyshirts/firewall/app/log/AccessLogs;

    invoke-direct {v0}, Lapp/greyshirts/firewall/app/log/AccessLogs;-><init>()V

    sput-object v0, Lapp/greyshirts/firewall/app/log/AccessLogs;->instance:Lapp/greyshirts/firewall/app/log/AccessLogs;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lapp/greyshirts/firewall/app/log/RingBuffer;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lapp/greyshirts/firewall/app/log/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->logs:Lapp/greyshirts/firewall/app/log/RingBuffer;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->lock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->observers:Ljava/util/WeakHashMap;

    .line 27
    return-void
.end method

.method public static getInstance()Lapp/greyshirts/firewall/app/log/AccessLogs;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lapp/greyshirts/firewall/app/log/AccessLogs;->instance:Lapp/greyshirts/firewall/app/log/AccessLogs;

    return-object v0
.end method


# virtual methods
.method public add(Lapp/greyshirts/firewall/app/log/AccessLogEntry;)V
    .locals 10
    .param p1, "elem"    # Lapp/greyshirts/firewall/app/log/AccessLogEntry;

    .prologue
    .line 50
    iget-object v5, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 56
    :try_start_0
    iget-object v4, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->logs:Lapp/greyshirts/firewall/app/log/RingBuffer;

    invoke-virtual {v4}, Lapp/greyshirts/firewall/app/log/RingBuffer;->count()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "num":I
    :goto_0
    if-ltz v1, :cond_0

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 57
    iget-object v4, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->logs:Lapp/greyshirts/firewall/app/log/RingBuffer;

    invoke-virtual {v4, v1}, Lapp/greyshirts/firewall/app/log/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;

    .line 58
    .local v0, "e":Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    invoke-virtual {p1}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x2bf20

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 75
    .end local v0    # "e":Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    :cond_0
    iget-object v4, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->logs:Lapp/greyshirts/firewall/app/log/RingBuffer;

    invoke-virtual {v4, p1}, Lapp/greyshirts/firewall/app/log/RingBuffer;->add(Ljava/lang/Object;)V

    .line 76
    iget-object v4, p0, Lapp/greyshirts/firewall/app/log/AccessLogs;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapp/greyshirts/firewall/app/log/AccessLogs$Observer;

    .line 77
    .local v3, "observer":Lapp/greyshirts/firewall/app/log/AccessLogs$Observer;
    invoke-interface {v3}, Lapp/greyshirts/firewall/app/log/AccessLogs$Observer;->onRingBufferChanged()V

    goto :goto_1

    .line 79
    .end local v1    # "i":I
    .end local v2    # "num":I
    .end local v3    # "observer":Lapp/greyshirts/firewall/app/log/AccessLogs$Observer;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 61
    .restart local v0    # "e":Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    .restart local v1    # "i":I
    .restart local v2    # "num":I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getAppUid()I

    move-result v4

    invoke-virtual {p1}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getAppUid()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 62
    invoke-virtual {v0}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getServerIpBytes()[B

    move-result-object v4

    invoke-virtual {p1}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getServerIpBytes()[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v0}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getServerPort()I

    move-result v4

    invoke-virtual {p1}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getServerPort()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 64
    invoke-virtual {v0}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getType()I

    move-result v4

    invoke-virtual {p1}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->getType()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 68
    monitor-exit v5

    .line 81
    .end local v0    # "e":Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    :goto_2
    return-void

    .line 56
    .restart local v0    # "e":Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "e":Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
