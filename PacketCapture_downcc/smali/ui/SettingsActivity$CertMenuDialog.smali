.class public final Lui/SettingsActivity$CertMenuDialog;
.super Landroid/app/DialogFragment;
.source "SettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertMenuDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/SettingsActivity$CertMenuDialog$Listener;,
        Lui/SettingsActivity$CertMenuDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/SettingsActivity$CertMenuDialog$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/SettingsActivity$CertMenuDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/SettingsActivity$CertMenuDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/SettingsActivity$CertMenuDialog;->Companion:Lui/SettingsActivity$CertMenuDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lui/SettingsActivity$CertMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const-string v3, "\u751f\u6210"

    check-cast v3, Ljava/lang/CharSequence;

    aput-object v3, v1, v4

    const/4 v4, 0x1

    const-string v3, "Import PKCS#12 file"

    check-cast v3, Ljava/lang/CharSequence;

    aput-object v3, v1, v4

    .local v1, "elements$iv":[Ljava/lang/Object;
    move-object v2, v1

    .line 231
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v3, Lui/SettingsActivity$CertMenuDialog$onCreateDialog$1;

    invoke-direct {v3, p0}, Lui/SettingsActivity$CertMenuDialog$onCreateDialog$1;-><init>(Lui/SettingsActivity$CertMenuDialog;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const-string v4, "builder.create()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Dialog;

    return-object v3
.end method
