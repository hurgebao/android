.class public Lorg/spongycastle/cms/PasswordRecipientId;
.super Lorg/spongycastle/cms/RecipientId;
.source "PasswordRecipientId.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/RecipientId;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/spongycastle/cms/PasswordRecipientId;

    invoke-direct {v0}, Lorg/spongycastle/cms/PasswordRecipientId;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 22
    instance-of v0, p1, Lorg/spongycastle/cms/PasswordRecipientId;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x3

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 37
    instance-of v0, p1, Lorg/spongycastle/cms/PasswordRecipientInformation;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
