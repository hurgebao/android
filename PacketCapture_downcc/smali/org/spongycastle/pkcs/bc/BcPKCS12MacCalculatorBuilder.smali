.class public Lorg/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;
.super Ljava/lang/Object;
.source "BcPKCS12MacCalculatorBuilder.java"

# interfaces
.implements Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;


# instance fields
.field private algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private digest:Lorg/spongycastle/crypto/ExtendedDigest;

.field private iterationCount:I

.field private saltLength:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;-><init>(Lorg/spongycastle/crypto/ExtendedDigest;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/ExtendedDigest;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/ExtendedDigest;
    .param p2, "algorithmIdentifier"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;->iterationCount:I

    .line 31
    iput-object p1, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;->digest:Lorg/spongycastle/crypto/ExtendedDigest;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    invoke-interface {p1}, Lorg/spongycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12MacCalculatorBuilder;->saltLength:I

    .line 34
    return-void
.end method
