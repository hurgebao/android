.class public Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
.super Ljava/lang/Object;
.source "SkeinParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/params/SkeinParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "paramsMap"    # Ljava/util/Hashtable;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 161
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 162
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/crypto/params/SkeinParameters;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Lorg/spongycastle/crypto/params/SkeinParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;Lorg/spongycastle/crypto/params/SkeinParameters$1;)V

    return-object v0
.end method

.method public set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .prologue
    const/4 v1, 0x4

    .line 194
    if-nez p2, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    if-eqz p1, :cond_2

    if-le p1, v1, :cond_1

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_2

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_2
    if-ne p1, v1, :cond_3

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter type 4 is reserved for internal use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-object p0
.end method

.method public setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method
