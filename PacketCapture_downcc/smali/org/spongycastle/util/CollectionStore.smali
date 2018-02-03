.class public Lorg/spongycastle/util/CollectionStore;
.super Ljava/lang/Object;
.source "CollectionStore.java"

# interfaces
.implements Lorg/spongycastle/util/Store;


# instance fields
.field private _local:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    .line 25
    return-void
.end method


# virtual methods
.method public getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Lorg/spongycastle/util/Selector;

    .prologue
    .line 35
    if-nez p1, :cond_1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/spongycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    :cond_0
    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "col":Ljava/util/List;
    iget-object v3, p0, Lorg/spongycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    .local v1, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {p1, v2}, Lorg/spongycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
