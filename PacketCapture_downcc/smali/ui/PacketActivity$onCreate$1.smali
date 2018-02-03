.class public final Lui/PacketActivity$onCreate$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "PacketActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/PacketActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/PacketActivity;


# direct methods
.method constructor <init>(Lui/PacketActivity;)V
    .locals 0
    .param p1, "$outer"    # Lui/PacketActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lui/PacketActivity$onCreate$1;->this$0:Lui/PacketActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lui/PacketActivity$onCreate$1;->this$0:Lui/PacketActivity;

    invoke-virtual {v0}, Lui/PacketActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lui/PacketActivity$onCreate$1;->this$0:Lui/PacketActivity;

    invoke-virtual {v0}, Lui/PacketActivity;->getMInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method
