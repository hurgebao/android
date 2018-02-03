.class public final Lui/SettingsActivity$CertMenuDialog$Companion;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/SettingsActivity$CertMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 220
    invoke-direct {p0}, Lui/SettingsActivity$CertMenuDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/app/Fragment;)Lui/SettingsActivity$CertMenuDialog;
    .locals 2
    .param p1, "target"    # Landroid/app/Fragment;

    .prologue
    const-string v1, "\u76ee\u6807"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lui/SettingsActivity$CertMenuDialog;

    invoke-direct {v0}, Lui/SettingsActivity$CertMenuDialog;-><init>()V

    .line 223
    .local v0, "f":Lui/SettingsActivity$CertMenuDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lui/SettingsActivity$CertMenuDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 224
    return-object v0
.end method
