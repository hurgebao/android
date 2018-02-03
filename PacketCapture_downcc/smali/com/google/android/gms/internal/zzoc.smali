.class public Lcom/google/android/gms/internal/zzoc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzVq:Lcom/google/android/gms/internal/zznu;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoc;->mContext:Landroid/content/Context;

    return-void
.end method
