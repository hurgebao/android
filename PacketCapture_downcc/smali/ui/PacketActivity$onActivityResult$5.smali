.class final Lui/PacketActivity$onActivityResult$5;
.super Ljava/lang/Object;
.source "PacketActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/PacketActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/PacketActivity;


# direct methods
.method constructor <init>(Lui/PacketActivity;)V
    .locals 0

    iput-object p1, p0, Lui/PacketActivity$onActivityResult$5;->this$0:Lui/PacketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 234
    nop

    .line 235
    :try_start_0
    iget-object v0, p0, Lui/PacketActivity$onActivityResult$5;->this$0:Lui/PacketActivity;

    invoke-virtual {v0}, Lui/PacketActivity;->getMInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    :cond_0
    :goto_1
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lui/PacketActivity$onActivityResult$5;->this$0:Lui/PacketActivity;

    invoke-virtual {v0}, Lui/PacketActivity;->getMInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
