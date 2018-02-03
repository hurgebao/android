.class public final Lui/storeimport/StoreChooserActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StoreChooserActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/storeimport/StoreChooserActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/storeimport/StoreChooserActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/storeimport/StoreChooserActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/storeimport/StoreChooserActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/storeimport/StoreChooserActivity;->Companion:Lui/storeimport/StoreChooserActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lui/storeimport/StoreChooserActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lui/storeimport/StoreChooserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Choose PKCS#12 file"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    :cond_0
    return-void
.end method
