.class Lcom/google/android/gms/internal/zzlv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlv;->zzco()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQk:Lcom/google/android/gms/internal/zzlv;

.field final synthetic zzsX:Lcom/google/android/gms/internal/zzpb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/internal/zzpb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$1;->zzQk:Lcom/google/android/gms/internal/zzlv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlv$1;->zzsX:Lcom/google/android/gms/internal/zzpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$1;->zzQk:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/internal/zzlq$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv$1;->zzsX:Lcom/google/android/gms/internal/zzpb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlq$zza;->zzb(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method
