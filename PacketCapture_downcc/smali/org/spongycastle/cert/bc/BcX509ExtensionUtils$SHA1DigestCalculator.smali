.class Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;
.super Ljava/lang/Object;
.source "BcX509ExtensionUtils.java"

# interfaces
.implements Lorg/spongycastle/operator/DigestCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/bc/BcX509ExtensionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHA1DigestCalculator"
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;->bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0
.end method

.method public getDigest()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v3, p0, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 78
    .local v0, "bytes":[B
    iget-object v3, p0, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 80
    new-instance v2, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 82
    .local v2, "sha1":Lorg/spongycastle/crypto/Digest;
    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 84
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 86
    .local v1, "digest":[B
    invoke-interface {v2, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 88
    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;->bOut:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
