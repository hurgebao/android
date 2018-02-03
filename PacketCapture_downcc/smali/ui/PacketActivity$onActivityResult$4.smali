.class final Lui/PacketActivity$onActivityResult$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PacketActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/PacketActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lui/PacketActivity;


# direct methods
.method constructor <init>(Lui/PacketActivity;)V
    .locals 1

    iput-object p1, p0, Lui/PacketActivity$onActivityResult$4;->this$0:Lui/PacketActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lui/PacketActivity$onActivityResult$4;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "inFileName"    # Ljava/lang/String;
    .param p2, "outFileName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const-string v0, "inFileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outFileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lui/PacketActivity$onActivityResult$4;->this$0:Lui/PacketActivity;

    invoke-virtual {v0}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v0

    invoke-virtual {v0}, Lui/decode/DecodeArg;->getIp()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-array v1, v12, [Ljava/lang/String;

    const-string v3, "."

    aput-object v3, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 270
    .local v6, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 271
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 272
    .local v9, "item$iv$iv":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .line 220
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_0
    check-cast v7, Ljava/util/List;

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v7, Ljava/util/Collection;

    .line 220
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 221
    .local v8, "ipArray":[I
    aget v0, v8, v2

    shl-int/lit8 v0, v0, 0x18

    aget v1, v8, v12

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, v8, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, v8, v1

    or-int/2addr v0, v1

    int-to-long v10, v0

    .line 222
    .local v10, "serverIp32":J
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/io/OutputStream;

    iget-object v2, p0, Lui/PacketActivity$onActivityResult$4;->this$0:Lui/PacketActivity;

    invoke-virtual {v2}, Lui/PacketActivity;->getArgDecodeArg()Lui/decode/DecodeArg;

    move-result-object v2

    invoke-virtual {v2}, Lui/decode/DecodeArg;->getPort()I

    move-result v2

    invoke-static {v1, v0, v10, v11, v2}, Lcmd/Pc2pcapKt;->convertCaptToPcap(Ljava/io/File;Ljava/io/OutputStream;JI)V

    .line 223
    return-void
.end method
