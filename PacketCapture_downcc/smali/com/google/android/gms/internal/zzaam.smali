.class public Lcom/google/android/gms/internal/zzaam;
.super Lcom/google/android/gms/internal/zzaae;


# instance fields
.field private final zzaBh:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzayX:Lcom/google/android/gms/internal/zzaax;


# virtual methods
.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaae;->onStart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaBh:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaam;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaae;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/internal/zzaam;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzvx()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvx()V

    return-void
.end method

.method zzwb()Lcom/google/android/gms/common/util/zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaBh:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method
