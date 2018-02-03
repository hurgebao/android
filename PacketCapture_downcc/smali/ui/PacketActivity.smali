.class public final Lui/PacketActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PacketActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/PacketActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/PacketActivity$Companion;


# instance fields
.field private final REQ_SAVE_BOTH:I

.field private final REQ_SAVE_DOWNSTREAM:I

.field private final REQ_SAVE_PCAP:I

.field private final REQ_SAVE_UPSTREAM:I

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private selected:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/PacketActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/PacketActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/PacketActivity;->Companion:Lui/PacketActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 36
    const v0, 0x7f0b00ba

    iput v0, p0, Lui/PacketActivity;->selected:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lui/PacketActivity;->REQ_SAVE_DOWNSTREAM:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lui/PacketActivity;->REQ_SAVE_BOTH:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lui/PacketActivity;->REQ_SAVE_PCAP:I

    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 197
    sget-object v0, Lui/PacketFragment;->Companion:Lui/PacketFragment$Companion;

    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui/PacketFragment$Companion;->newFragment(Lui/decode/DecodeArg;)Lui/PacketFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 186
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    sget-object v0, Lui/decode/DecodeFragment;->Companion:Lui/decode/DecodeFragment$Companion;

    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lui/decode/DecodeFragment$Companion;->newFragment(Lui/decode/DecodeArg;Z)Lui/decode/DecodeFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 191
    :pswitch_1
    sget-object v0, Lui/decode/DecodeFragment;->Companion:Lui/decode/DecodeFragment$Companion;

    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lui/decode/DecodeFragment$Companion;->newFragment(Lui/decode/DecodeArg;Z)Lui/decode/DecodeFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 194
    :pswitch_2
    sget-object v0, Lui/PacketFragment;->Companion:Lui/PacketFragment$Companion;

    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui/PacketFragment$Companion;->newFragment(Lui/decode/DecodeArg;)Lui/PacketFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00b8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getArgDecodeArg()Lui/decode/DecodeArg;
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0}, Lui/PacketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "decodeArg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 55
    .local v0, "arg":Ljava/io/Serializable;
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v2

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "decode arg null"

    invoke-direct {v1, v3}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "appName"

    invoke-virtual {p0}, Lui/PacketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "appName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 58
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type ui.decode.DecodeArg"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v0, Lui/decode/DecodeArg;

    .end local v0    # "arg":Ljava/io/Serializable;
    return-object v0
.end method

.method public final getMInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 204
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-eqz p3, :cond_0

    const-string v2, "fileName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    .local v0, "outFileName":Ljava/lang/String;
    iget v2, p0, Lui/PacketActivity;->REQ_SAVE_UPSTREAM:I

    if-ne p1, v2, :cond_2

    .line 210
    sget-object v2, Lui/PacketActivity$onActivityResult$1;->INSTANCE:Lui/PacketActivity$onActivityResult$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, v2}, Lui/PacketActivity;->saveStreams(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 228
    :goto_1
    const/4 v1, 0x0

    .line 232
    .local v1, "rand":I
    if-nez v1, :cond_0

    .line 233
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lui/PacketActivity$onActivityResult$5;

    invoke-direct {v2, p0}, Lui/PacketActivity$onActivityResult$5;-><init>(Lui/PacketActivity;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 212
    .end local v1    # "rand":I
    :cond_2
    iget v2, p0, Lui/PacketActivity;->REQ_SAVE_DOWNSTREAM:I

    if-ne p1, v2, :cond_3

    .line 213
    sget-object v2, Lui/PacketActivity$onActivityResult$2;->INSTANCE:Lui/PacketActivity$onActivityResult$2;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, v2}, Lui/PacketActivity;->saveStreams(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    goto :goto_1

    .line 215
    :cond_3
    iget v2, p0, Lui/PacketActivity;->REQ_SAVE_BOTH:I

    if-ne p1, v2, :cond_4

    .line 216
    sget-object v2, Lui/PacketActivity$onActivityResult$3;->INSTANCE:Lui/PacketActivity$onActivityResult$3;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, v2}, Lui/PacketActivity;->saveStreams(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    goto :goto_1

    .line 218
    :cond_4
    iget v2, p0, Lui/PacketActivity;->REQ_SAVE_PCAP:I

    if-ne p1, v2, :cond_5

    .line 219
    new-instance v2, Lui/PacketActivity$onActivityResult$4;

    invoke-direct {v2, p0}, Lui/PacketActivity$onActivityResult$4;-><init>(Lui/PacketActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, v2}, Lui/PacketActivity;->saveStreams(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    goto :goto_1

    .line 226
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lui/PacketActivity;->setContentView(I)V

    .line 66
    if-nez p1, :cond_6

    .line 67
    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v0

    .line 68
    .local v0, "decodeArg":Lui/decode/DecodeArg;
    invoke-virtual {v0}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getProtocol()I

    move-result v3

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getPort()I

    move-result v4

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getPkgs()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcapt/DecoderKt;->detectDecoder(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 69
    const v2, 0x7f0b00b8

    .line 68
    :goto_0
    iput v2, p0, Lui/PacketActivity;->selected:I

    .line 73
    iget v2, p0, Lui/PacketActivity;->selected:I

    invoke-virtual {p0, v2}, Lui/PacketActivity;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 74
    .local v1, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lui/PacketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0b007b

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 77
    .end local v0    # "decodeArg":Lui/decode/DecodeArg;
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    invoke-virtual {p0}, Lui/PacketActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lui/PacketActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lui/PacketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "appName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_1
    new-instance v2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lui/PacketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 84
    iget-object v2, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v2, :cond_2

    const-string v3, "ca-app-pub-3304218499422412/4884987689"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 86
    :cond_2
    iget-object v2, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 87
    :cond_3
    iget-object v3, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v3, :cond_4

    new-instance v2, Lui/PacketActivity$onCreate$1;

    invoke-direct {v2, p0}, Lui/PacketActivity$onCreate$1;-><init>(Lui/PacketActivity;)V

    check-cast v2, Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 96
    :cond_4
    return-void

    .line 71
    .restart local v0    # "decodeArg":Lui/decode/DecodeArg;
    :cond_5
    const v2, 0x7f0b00ba

    goto :goto_0

    .line 76
    .end local v0    # "decodeArg":Lui/decode/DecodeArg;
    :cond_6
    const-string v2, "selected"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lui/PacketActivity;->selected:I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x7f0b00b7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Lui/PacketActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v0

    .line 101
    .local v0, "decodeArg":Lui/decode/DecodeArg;
    invoke-virtual {v0}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getProtocol()I

    move-result v4

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getPort()I

    move-result v5

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getPkgs()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcapt/DecoderKt;->detectDecoder(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 102
    if-eqz p1, :cond_0

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const v3, 0x7f0b00be

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getProtocol()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f0b00bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 104
    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v1, v2

    .line 105
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 181
    iget-object v2, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 182
    :cond_0
    check-cast v1, Lcom/google/android/gms/ads/InterstitialAd;

    iput-object v1, p0, Lui/PacketActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x1

    const-string v3, "item"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 169
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .end local p0    # "this":Lui/PacketActivity;
    :goto_0
    return v3

    .line 121
    .restart local p0    # "this":Lui/PacketActivity;
    :sswitch_0
    invoke-virtual {p0}, Lui/PacketActivity;->finish()V

    move v3, v10

    .line 124
    goto :goto_0

    .line 127
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iget v4, p0, Lui/PacketActivity;->selected:I

    if-ne v3, v4, :cond_0

    move v3, v10

    .line 128
    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Lui/PacketActivity;->selected:I

    .line 131
    iget v3, p0, Lui/PacketActivity;->selected:I

    invoke-virtual {p0, v3}, Lui/PacketActivity;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v8

    .line 132
    .local v8, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lui/PacketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0b007b

    invoke-virtual {v3, v4, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 133
    invoke-virtual {p0}, Lui/PacketActivity;->supportInvalidateOptionsMenu()V

    move v3, v10

    .line 134
    goto :goto_0

    .line 137
    .end local v8    # "f":Landroid/support/v4/app/Fragment;
    :sswitch_2
    sget-object v4, Lui/folder/FolderChooserActivity;->Companion:Lui/folder/FolderChooserActivity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3}, Lui/folder/FolderChooserActivity$Companion;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 138
    .local v9, "intent":Landroid/content/Intent;
    iget v3, p0, Lui/PacketActivity;->REQ_SAVE_UPSTREAM:I

    invoke-virtual {p0, v9, v3}, Lui/PacketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v10

    .line 139
    goto :goto_0

    .line 142
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_3
    sget-object v4, Lui/folder/FolderChooserActivity;->Companion:Lui/folder/FolderChooserActivity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3}, Lui/folder/FolderChooserActivity$Companion;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 143
    .restart local v9    # "intent":Landroid/content/Intent;
    iget v3, p0, Lui/PacketActivity;->REQ_SAVE_DOWNSTREAM:I

    invoke-virtual {p0, v9, v3}, Lui/PacketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v10

    .line 144
    goto :goto_0

    .line 147
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_4
    sget-object v4, Lui/folder/FolderChooserActivity;->Companion:Lui/folder/FolderChooserActivity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3}, Lui/folder/FolderChooserActivity$Companion;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 148
    .restart local v9    # "intent":Landroid/content/Intent;
    iget v3, p0, Lui/PacketActivity;->REQ_SAVE_BOTH:I

    invoke-virtual {p0, v9, v3}, Lui/PacketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v10

    .line 149
    goto :goto_0

    .line 152
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_5
    sget-object v4, Lui/folder/FolderChooserActivity;->Companion:Lui/folder/FolderChooserActivity$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v4, v3}, Lui/folder/FolderChooserActivity$Companion;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 153
    .restart local v9    # "intent":Landroid/content/Intent;
    iget v3, p0, Lui/PacketActivity;->REQ_SAVE_PCAP:I

    invoke-virtual {p0, v9, v3}, Lui/PacketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v10

    .line 154
    goto :goto_0

    .line 157
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v3

    invoke-virtual {v3}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "from":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "capt.pc"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v2, "to":Ljava/io/File;
    nop

    .line 160
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    :try_start_0
    invoke-static/range {v1 .. v6}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 161
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v3, v0

    const-string v4, "saved to capt.pc"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "this":Lui/PacketActivity;
    :goto_1
    move v3, v10

    .line 164
    goto/16 :goto_0

    .line 162
    .restart local p0    # "this":Lui/PacketActivity;
    :catch_0
    move-exception v7

    .line 163
    .local v7, "e":Ljava/lang/Exception;
    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lui/PacketActivity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b00b8 -> :sswitch_1
        0x7f0b00b9 -> :sswitch_1
        0x7f0b00ba -> :sswitch_1
        0x7f0b00bb -> :sswitch_2
        0x7f0b00bc -> :sswitch_3
        0x7f0b00bd -> :sswitch_4
        0x7f0b00be -> :sswitch_5
        0x7f0b00bf -> :sswitch_6
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 114
    if-eqz p1, :cond_0

    iget v0, p0, Lui/PacketActivity;->selected:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 115
    :cond_0
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 176
    if-eqz p1, :cond_0

    const-string v0, "selected"

    iget v1, p0, Lui/PacketActivity;->selected:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    :cond_0
    return-void
.end method

.method public final saveStreams(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "outFileName"    # Ljava/lang/String;
    .param p2, "saveFunc"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v1, "outFileName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "saveFunc"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v0, Lui/PacketActivity$saveStreams$task$1;

    invoke-direct {v0, p0, p2, p1}, Lui/PacketActivity$saveStreams$task$1;-><init>(Lui/PacketActivity;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    .line 263
    .local v0, "task":Lui/PacketActivity$saveStreams$task$1;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lui/PacketActivity$saveStreams$task$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 264
    return-void
.end method
