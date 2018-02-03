.class final Lui/SettingsActivity$SettingsFragment$updateView$1;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SettingsActivity$SettingsFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lui/SettingsActivity$SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lui/SettingsActivity$SettingsFragment$updateView$1;->this$0:Lui/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "it"    # Landroid/preference/Preference;

    .prologue
    .line 96
    iget-object v0, p0, Lui/SettingsActivity$SettingsFragment$updateView$1;->this$0:Lui/SettingsActivity$SettingsFragment;

    invoke-virtual {v0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lui/SettingsActivity$SettingsFragment$updateView$1;->this$0:Lui/SettingsActivity$SettingsFragment;

    invoke-virtual {v0}, Lui/SettingsActivity$SettingsFragment;->showCertMenu()V

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
