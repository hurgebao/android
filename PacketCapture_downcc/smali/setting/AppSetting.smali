.class public final Lsetting/AppSetting;
.super Ljava/lang/Object;
.source "Setting.kt"


# static fields
.field public static final INSTANCE:Lsetting/AppSetting; = null

.field private static final PREF_KEY_CUSTOM_SSL_PORT:Ljava/lang/String; = "pref_key_custom_ssl_port"

.field private static final PREF_KEY_SHOW_PACKETS_FROM_THIS_APP:Ljava/lang/String; = "pref_key_show_packets_from_this_app"

.field public static pref:Landroid/content/SharedPreferences;

.field public static sslPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lsetting/AppSetting;

    invoke-direct {v0}, Lsetting/AppSetting;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lsetting/AppSetting;

    .end local p0    # "this":Lsetting/AppSetting;
    sput-object p0, Lsetting/AppSetting;->INSTANCE:Lsetting/AppSetting;

    .line 15
    const-string v0, "pref_key_show_packets_from_this_app"

    sput-object v0, Lsetting/AppSetting;->PREF_KEY_SHOW_PACKETS_FROM_THIS_APP:Ljava/lang/String;

    .line 16
    const-string v0, "pref_key_custom_ssl_port"

    sput-object v0, Lsetting/AppSetting;->PREF_KEY_CUSTOM_SSL_PORT:Ljava/lang/String;

    return-void
.end method

.method private final load()V
    .locals 4

    .prologue
    .line 28
    sget-object v1, Lsetting/AppSetting;->pref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const-string v2, "pref"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lsetting/AppSetting;->PREF_KEY_CUSTOM_SSL_PORT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "ports":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsetting/AppSetting;->parseSSLPortList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    sput-object v1, Lsetting/AppSetting;->sslPorts:Ljava/util/List;

    .line 30
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PreferenceManager.getDefaultSharedPreferences(ctx)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lsetting/AppSetting;->pref:Landroid/content/SharedPreferences;

    .line 22
    const/high16 v0, 0x7f050000

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 24
    invoke-direct {p0}, Lsetting/AppSetting;->load()V

    .line 25
    return-void
.end method

.method public final isSSLPortListValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lsetting/AppSetting;->parseSSLPortList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyPrefChanged()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lsetting/AppSetting;->load()V

    .line 37
    return-void
.end method

.method public final parseSSLPortList(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v7, 0x0

    .line 80
    :goto_0
    return-object v7

    .line 47
    :cond_0
    nop

    .line 48
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 50
    .local v12, "ports":Ljava/util/List;
    check-cast v12, Ljava/lang/Iterable;

    .line 51
    .end local v12    # "ports":Ljava/util/List;
    nop

    .line 66
    new-instance v7, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 67
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 68
    .local v11, "item$iv$iv":Ljava/lang/Object;
    check-cast v11, Ljava/lang/String;

    .line 51
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    if-nez v11, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    :catch_0
    move-exception v8

    .line 61
    .local v8, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0

    .line 51
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    :cond_1
    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_2
    check-cast v7, Ljava/util/List;

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    .line 52
    nop

    .line 70
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 71
    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 52
    .local v10, "it":Ljava/lang/String;
    check-cast v10, Ljava/lang/CharSequence;

    .end local v10    # "it":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 72
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    check-cast v7, Ljava/util/List;

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    .line 53
    nop

    .line 73
    new-instance v7, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 74
    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 75
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    check-cast v11, Ljava/lang/String;

    .line 53
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    const/16 v2, 0xa

    invoke-static {v11, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 76
    :cond_6
    check-cast v7, Ljava/util/List;

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    move-object v0, v7

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    .line 54
    nop

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 78
    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 79
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    check-cast v11, Ljava/lang/Number;

    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 55
    if-lez v2, :cond_7

    const v3, 0xffff

    if-le v2, v3, :cond_8

    .line 56
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 58
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 80
    :cond_9
    check-cast v7, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
