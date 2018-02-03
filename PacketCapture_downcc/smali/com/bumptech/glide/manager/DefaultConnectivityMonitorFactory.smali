.class public Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitorFactory.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .prologue
    .line 21
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 22
    .local v1, "permissionResult":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 23
    .local v0, "hasPermission":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    :goto_1
    return-object v2

    .line 22
    .end local v0    # "hasPermission":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    .restart local v0    # "hasPermission":Z
    :cond_1
    new-instance v2, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    goto :goto_1
.end method
