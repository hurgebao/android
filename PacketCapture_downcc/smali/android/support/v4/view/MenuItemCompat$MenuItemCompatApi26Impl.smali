.class Landroid/support/v4/view/MenuItemCompat$MenuItemCompatApi26Impl;
.super Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuItemCompatApi26Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "alphaChar"    # C
    .param p3, "alphaModifiers"    # I

    .prologue
    .line 232
    invoke-interface {p1, p2, p3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 233
    return-void
.end method

.method public setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 207
    return-void
.end method

.method public setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 252
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 253
    return-void
.end method

.method public setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 262
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 263
    return-void
.end method

.method public setNumericShortcut(Landroid/view/MenuItem;CI)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "numericChar"    # C
    .param p3, "numericModifiers"    # I

    .prologue
    .line 242
    invoke-interface {p1, p2, p3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 243
    return-void
.end method

.method public setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 217
    return-void
.end method
