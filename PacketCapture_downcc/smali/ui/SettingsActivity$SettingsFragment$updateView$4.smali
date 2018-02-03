.class public final Lui/SettingsActivity$SettingsFragment$updateView$4;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SettingsActivity$SettingsFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/app/Activity;

    .prologue
    .line 134
    iput-object p1, p0, Lui/SettingsActivity$SettingsFragment$updateView$4;->$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui/SettingsActivity$SettingsFragment$updateView$4;->$ctx:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lui/OpenSourceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lui/SettingsActivity$SettingsFragment$updateView$4;->$ctx:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 138
    const/4 v1, 0x1

    return v1
.end method
