.class public Lorg/spongycastle/crypto/params/ECNamedDomainParameters;
.super Lorg/spongycastle/crypto/params/ECDomainParameters;
.source "ECNamedDomainParameters.java"


# instance fields
.field private name:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "name"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;->name:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    return-void
.end method
