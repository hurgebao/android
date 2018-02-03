.class Lcom/google/android/gms/internal/zzcz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcz$zza;
    }
.end annotation


# instance fields
.field private final zzwS:Landroid/app/Application;

.field private final zzxm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private zzxn:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz;->zzxn:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzxm:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcz;->zzwS:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcz$1;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcz$7;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcz$4;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcz$3;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcz$6;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcz$2;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcz$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcz$5;-><init>(Lcom/google/android/gms/internal/zzcz;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcz;->zza(Lcom/google/android/gms/internal/zzcz$zza;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzcz$zza;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzxm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzcz$zza;->zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcz;->zzxn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcz;->zzwS:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcz;->zzxn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error while dispatching lifecycle callback."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
