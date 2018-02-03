.class Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;
.super Ljava/lang/Object;
.source "JceCMSContentEncryptorBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMSOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Ljavax/crypto/Cipher;


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "dOut"    # Ljava/io/OutputStream;

    .prologue
    .line 152
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/spongycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
