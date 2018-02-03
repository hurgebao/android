.class public Lorg/spongycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "BcPKCS12PBEInputDecryptorProviderBuilder.java"


# instance fields
.field private digest:Lorg/spongycastle/crypto/ExtendedDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;-><init>(Lorg/spongycastle/crypto/ExtendedDigest;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/ExtendedDigest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/ExtendedDigest;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;->digest:Lorg/spongycastle/crypto/ExtendedDigest;

    .line 29
    return-void
.end method
