.class Landroid/arch/lifecycle/LiveData$2;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/LiveData;

    .prologue
    .line 99
    .local p0, "this":Landroid/arch/lifecycle/LiveData$2;, "Landroid/arch/lifecycle/LiveData$2;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    .local p0, "this":Landroid/arch/lifecycle/LiveData$2;, "Landroid/arch/lifecycle/LiveData$2;"
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "newValue":Ljava/lang/Object;
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {}, Landroid/arch/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/arch/lifecycle/LiveData;->access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 109
    return-void

    .line 106
    .end local v0    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
