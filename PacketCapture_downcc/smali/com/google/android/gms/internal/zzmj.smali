.class public Lcom/google/android/gms/internal/zzmj;
.super Lcom/google/android/gms/common/internal/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzmt;",
        ">;"
    }
.end annotation


# instance fields
.field final zzRw:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;I)V
    .locals 7

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;Ljava/lang/String;)V

    iput p5, p0, Lcom/google/android/gms/internal/zzmj;->zzRw:I

    return-void
.end method


# virtual methods
.method protected zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmt$zza;->zzae(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmt;

    move-result-object v0

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmj;->zzad(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmt;

    move-result-object v0

    return-object v0
.end method

.method public zzjq()Lcom/google/android/gms/internal/zzmt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmt;

    return-object v0
.end method
