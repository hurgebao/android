.class Lcom/google/android/gms/internal/zzaq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaq;->zza(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzpE:Lcom/google/android/gms/internal/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaq$1;->zzpE:Lcom/google/android/gms/internal/zzaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq$1;->zzpE:Lcom/google/android/gms/internal/zzaq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaq;->zzpC:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaq;->zzS()Landroid/os/ConditionVariable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq$1;->zzpE:Lcom/google/android/gms/internal/zzaq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaq;->zzpC:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDN:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/zzzk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaq$1;->zzpE:Lcom/google/android/gms/internal/zzaq;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaq;->zza(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzbd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbd;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzzk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/zzaq;->zzpB:Lcom/google/android/gms/internal/zzzk;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaq$1;->zzpE:Lcom/google/android/gms/internal/zzaq;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzaq;->zzpC:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/zzaq;->zzS()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
