.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# instance fields
.field private final zzrz:Lcom/google/android/gms/internal/zzfe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfe;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/zzfe$zza;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfe;-><init>(Lcom/google/android/gms/internal/zzfe$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public zzbp()Lcom/google/android/gms/internal/zzfe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    return-object v0
.end method
