.class public Lorg/spongycastle/crypto/tls/NamedCurve;
.super Ljava/lang/Object;
.source "NamedCurve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(I)Z
    .locals 2
    .param p0, "namedCurve"    # I

    .prologue
    const/4 v0, 0x1

    .line 56
    if-lt p0, v0, :cond_0

    const/16 v1, 0x1c

    if-le p0, v1, :cond_1

    :cond_0
    const v1, 0xff01

    if-lt p0, v1, :cond_2

    const v1, 0xff02

    if-gt p0, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refersToASpecificNamedCurve(I)Z
    .locals 1
    .param p0, "namedCurve"    # I

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 68
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 66
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0xff01
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
