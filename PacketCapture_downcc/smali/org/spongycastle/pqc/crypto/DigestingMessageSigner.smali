.class public Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;
.super Ljava/lang/Object;
.source "DigestingMessageSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private forSigning:Z

.field private final messDigest:Lorg/spongycastle/crypto/Digest;

.field private final messSigner:Lorg/spongycastle/pqc/crypto/MessageSigner;


# virtual methods
.method public generateSignature()[B
    .locals 3

    .prologue
    .line 66
    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RainbowDigestSigner not initialised for signature generation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 72
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/spongycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0}, Lorg/spongycastle/pqc/crypto/MessageSigner;->generateSignature([B)[B

    move-result-object v1

    return-object v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    .line 33
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 35
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 42
    .local v0, "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Signing Requires Private Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    .line 39
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 47
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Verification Requires Public Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->reset()V

    .line 54
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/spongycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/pqc/crypto/MessageSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 55
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 111
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 101
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    return-void
.end method

.method public verify([B)Z
    .locals 3
    .param p1, "signature"    # [B

    .prologue
    .line 86
    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RainbowDigestSigner not initialised for verification"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 92
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 94
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/spongycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0, p1}, Lorg/spongycastle/pqc/crypto/MessageSigner;->verifySignature([B[B)Z

    move-result v1

    return v1
.end method

.method public verifySignature([B)Z
    .locals 1
    .param p1, "signature"    # [B

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;->verify([B)Z

    move-result v0

    return v0
.end method
