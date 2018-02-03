.class public Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;
.super Ljava/lang/Object;
.source "BcPKCS12PBEOutputEncryptorBuilder.java"


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private engine:Lorg/spongycastle/crypto/BufferedBlockCipher;


# direct methods
.method static synthetic access$000(Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;)Lorg/spongycastle/crypto/BufferedBlockCipher;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12PBEOutputEncryptorBuilder;->engine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method
