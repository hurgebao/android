.class public final Lui/PortPreference;
.super Landroid/preference/EditTextPreference;
.source "SettingsActivity.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_0

    move-object v10, p1

    .local v10, "it":Ljava/lang/String;
    sget-object v0, Lsetting/AppSetting;->INSTANCE:Lsetting/AppSetting;

    invoke-virtual {v0, p1}, Lsetting/AppSetting;->parseSSLPortList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 254
    .end local v10    # "it":Ljava/lang/String;
    .local v12, "ports":Ljava/util/List;
    :goto_0
    if-eqz v12, :cond_2

    check-cast v12, Ljava/lang/Iterable;

    .line 277
    .end local v12    # "ports":Ljava/util/List;
    new-instance v9, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 278
    .local v9, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 279
    .local v11, "item$iv$iv":Ljava/lang/Object;
    check-cast v11, Ljava/lang/Number;

    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 254
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    :cond_0
    move-object v12, v2

    .line 251
    goto :goto_0

    .line 280
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    :cond_1
    check-cast v9, Ljava/util/List;

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    move-object v0, v9

    .line 254
    check-cast v0, Ljava/lang/Iterable;

    const-string v1, ","

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/16 v7, 0x3e

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v13, p0

    .end local p0    # "this":Lui/PortPreference;
    .local v13, "this":Lui/PortPreference;
    :goto_2
    invoke-super {v13, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lui/PortPreference;->updateSummary()V

    .line 258
    sget-object v0, Lsetting/AppSetting;->INSTANCE:Lsetting/AppSetting;

    invoke-virtual {v0}, Lsetting/AppSetting;->notifyPrefChanged()V

    .line 259
    return-void

    .end local v13    # "this":Lui/PortPreference;
    .restart local v12    # "ports":Ljava/util/List;
    .restart local p0    # "this":Lui/PortPreference;
    :cond_2
    move-object v13, p0

    .line 254
    .end local p0    # "this":Lui/PortPreference;
    .restart local v13    # "this":Lui/PortPreference;
    goto :goto_2
.end method

.method public final updateSummary()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lui/PortPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    move-object v1, v0

    .line 263
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "None"

    check-cast v1, Ljava/lang/CharSequence;

    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lui/PortPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    return-void

    .line 263
    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    goto :goto_0
.end method
