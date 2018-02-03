.class public final Lui/SettingsActivity$Companion;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 32
    invoke-direct {p0}, Lui/SettingsActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPREF_KEY_CUSTOM_SSL_PORT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lui/SettingsActivity;->access$getPREF_KEY_CUSTOM_SSL_PORT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPREF_KEY_SHOW_PACKETS_FROM_THIS_APP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lui/SettingsActivity;->access$getPREF_KEY_SHOW_PACKETS_FROM_THIS_APP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getREQ_INSTALL_CERT()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lui/SettingsActivity;->access$getREQ_INSTALL_CERT$cp()I

    move-result v0

    return v0
.end method
