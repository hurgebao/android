.class Lcom/google/android/gms/internal/zzmx$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmx$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqp$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzjj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzTe:Lcom/google/android/gms/internal/zzmx$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmx$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx$2$1;->zzTe:Lcom/google/android/gms/internal/zzmx$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmx$2$1;->zzTe:Lcom/google/android/gms/internal/zzmx$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmx$2;->zzTc:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzjr()Lcom/google/android/gms/internal/zzii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmx$2$1;->zzTe:Lcom/google/android/gms/internal/zzmx$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmx$2;->zzTd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzii;->zzac(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmx$2$1;->zzb(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method
